require "csv"
require Rails.root.join("lib/data/make_model_records_from_csv")

desc "Populates make model trim tables"
namespace :make_model_trim_seed do
	include MakeModelRecordsFromCsv
	task :make_model_seed => :environment do
		execution_time = Benchmark.measure do
			max_make_uid = 0
			max_model_uid = 0
			makes_added = []
			total_makes_added = 0
			models_added = []
			total_models_added = 0
			trims_added = []
			total_trims_added = 0
			failed_rows = []

			# Let's begin/rescue and measure what we're doing here
			begin
				puts "\nLoading makes and models. This may take a few minutes..."
				make_codes = KNOWN_MAKES
				file = Rails.root.join("db/makes_and_models_with_uid.csv")
				# This is the highest-numbered custom make code in either the database
				# or the KNOWN_MAKES hash above (only integer makes codes are
				# included, not alphanumeric ones).
				next_custom_make_code = get_last_custom_make_code + 1

				# So, based on our assumed input, we want to skip
				# the first row, which is what 'headers: true' is
				# doing for us...
				CSV.foreach(file, headers: true) do |row|
					begin
						# Expecting the country in the format COPARTCC (e.g COPARTIN)
						country = Country.find_by_code(row[5][6..8]) unless country.present?
						puts "Country required" and return if country.nil?

						# ... next we need the Make. We'll want to create 
						# it if it doesn't exist yet.
						# we get the make from the row in the csv file
						make_name = row[2].upcase.gsub('"', '')
						make_uid = row[3].gsub('"', '')
						make = Make.find_by_make_uid(make_uid)
						if make.present? && !make.countries.include?(country)
							make.countries << country
						end
						if make.nil?
							make_code = make_codes[make_name]
							if make_code.nil?
								make_code = "#{next_custom_make_code}"
								make_codes[make_name] = make_code
								next_custom_make_code += 1
							end
							vehicle_type_code = row[4].gsub('"', '')
							vehicle_type = VehicleType.find_by_code(vehicle_type_code)
							make = Make.new(code: make_code, name: make_name, make_uid: make_uid, vehicle_type_id: vehicle_type.id)
							make.countries << country
							make.save!
							max_make_uid = make.make_uid
							# we keep an array of the added makes
							makes_added << make
							puts "Make #{make.name} (#{make.code}) added."

							# Now lets create that model
							if make.present?
								model_name = row[0].gsub('"', '')
								model_uid = row[1].gsub('"', '')
								vehicle_type_code = row[4].gsub('"', '')
								vehicle_type = VehicleType.find_by_code(vehicle_type_code)
								model = Model.find_by_name(model_name)
								if model.present? && !model.countries.include?(country)
									model.countries << country
								end
								if model.nil?
									model = Model.new(name: model_name, model_uid: model_uid, vehicle_type_id: vehicle_type.id, make_id: make.id)
									model.countries << country
									model.save!
									max_model_uid = model.model_uid
									# we keep an array of the added models
									models_added << model
									puts "Model #{model.name} added."
								end
							end
						else
							model_name = row[0].gsub('"', '')
							model_uid = row[1].gsub('"', '')
							vehicle_type_code = row[4].gsub('"', '')
							vehicle_type = VehicleType.find_by_code(vehicle_type_code)
							model = Model.find_by_name(model_name)
							if model.present? && !model.countries.include?(country)
								model.countries << country
							end
							if model.nil?
								model = Model.new(name: model_name, model_uid: model_uid, vehicle_type_id: vehicle_type.id, make_id: make.id)
								model.countries << country
								model.save!
								max_model_uid = model.model_uid
								# we keep an array of the added makes
								models_added << model
								puts "Model #{model.name} added."
							end
						end
					rescue Exception => e
						puts "ERROR: a row has failed, exception is: #{e.message}"
						puts "this error has been caught, proceeding.."
						failed_rows << row
					end
				end
				# Let's print out what we did.
				puts "\nTotal Makes added: #{makes_added.count}"
				puts "Total Models added: #{models_added.count}"
				if failed_rows.empty?
					puts "No rows failed to process."
				else
					puts "Total Failed Rows: #{failed_rows.count}"
					failed_rows.each { |row| puts row }
				end
			rescue Exception => e
				# High Voltage!
				puts "ERROR: total failure, exception is: #{e.message}"
				puts "#{e.backtrace}"
			end
		end	
		# Time just flies.
		puts "EXECUTION TIME (seconds)"
		puts "user CPU   sys CPU    total CPU   Elapsed Real Time"
		puts "#{execution_time}"
	end

	task :trim_seed => :environment do
		execution_time = Benchmark.measure do
			max_trim_uid = 0
			trims_added = []
			total_trims_added = 0
			failed_rows = []

			# Let's begin/rescue and measure what we're doing here
			begin
				puts "\nLoading models and trims. This may take a few minutes..."
				file = Rails.root.join("db/models_and_trims_with_uid.csv")
				
				# So, based on our assumed input, we want to skip
				# the first row, which is what 'headers: true' is
				# doing for us...
				CSV.foreach(file, headers: true) do |row|
					begin
						# Expecting the country in the format COPARTCC (e.g COPARTIN)
						country = Country.find_by_code(row[5][6..8]) unless country.present?
						puts "Country required" and return if country.nil?

						# ... next we need the Make. We'll want to create 
						# it if it doesn't exist yet.
						# we get the make from the row in the csv file
						model_uid = row[1].gsub('"', '')
						trim_name = row[2].upcase.gsub('"', '')
						trim_uid = row[3].gsub('"', '')
						model = Model.find_by_model_uid(model_uid)
						if model.present?
							trim = Trim.new(name: trim_name, trim_uid: trim_uid, model_id: model.id)
							trim.countries << country
							trim.save!
							max_trim_uid = trim.trim_uid
							# we keep an array of the added makes
							trims_added << trim
							puts "Trim #{trim.name} added."
						end
					rescue Exception => e
						puts "ERROR: a row has failed, exception is: #{e.message}"
						puts "this error has been caught, proceeding.."
						failed_rows << row
					end
				end
				# Let's print out what we did.
				puts "\nTotal Trims added: #{trims_added.count}"
				if failed_rows.empty?
					puts "No rows failed to process."
				else
					puts "Total Failed Rows: #{failed_rows.count}"
					failed_rows.each { |row| puts row }
				end
			rescue Exception => e
				# High Voltage!
				puts "ERROR: total failure, exception is: #{e.message}"
				puts "#{e.backtrace}"
			end
		end

		# Time just flies.
		puts "EXECUTION TIME (seconds)"
		puts "user CPU   sys CPU    total CPU   Elapsed Real Time"
		puts "#{execution_time}"
	end
end
