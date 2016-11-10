require 'prawn'
require 'prawn/table'

class PickupOrderFormat < Prawn::Document
	include Prawn::View

	def initialize(lot, view)
		super()
		@lot = lot
		@view = view
		#stroke_axis
		get_font_family
		#header
		#origin_address
		#yard_address
		#headquarters_address
		#towProvider_details
		#vehicle_details
		#charges_details
		#special_instructions
		#vehicle_properties
		#desclimer
		#signature
	end

	def get_font_family
		if I18n.locale == :hi
			#font "#{Prawn::BASEDIR}/data/fonts/siddhanta.ttf"
			font Rails.root.join('app', 'assets', 'fonts', 'siddhanta.ttf')
			header_hindi
			origin_address_hindi
			yard_address_hindi
			headquarters_address_hindi
			towProvider_details_hindi
			vehicle_details_hindi
			charges_details_hindi
			special_instructions
			vehicle_properties_hindi
			disclimer
			signature
		elsif I18n.locale == :'zh-cn'
			#font "#{Prawn::BASEDIR}/data/fonts/gkai00mp.ttf"
			font Rails.root.join('app', 'assets', 'fonts', 'gkai00mp.ttf')
			# Special methods for Chinese
			header_hindi
			origin_address
			yard_address
			headquarters_address
			towProvider_details_chinese
			vehicle_details_chinese
			charges_details_chinese
			special_instructions
			vehicle_properties
			disclimer
			signature
		else
			header
			origin_address
			yard_address
			headquarters_address
			towProvider_details
			vehicle_details
			charges_details
			special_instructions
			vehicle_properties
			disclimer
			signature
		end
	end

	def header_hindi
		y_position = cursor
		puts "**************************"
		puts "***** #{I18n.locale} *****"
		puts "**************************"
 		draw_text "#{I18n.t("views.vehicle.index.lot_number")}: #{@lot.lot_num}", :at => [120, 700], :size => 8 #, :style => :bold
 		image "app/assets/images/copart_logo.png", :at =>  [310, y_position], :width => 110, :height => 45
	end

	def header
		y_position = cursor
		puts "**************************"
		puts "***** #{I18n.locale} *****"
		puts "**************************"
		draw_text "#{I18n.t("views.vehicle.index.lot_number")}: #{@lot.lot_num}", :at => [120, 700], :size => 10, :style => :bold
		image "app/assets/images/copart_logo.png", :at =>  [310, y_position], :width => 110, :height => 45
	end

	def origin_address_hindi
		bounding_box([0,685], :width => 161, :height => 105) do
			transparent(1) {stroke_bounds}
			move_down 1
			text "#{I18n.t("views.shared.origin")}", :align => :center, :size => 7
			indent(0) do
				stroke_horizontal_rule
			end
			move_down 1
			indent(5) do
				@location = @lot.pickup_location
				text "#{@location.name.truncate(25)}", :size => 6
				@address = get_address(@location.id)
				text "#{@address.line1.capitalize.truncate(35)}", :size => 6
				text "#{@address.line2.capitalize.truncate(35)}", :size => 6 unless !@address.line2.present?
				text "#{@address.city.capitalize.truncate(35)}", :size => 6
				text "#{@address.state.name.downcase.capitalize}", :size => 6 unless !@address.state.present?
				text "#{@address.country.name}", :size => 6
				text "#{I18n.t("views.vehicle.index.claim_rep")}: #{self.get_contact_name(@location.contact.first_name, @location.contact.last_name)}", :size => 6
				text "#{I18n.t("views.shared.contact.tel")}: #{@location.contact.primary_phone}  #{I18n.t("views.shared.contact.ext")}: #{@location.contact.primary_phone_ext}", :size => 6
			end
		end
	end

	def origin_address
		bounding_box([0,685], :width => 161, :height => 105) do
			transparent(1) {stroke_bounds}
			move_down 5
			text "#{I18n.t("views.shared.origin")}", :align => :center, :size => 10
			indent(0) do
				stroke_horizontal_rule
			end
			move_down 5
			indent(5) do
				@location = @lot.pickup_location
				text "#{@location.name.truncate(25)}", :size => 8
				@address = get_address(@location.id)
				text "#{@address.line1.capitalize.truncate(35)}", :size => 8
				text "#{@address.line2.capitalize.truncate(35)}", :size => 8 unless !@address.line2.present?
				text "#{@address.city.capitalize.truncate(35)}", :size => 8
				text "#{@address.state.name.downcase.capitalize}", :size => 8 unless !@address.state.present?
				text "#{@address.country.name}", :size => 8
				text "#{I18n.t("views.vehicle.index.claim_rep")}: #{self.get_contact_name(@location.contact.first_name, @location.contact.last_name)}", :size => 8
				text "#{I18n.t("views.shared.contact.tel")}: #{@location.contact.primary_phone}  #{I18n.t("views.shared.contact.ext")}: #{@location.contact.primary_phone_ext}", :size => 8
			end
		end
	end

	def get_address(addressable_id)
		Address.where(addressable_type: "Facility", addressable_id: addressable_id).first
	end

	def yard_address_hindi
		bounding_box([167,685], :width => 161, :height => 105) do
			transparent(1) {stroke_bounds}
			move_down 1
			text "#{I18n.t("views.shared.destination")}", :align => :center, :size => 7
			indent(0) do
				stroke_horizontal_rule
			end
			move_down 1
			indent(5) do
				@yard = @lot.yard
				text "#{@yard.name.truncate(25)}", :size => 6
				@facility = @yard.facility
				@address = get_address(@facility.id)
				text "#{@address.line1.capitalize.truncate(35)}", :size => 6
				text "#{@address.line2.capitalize.truncate(35)}", :size => 6 unless !@address.line2.present?
				text "#{@address.city.capitalize.truncate(35)}", :size => 6
				text "#{@address.state.name.downcase.capitalize}", :size => 6 unless !@address.state.present?
				text "#{@address.country.name}", :size => 6
				text "#{I18n.t("views.vehicle.index.claim_rep")}: #{self.get_contact_name(@facility.contact.first_name, @facility.contact.last_name)}", :size => 6
				text "#{I18n.t("views.shared.contact.tel")}: #{@facility.contact.primary_phone}  #{I18n.t("views.shared.contact.ext")}: #{@facility.contact.primary_phone_ext}", :size => 6
			end
		end
	end

	def yard_address
		bounding_box([167,685], :width => 161, :height => 105) do
			transparent(1) {stroke_bounds}
			move_down 5
			text "#{I18n.t("views.shared.destination")}", :align => :center, :size => 10
			indent(0) do
				stroke_horizontal_rule
			end
			move_down 5
			indent(5) do
				@yard = @lot.yard
				text "#{@yard.name.truncate(25)}", :size => 8
				@facility = @yard.facility
				@address = get_address(@facility.id)
				text "#{@address.line1.capitalize.truncate(35)}", :size => 8
				text "#{@address.line2.capitalize.truncate(35)}", :size => 8 unless !@address.line2.present?
				text "#{@address.city.capitalize.truncate(35)}", :size => 8
				text "#{@address.state.name.downcase.capitalize}", :size => 8 unless !@address.state.present?
				text "#{@address.country.name}", :size => 8
				text "#{I18n.t("views.vehicle.index.claim_rep")}: #{self.get_contact_name(@facility.contact.first_name, @facility.contact.last_name)}", :size => 8
				text "#{I18n.t("views.shared.contact.tel")}: #{@facility.contact.primary_phone}  #{I18n.t("views.shared.contact.ext")}: #{@facility.contact.primary_phone_ext}", :size => 8
			end
		end
	end

	def get_contact_name(first_name, last_name)
		contact_name = ""
		if first_name.present? && last_name.present?
			contact_name << "#{first_name} #{last_name}"
		elsif first_name.present? && !last_name.present?
			contact_name << "#{first_name}"
		elsif !first_name.present? && last_name.present?
			contact_name << "#{last_name}"
		end
		if contact_name.length > 25
			return contact_name.truncate(25)
		else
			return contact_name
		end
	end

	def headquarters_address_hindi
		if @lot.yard.facility.country.present?
			if @lot.yard.facility.country.code == "IN"
				bounding_box([410,710], :width => 120, :height => 80) do
					indent(5) do
						@yard = @lot.yard
						# text "#{@yard.name}", :size => 8, :align => :right
						@facility = @yard.facility
						@address = get_address(@facility.id)
						text "126, Vipul Trade Centre", :size => 6, :align => :right
						text "Sector 48, Sohna Road", :size => 6, :align => :right
						text "Gurgaon", :size => 6, :align => :right
						text "NCR, Haryana 122004", :size => 6, :align => :right
						text "India", :size => 6, :align => :right
						#text "#{I18n.t("views.shared.contact.tel")}: +91 124 4206983  #{I18n.t("views.shared.contact.ext")}: #{@facility.contact.primary_phone_ext}     ", :size => 6, :align => :right
					end
				end
			elsif @lot.yard.facility.country.code == "DE"
				bounding_box([410,710], :width => 120, :height => 80) do
					indent(5) do
						@yard = @lot.yard
						text "Copart Deutschland GmbH", :size => 6, :align => :right
						@facility = @yard.facility
						@address = get_address(@facility.id)
						text "Zülpicher Str. 150", :size => 6, :align => :right
						text "52349 Düren", :size => 6, :align => :right
						text "Deutschland", :size => 6, :align => :right
						text "Germany", :size => 6, :align => :right
						# text "#{I18n.t("views.shared.contact.tel")}: #{@facility.contact.primary_phone}  #{I18n.t("views.shared.contact.ext")}: #{@facility.contact.primary_phone_ext}     ", :size => 8, :align => :right
					end
				end
			elsif @lot.yard.facility.country.code == "ES"
				bounding_box([410,710], :width => 120, :height => 80) do
					indent(5) do
						@yard = @lot.yard
						text "Copart Autos España S.L.U.", :size => 6, :align => :right
						@facility = @yard.facility
						@address = get_address(@facility.id)
						text "Calle Malaga 4", :size => 6, :align => :right
						text "5ª planta", :size => 6, :align => :right
						text "14003, Córdoba", :size => 6, :align => :right
						text "España", :size => 6, :align => :right
						# text "#{I18n.t("views.shared.contact.tel")}: #{@facility.contact.primary_phone}  #{I18n.t("views.shared.contact.ext")}: #{@facility.contact.primary_phone_ext}     ", :size => 8, :align => :right
					end
				end
			else	
				bounding_box([410,710], :width => 120, :height => 80) do
					indent(5) do
						@yard = @lot.yard
						text "#{@yard.name}", :size => 6, :align => :right
						@facility = @yard.facility
						@address = get_address(@facility.id)
						text "#{@address.line1}", :size => 6, :align => :right
						text "#{@address.line2}", :size => 6, :align => :right unless !@address.line2.present?
						text "#{@address.city}", :size => 6, :align => :right
						text "#{@address.state.name.downcase.capitalize}", :size => 6, :align => :right unless !@address.state.present?
						text "#{@address.country.name}", :size => 6, :align => :right
						#text "#{I18n.t("views.shared.contact.tel")}: #{@facility.contact.primary_phone}  #{I18n.t("views.shared.contact.ext")}: #{@facility.contact.primary_phone_ext} ", :size => 6, :align => :right
					end
				end
			end
		end
	end

	def headquarters_address
		if @lot.yard.facility.country.present?
			if @lot.yard.facility.country.code == "IN"
				bounding_box([420,710], :width => 120, :height => 80) do
					indent(5) do
						@yard = @lot.yard
						# text "#{@yard.name}", :size => 8, :align => :right
						@facility = @yard.facility
						@address = get_address(@facility.id)
						text "126, Vipul Trade Centre", :size => 8, :align => :right
						text "Sector 48, Sohna Road", :size => 8, :align => :right
						text "Gurgaon", :size => 8, :align => :right
						text "NCR, Haryana 122004", :size => 8, :align => :right
						text "India", :size => 8, :align => :right
						#text "#{I18n.t("views.shared.contact.tel")}: +91 124 4206983  #{I18n.t("views.shared.contact.ext")}: #{@facility.contact.primary_phone_ext}     ", :size => 8, :align => :right
					end
				end
			elsif @lot.yard.facility.country.code == "DE"
				bounding_box([420,710], :width => 120, :height => 80) do
					indent(5) do
						@yard = @lot.yard
						text "Copart Deutschland GmbH", :size => 8, :align => :right
						@facility = @yard.facility
						@address = get_address(@facility.id)
						text "Zülpicher Str. 150", :size => 8, :align => :right
						text "52349 Düren", :size => 8, :align => :right
						text "Deutschland", :size => 8, :align => :right
						text "Germany", :size => 8, :align => :right
						#text "#{I18n.t("views.shared.contact.tel")}: #{@facility.contact.primary_phone}  #{I18n.t("views.shared.contact.ext")}: #{@facility.contact.primary_phone_ext}     ", :size => 8, :align => :right
					end
				end
			elsif @lot.yard.facility.country.code == "ES"
				bounding_box([410,710], :width => 120, :height => 80) do
					indent(5) do
						@yard = @lot.yard
						text "Copart Autos España S.L.U.", :size => 8, :align => :right
						@facility = @yard.facility
						@address = get_address(@facility.id)
						text "Calle Malaga 4", :size => 8, :align => :right
						text "5ª planta", :size => 8, :align => :right
						text "14003, Córdoba", :size => 8, :align => :right
						text "España", :size => 8, :align => :right
						# text "#{I18n.t("views.shared.contact.tel")}: #{@facility.contact.primary_phone}  #{I18n.t("views.shared.contact.ext")}: #{@facility.contact.primary_phone_ext}     ", :size => 8, :align => :right
					end
				end
			else	
				bounding_box([420,710], :width => 120, :height => 80) do
					indent(5) do
						@yard = @lot.yard
						text "#{@yard.name}", :size => 8, :align => :right
						@facility = @yard.facility
						@address = get_address(@facility.id)
						text "#{@address.line1}", :size => 8, :align => :right
						text "#{@address.line2}", :size => 8, :align => :right unless !@address.line2.present?
						text "#{@address.city}", :size => 8, :align => :right
						text "#{@address.state.name.downcase.capitalize}", :size => 8, :align => :right unless !@address.state.present?
						text "#{@address.country.name}", :size => 8, :align => :right
						#text "#{I18n.t("views.shared.contact.tel")}: #{@facility.contact.primary_phone}  #{I18n.t("views.shared.contact.ext")}: #{@facility.contact.primary_phone_ext}     ", :size => 8, :align => :right
					end
				end
			end
		end
	end

	def towProvider_details_hindi
		bounding_box([335, 610], :width => 100, :height => 40) do
			text "#{I18n.t("active_admin.subhauler")}", :size => 6, :align => :left
			text "#{I18n.t("views.vehicle.new.id")}", :size => 6, :align => :left
			text "#{I18n.t("views.vehicle.new.promised_pickup_date")}", :size => 6, :align => :left
		end
		bounding_box([435, 610], :width => 115, :height => 40) do
			text "#{fix_tow_provider(@lot.subhauler.provider_name)}", :size => 6, :align => :left
			text "#{@lot.subhauler.tow_provider_uid}", :size => 6, :align => :left
			text "#{@lot.promised_pickup_date}", :size => 6, :align => :left
		end
	end

	def towProvider_details_chinese
		bounding_box([335, 610], :width => 80, :height => 30) do
			text "#{I18n.t("active_admin.subhauler")}", :size => 7, :align => :left
			text "#{I18n.t("views.vehicle.new.id")}", :size => 7, :align => :left
			text "#{I18n.t("views.vehicle.new.promised_pickup_date")}", :size => 7, :align => :left
		end
		bounding_box([405, 610], :width => 135, :height => 30) do
			text "#{fix_tow_provider(@lot.subhauler.provider_name)}", :size => 7, :align => :left
			text "#{@lot.subhauler.tow_provider_uid}", :size => 7, :align => :left
			text "#{@lot.promised_pickup_date}", :size => 7, :align => :left
		end
	end

	def towProvider_details
		bounding_box([335, 610], :width => 100, :height => 30) do
			text "#{I18n.t("active_admin.subhauler")}", :size => 7, :style => :bold, :align => :left
			text "#{I18n.t("views.vehicle.new.id")}", :size => 7, :style => :bold, :align => :left
			text "#{I18n.t("views.vehicle.new.promised_pickup_date")}", :size => 7, :style => :bold, :align => :left
		end
		bounding_box([435, 610], :width => 115, :height => 30) do
			text "#{fix_tow_provider(@lot.subhauler.provider_name)}", :size => 7, :align => :left
			text "#{@lot.subhauler.tow_provider_uid}", :size => 7, :align => :left
			text "#{@lot.promised_pickup_date}", :size => 7, :align => :left
		end
	end

	def fix_tow_provider(tow_provider)
		capital_count = tow_provider.scan(/[A-Z]/).length
		spaces_count = tow_provider.scan(/\s/).length
		if capital_count <= 5 && spaces_count > 0
			if tow_provider.present? && tow_provider.length > 30
				display_tow_provider = tow_provider.truncate(30)
			else
				display_tow_provider = tow_provider
			end
		elsif spaces_count > 0
			if tow_provider.present? && tow_provider.length > 25
				display_tow_provider = tow_provider.truncate(25)
			else
				display_tow_provider = tow_provider
			end
		else
			if tow_provider.present? && tow_provider.length > 19
				display_tow_provider = tow_provider.truncate(19)
			else
				display_tow_provider = tow_provider
			end
		end
		return display_tow_provider
	end

	def vehicle_details_hindi
		move_down 5
		bounding_box([0,570], :width => 540, :height => 15) do
			transparent(1) { stroke_bounds }
 		move_down 1
 			text I18n.t("active_admin.description"), :align => :center, :size => 7
		end
		bounding_box([0,555], :width => 270, :height => 130) do
			transparent(1) { stroke_bounds }
	 		move_down 1
	 		indent(5) do
	 			text "#{I18n.t("active_admin.lot")}", :size => 7
	 			move_down 2
	 		    text "#{I18n.t("active_admin.description")}: #{self.get_description}", :size => 6
	 			text "#{I18n.t("views.pickup_order.vin")}: #{@lot.vin_serial_num}", :size => 6
	 			text "#{I18n.t("views.vehicle.index.lot_number")}: #{@lot.lot_num}", :size => 6
	 		end
		end
		bounding_box([270,555], :width => 270, :height => 130) do 
			transparent(1) { stroke_bounds }
	 		move_down 1
	 		indent(5) do
	 			text "#{I18n.t("views.vehicle.new.details")}", :size => 8
	 			move_down 2
	 			text "#{I18n.t("views.vehicle.new.consignee")}: #{self.check_seller_name(@lot.seller.name)}", :size => 6
	 			text "#{I18n.t("active_admin.vehicle.owner")}: #{self.get_owner}", :size => 6
	 			text "#{I18n.t("views.vehicle.new.towable")}: #{@lot.towable.capitalize}", :size => 6
	 			text "#{I18n.t("views.vehicle.new.length")}: #{@lot.vehicle_length.present? ? @lot.vehicle_length.to_f : ''}", :size => 6
	 			text "#{I18n.t("views.vehicle.new.keys")}: #{@lot.keys.capitalize}", :size => 6
	 			if self.is_vehicle_odometer?
	 				text "#{I18n.t("views.pickup_order.odometer")}: #{@lot.usage} km", :size => 6
	 			else
	 				text "#{I18n.t("views.pickup_order.hours")}: #{@lot.usage} hrs", :size => 6
	 			end
	           	text "#{I18n.t("views.vehicle.new.vehicle_type")}: #{@lot.vehicle_type.description}", :size => 6 
	           	text "#{I18n.t("views.pickup_order.damage")} Status: #{@lot.loss_type.description.capitalize}", :size => 6
	           	text "#{I18n.t("views.vehicle.new.license_number")}: #{@lot.license_plate_num}", :size => 6      
	 		end
		end
	end

	def vehicle_details_chinese
		move_down 5
		bounding_box([0,570], :width => 540, :height => 15) do
			transparent(1) { stroke_bounds }
 		move_down 5
 			text I18n.t("active_admin.description"), :align => :center, :size => 10
		end
		bounding_box([0,555], :width => 270, :height => 120) do
			transparent(1) { stroke_bounds }
	 		move_down 5
	 		indent(5) do
	 			text "#{I18n.t("active_admin.lot")}", :size => 9
	 			move_down 5
	 		    text "#{I18n.t("active_admin.description")}: #{self.get_description}", :size => 8
	 			text "#{I18n.t("views.pickup_order.vin")}: #{@lot.vin_serial_num}", :size => 8
	 			text "#{I18n.t("views.vehicle.index.lot_number")}: #{@lot.lot_num}", :size => 8
	 		end
		end
		bounding_box([270,555], :width => 270, :height => 120) do 
			transparent(1) { stroke_bounds }
	 		move_down 5
	 		indent(5) do
	 			text "#{I18n.t("views.vehicle.new.details")}", :size => 9
	 			move_down 5
	 			text "#{I18n.t("views.vehicle.new.consignee")}: #{self.check_seller_name(@lot.seller.name)}", :size => 8
	 			text "#{I18n.t("active_admin.vehicle.owner")}: #{self.get_owner}", :size => 8
	 			text "#{I18n.t("views.vehicle.new.towable")}: #{@lot.towable.capitalize}", :size => 8
	 			text "#{I18n.t("views.vehicle.new.length")}: #{@lot.vehicle_length.present? ? @lot.vehicle_length.to_f : ''}", :size => 8
	 			text "#{I18n.t("views.vehicle.new.keys")}: #{@lot.keys.capitalize}", :size => 8
	 			if self.is_vehicle_odometer?
	 				text "#{I18n.t("views.pickup_order.odometer")}: #{@lot.usage} km", :size => 8
	 			else
	 				text "#{I18n.t("views.pickup_order.hours")}: #{@lot.usage} hrs", :size => 8
	 			end
	           	text "#{I18n.t("views.vehicle.new.vehicle_type")}: #{@lot.vehicle_type.description}", :size => 8 
	           	text "#{I18n.t("views.pickup_order.damage")} Status: #{@lot.loss_type.description.capitalize}", :size => 8
	           	text "#{I18n.t("views.vehicle.new.license_number")}: #{@lot.license_plate_num}", :size => 8      
	 		end
		end
	end
	def vehicle_details
		move_down 5
		bounding_box([0,570], :width => 540, :height => 15) do
			transparent(1) { stroke_bounds }
 		move_down 5
 			text "<b>#{I18n.t("active_admin.description")}</b>", :align => :center, :size => 10, :inline_format => true
		end
		bounding_box([0,555], :width => 270, :height => 125) do
			transparent(1) { stroke_bounds }
	 		move_down 5
	 		indent(5) do
	 			text "<b>#{I18n.t("active_admin.lot")}</b>", :size => 9, :style => :italic, :inline_format => true
	 			move_down 5
	 		    text "<b>#{I18n.t("active_admin.description")}:</b> #{self.get_description}", :size => 8, :inline_format => true
	 			text "<b>#{I18n.t("views.pickup_order.vin")}:</b> #{@lot.vin_serial_num}", :size => 8, :inline_format => true
	 			text "<b>#{I18n.t("views.vehicle.index.lot_number")}:</b> #{@lot.lot_num}", :size => 8, :inline_format => true
	 		end
		end
		bounding_box([270,555], :width => 270, :height => 125) do 
			transparent(1) { stroke_bounds }
	 		move_down 5
	 		indent(5) do
	 			text "<b>#{I18n.t("views.vehicle.new.details")}</b>", :size => 9, :inline_format => true, :style => :italic
	 			move_down 5
	 			#text "<b>#{I18n.t("views.vehicle.new.consignee")}:</b> #{@lot.seller.name.capitalize}", :size => 8, :inline_format => true
	 			text "<b>#{I18n.t("views.vehicle.new.consignee")}:</b> #{self.check_seller_name(@lot.seller.name)}", :size => 8, :inline_format => true
	 			text "<b>#{I18n.t("active_admin.vehicle.owner")}:</b> #{self.get_owner}", :size => 8, :inline_format => true
	 			text "<b>#{I18n.t("views.vehicle.new.towable")}:</b> #{@lot.towable.capitalize}", :size => 8, :inline_format => true
	 			text "<b>#{I18n.t("views.vehicle.new.length")}:</b> #{@lot.vehicle_length.present? ? @lot.vehicle_length.to_f : ''}", :size => 8, :inline_format => true
	 			text "<b>#{I18n.t("views.vehicle.new.keys")}:</b> #{@lot.keys.capitalize}", :size => 8, :inline_format => true
	 			if self.is_vehicle_odometer?
	 				text "<b>#{I18n.t("views.pickup_order.odometer")}:</b> #{@lot.usage} km", :size => 8, :inline_format => true
	 			else
	 				text "<b>#{I18n.t("views.pickup_order.hours")}:</b> #{@lot.usage} hrs", :size => 8, :inline_format => true
	 			end
	           	text "<b>#{I18n.t("views.vehicle.new.vehicle_type")}:</b> #{@lot.vehicle_type.description}", :size => 8, :inline_format => true 
	           	text "<b>#{I18n.t("views.pickup_order.damage")} Status:</b> #{@lot.loss_type.description.capitalize}", :size => 8, :inline_format => true
	           	text "<b>#{I18n.t("views.vehicle.new.license_number")}:</b> #{@lot.license_plate_num}", :size => 8, :inline_format => true  
	 		end
		end
	end

	def check_seller_name(seller_name)
		seller_capital = seller_name.upcase
		if seller_capital != seller_name
			if seller_name.length > 30 && (seller_name.index(/\s/).nil? || seller_name.index(/\s/) > 30)
				display_seller_name = seller_name.truncate(35)
			else
				display_seller_name = seller_name
			end
		else
			if seller_name.length > 25 && (seller_name.index(/\s/).nil? || seller_name.index(/\s/) > 25)
				display_seller_name = seller_name.truncate(29)
			else
				display_seller_name = seller_name
			end
		end
	end
	
	def charges_details_hindi
		if @lot.advance_charge.present?
		@advance_charge = @lot.advance_charge
		move_down 10
		data = [[{:content => "#{I18n.t("views.vehicle.new.section_headers.charges_info")}", :colspan => 5}],
				["#{I18n.t("views.pickup_order.type")}","#{I18n.t("views.pickup_order.piece")}","#{I18n.t("views.pickup_order.per_piece")}","#{I18n.t("views.pickup_order.pre_paid")}","#{I18n.t("views.pickup_order.pay")}"],
				["#{I18n.t("views.pickup_order.tow")}","#{self.set_piece(@lot.advance_charge.towing)}",
					"#{self.set_per_piece(@lot.advance_charge.towing)}",
					"#{self.set_prepaid(@lot.advance_charge.towing.to_f)}",
					"#{self.set_pay(@lot.advance_charge.towing.to_f)}"],
				["#{I18n.t("views.vehicle.new.labor")}","#{self.set_piece(@lot.advance_charge.labor)}",
					"#{self.set_per_piece(@lot.advance_charge.labor)}",
					"#{self.set_prepaid(@lot.advance_charge.labor.to_f)}",
					"#{self.set_pay(@lot.advance_charge.labor.to_f)}"],
				["#{I18n.t("views.vehicle.new.yard_gate")}","#{self.set_piece(@lot.advance_charge.yard_gate)}",
					"#{self.set_per_piece(@lot.advance_charge.yard_gate)}",
					"#{self.set_prepaid(@lot.advance_charge.yard_gate.to_f)}",
					"#{self.set_pay(@lot.advance_charge.yard_gate.to_f)}"],
				["#{I18n.t("views.vehicle.new.tear_down_estimate")}","#{self.set_piece(@lot.advance_charge.tear_down_estimate)}",
					"#{self.set_per_piece(@lot.advance_charge.tear_down_estimate)}",
					"#{self.set_prepaid(@lot.advance_charge.tear_down_estimate.to_f)}",
					"#{self.set_pay(@lot.advance_charge.tear_down_estimate.to_f)}"],
				["#{I18n.t("views.vehicle.new.storage_amount")}","#{self.days_to_charge_daily_rate}",
					"#{self.get_storage}",
					"#{self.get_prepaid_storage}",
					"#{self.get_total_storage}"],
				["#{I18n.t("views.vehicle.new.other_advance_charges")}","#{self.set_piece(@lot.advance_charge.additional_fee)}",
					"#{self.set_per_piece(@lot.advance_charge.additional_fee)}",
					"#{self.set_prepaid(@lot.advance_charge.additional_fee.to_f)}",
					"#{self.set_pay(@lot.advance_charge.additional_fee.to_f)}"],
				#["#{I18n.t("views.vehicle.new.tax")}","#{self.set_piece(@lot.advance_charge.total_tax)}",
					#"#{self.set_per_piece(@lot.advance_charge.total_tax)}",
					#"#{self.set_prepaid(@lot.advance_charge.total_tax.to_f)}",
					#"#{self.set_pay(@lot.advance_charge.total_tax.to_f)}"],
				[{:content => "#{I18n.t("views.vehicle.new.total")} #{self.get_disclaimer}", :colspan => 3 }, "#{self.get_total_prepaid}", "#{self.get_total_paid}"]]
	    table(data, width: 540, :cell_style => { :height => 15, :padding_top => 0, :padding_bottom => 0}) do
			style(row(0).column(0), :size => 6, :align => :center )
			style(row(1),:size => 6, :border_width => 1, :borders => [:left], :align => :left, )
			style(rows(2..7), size: 6, :border_width => 1, :borders => [:left], :align => :right)
			style(row(8), :size => 6, :borders => [:bottom,:left, :top], :align => :right)
			style(rows(1..8).column(0), :align => :left)
			style(column(4), :borders => [:right, :left])
			style(row(8).column(3..4), :borders => [:top, :bottom, :left, :right])
		end
		move_down 3
		text "#{I18n.t("views.pickup_order.currency")}: #{@lot.yard.facility.country.currency_code}", :size => 6, :font_style => :bold unless !@lot.facility.present?
		end
	end
	def charges_details_chinese
		if @lot.advance_charge.present?
		@advance_charge = @lot.advance_charge
		move_down 10
		data = [[{:content => "#{I18n.t("views.vehicle.new.section_headers.charges_info")}", :colspan => 5}],
				["#{I18n.t("views.pickup_order.type")}","#{I18n.t("views.pickup_order.piece")}","#{I18n.t("views.pickup_order.per_piece")}","#{I18n.t("views.pickup_order.pre_paid")}","#{I18n.t("views.pickup_order.pay")}"],
				["#{I18n.t("views.pickup_order.tow")}","#{self.set_piece(@lot.advance_charge.towing)}",
					"#{self.set_per_piece(@lot.advance_charge.towing)}",
					"#{self.set_prepaid(@lot.advance_charge.towing.to_f)}",
					"#{self.set_pay(@lot.advance_charge.towing.to_f)}"],
				["#{I18n.t("views.vehicle.new.labor")}","#{self.set_piece(@lot.advance_charge.labor)}",
					"#{self.set_per_piece(@lot.advance_charge.labor)}",
					"#{self.set_prepaid(@lot.advance_charge.labor.to_f)}",
					"#{self.set_pay(@lot.advance_charge.labor.to_f)}"],
				["#{I18n.t("views.vehicle.new.yard_gate")}","#{self.set_piece(@lot.advance_charge.yard_gate)}",
					"#{self.set_per_piece(@lot.advance_charge.yard_gate)}",
					"#{self.set_prepaid(@lot.advance_charge.yard_gate.to_f)}",
					"#{self.set_pay(@lot.advance_charge.yard_gate.to_f)}"],
				["#{I18n.t("views.vehicle.new.tear_down_estimate")}","#{self.set_piece(@lot.advance_charge.tear_down_estimate)}",
					"#{self.set_per_piece(@lot.advance_charge.tear_down_estimate)}",
					"#{self.set_prepaid(@lot.advance_charge.tear_down_estimate.to_f)}",
					"#{self.set_pay(@lot.advance_charge.tear_down_estimate.to_f)}"],
				["#{I18n.t("views.vehicle.new.storage_amount")}","#{self.days_to_charge_daily_rate}",
					"#{self.get_storage}",
					"#{self.get_prepaid_storage}",
					"#{self.get_total_storage}"],
				["#{I18n.t("views.vehicle.new.other_advance_charges")}","#{self.set_piece(@lot.advance_charge.additional_fee)}",
					"#{self.set_per_piece(@lot.advance_charge.additional_fee)}",
					"#{self.set_prepaid(@lot.advance_charge.additional_fee.to_f)}",
					"#{self.set_pay(@lot.advance_charge.additional_fee.to_f)}"],
				#["#{I18n.t("views.vehicle.new.tax")}","#{self.set_piece(@lot.advance_charge.total_tax)}",
					#"#{self.set_per_piece(@lot.advance_charge.total_tax)}",
					#"#{self.set_prepaid(@lot.advance_charge.total_tax.to_f)}",
					#"#{self.set_pay(@lot.advance_charge.total_tax.to_f)}"],
				[{:content => "#{I18n.t("views.vehicle.new.total")} #{self.get_disclaimer}", :colspan => 3 }, "#{self.get_total_prepaid}", "#{self.get_total_paid}"]]
	    table(data, width: 540, :cell_style => { :height => 17}) do
			style(row(0).column(0), :size => 8, :align => :center )
			style(row(1),:size => 8, :border_width => 1, :borders => [:left], :align => :left, )
			style(rows(2..7), size: 8, :border_width => 1, :borders => [:left], :align => :right)
			style(row(8), :size => 8, :borders => [:bottom,:left, :top], :align => :right)
			style(rows(1..8).column(0), :align => :left)
			style(column(4), :borders => [:right, :left])
			style(row(8).column(3..4), :borders => [:top, :bottom, :left, :right])
		end
		move_down 3
		text "#{I18n.t("views.pickup_order.currency")}: #{@lot.yard.facility.country.currency_code}", :size => 8, :font_style => :bold unless !@lot.facility.present?
		end
	end

	def charges_details
		if @lot.advance_charge.present?
		@advance_charge = @lot.advance_charge
		move_down 10
		data = [[{:content => "#{I18n.t("views.vehicle.new.section_headers.charges_info")}", :colspan => 5}],
				["#{I18n.t("views.pickup_order.type")}","#{I18n.t("views.pickup_order.piece")}","#{I18n.t("views.pickup_order.per_piece")}","#{I18n.t("views.pickup_order.pre_paid")}","#{I18n.t("views.pickup_order.pay")}"],
				["#{I18n.t("views.pickup_order.tow")}","#{self.set_piece(@lot.advance_charge.towing)}",
					"#{self.set_per_piece(@lot.advance_charge.towing)}",
					"#{self.set_prepaid(@lot.advance_charge.towing.to_f)}",
					"#{self.set_pay(@lot.advance_charge.towing.to_f)}"],
				["#{I18n.t("views.vehicle.new.labor")}","#{self.set_piece(@lot.advance_charge.labor)}",
					"#{self.set_per_piece(@lot.advance_charge.labor)}",
					"#{self.set_prepaid(@lot.advance_charge.labor.to_f)}",
					"#{self.set_pay(@lot.advance_charge.labor.to_f)}"],
				["#{I18n.t("views.vehicle.new.yard_gate")}","#{self.set_piece(@lot.advance_charge.yard_gate)}",
					"#{self.set_per_piece(@lot.advance_charge.yard_gate)}",
					"#{self.set_prepaid(@lot.advance_charge.yard_gate.to_f)}",
					"#{self.set_pay(@lot.advance_charge.yard_gate.to_f)}"],
				["#{I18n.t("views.vehicle.new.tear_down_estimate")}","#{self.set_piece(@lot.advance_charge.tear_down_estimate)}",
					"#{self.set_per_piece(@lot.advance_charge.tear_down_estimate)}",
					"#{self.set_prepaid(@lot.advance_charge.tear_down_estimate.to_f)}",
					"#{self.set_pay(@lot.advance_charge.tear_down_estimate.to_f)}"],
				["#{I18n.t("views.vehicle.new.storage_amount")}","#{self.days_to_charge_daily_rate}",
					"#{self.get_storage}",
					"#{self.get_prepaid_storage}",
					"#{self.get_total_storage}"],
				["#{I18n.t("views.vehicle.new.other_advance_charges")}","#{self.set_piece(@lot.advance_charge.additional_fee)}",
					"#{self.set_per_piece(@lot.advance_charge.additional_fee)}",
					"#{self.set_prepaid(@lot.advance_charge.additional_fee.to_f)}",
					"#{self.set_pay(@lot.advance_charge.additional_fee.to_f)}"],
				#["#{I18n.t("views.vehicle.new.tax")}","#{self.set_piece(@lot.advance_charge.total_tax)}",
					#"#{self.set_per_piece(@lot.advance_charge.total_tax)}",
					#"#{self.set_prepaid(@lot.advance_charge.total_tax.to_f)}",
					#"#{self.set_pay(@lot.advance_charge.total_tax.to_f)}"
					#],
				[{:content => "<b>#{I18n.t("views.vehicle.new.total")}</b> #{self.get_disclaimer}", :colspan => 3}, "#{self.get_total_prepaid}", "#{self.get_total_paid}"]]
	    table(data, width: 540, :cell_style => { height: 17, :padding_top => 0, :padding_bottom => 0, :inline_format => true }) do
			style(row(0).column(0), :size => 10, :align => :center )
			style(row(1),:size => 8, :border_width => 1, :font_style => :italic, :borders => [:left], :align => :left, )
			style(rows(2..7), size: 8, :border_width => 1, :borders => [:left], :align => :right)
			style(row(8), :size => 8, :borders => [:bottom,:left, :top], :align => :right)
			style(rows(1..8).column(0), :align => :left)
			style(column(4), :borders => [:right, :left])
			style(row(8).column(3..4), :borders => [:top, :bottom, :left, :right], :font_style => :bold )
		end
		move_down 3
		text "#{I18n.t("views.pickup_order.currency")}: #{@lot.yard.facility.country.currency_code}", :size => 7, :font_style => :bold unless !@lot.facility.present?
		end
	end

	def total_storage_charges
		storage_amount = @lot.advance_charge.storage_amount.present? ? @lot.advance_charge.storage_amount : 0
	    total_storage_charge = days_to_charge_daily_rate * storage_amount
	end

	def calculate_total_charges
		advance_charge = @lot.advance_charge
	    local_towing = advance_charge.towing.present? ? advance_charge.towing : 0
	    local_labor = advance_charge.labor.present? ? advance_charge.labor : 0
	    local_yard_gate = advance_charge.yard_gate.present? ? advance_charge.yard_gate : 0
	    local_tear_down_estimate = advance_charge.tear_down_estimate.present? ? advance_charge.tear_down_estimate : 0
	    local_storage_amount = advance_charge.storage_amount.present? ? advance_charge.storage_amount : 0
	    local_additional_fee = advance_charge.additional_fee.present? ? advance_charge.additional_fee : 0
	    #local_total_tax = advance_charge.total_tax.present? ? advance_charge.total_tax : 0
	    local_total_tax = 0  # This is due to a change request
	     if advance_charge.storage_daily?
 	       (local_towing + local_labor + local_yard_gate + local_tear_down_estimate +
	       (local_storage_amount * days_to_charge_daily_rate) + local_additional_fee + local_total_tax)
	    else
	      (local_towing + local_labor + local_yard_gate + local_tear_down_estimate +
	       local_storage_amount + local_additional_fee + local_total_tax)
	    end
	end

	def days_to_charge_daily_rate
		if @lot.advance_charge.storage_amount.present? && @lot.advance_charge.storage_amount > 0
			if @lot.advance_charge.storage_daily?
		      days_to_charge =
		        (@lot.advance_charge.storage_from_date.present? && @lot.advance_charge.storage_thru_date.present?) ?
		          ((@lot.advance_charge.storage_thru_date - @lot.advance_charge.storage_from_date).to_i + 1) : 0
		      days_to_charge = 1 if days_to_charge == 0  
		  	else
		  		days_to_charge = 1
		  	end
		else
		 	days_to_charge = 0
		end
	  	return days_to_charge
	end

	def calculate_prepaid_charges
		local_towing = @lot.advance_charge_paid? && @lot.advance_charge.towing.present? ? @lot.advance_charge.towing : 0
	    local_labor = @lot.advance_charge_paid? && @lot.advance_charge.labor.present? ? @lot.advance_charge.labor : 0
	    local_yard_gate = @lot.advance_charge_paid? && @lot.advance_charge.yard_gate.present? ? @lot.advance_charge.yard_gate : 0
	    local_tear_down_estimate = @lot.advance_charge_paid? && @lot.advance_charge.tear_down_estimate.present? ? @lot.advance_charge.tear_down_estimate : 0
	    local_storage_amount = @lot.advance_charge_paid? && @lot.advance_charge.storage_amount.present? ? @lot.advance_charge.storage_amount : 0
	    local_additional_fee = @lot.advance_charge_paid? && @lot.advance_charge.additional_fee.present? ? @lot.advance_charge.additional_fee : 0
	    #local_total_tax = @lot.advance_charge_paid? && @lot.advance_charge.total_tax.present? ? @lot.advance_charge.total_tax : 0
	    local_total_tax = 0 # This is due to a change request
	     if @lot.advance_charge.storage_daily?
 	       (local_towing + local_labor + local_yard_gate + local_tear_down_estimate +
	       (local_storage_amount * days_to_charge_daily_rate) + local_additional_fee + local_total_tax)
	    else
	      (local_towing + local_labor + local_yard_gate + local_tear_down_estimate +
	       local_storage_amount + local_additional_fee + local_total_tax)
	    end
	end

	def special_instructions
		move_down 5
		y_position = cursor-3
		bounding_box([0, y_position], :width =>180, :height => 145) do
			indent(5)  do
				move_down 5
				text "#{I18n.t("views.pickup_order.special_instructions")}:", :size => 8
			end
			move_down 5
			stroke_horizontal_rule
			indent(5) do
				move_down 5
				# text "System notes from Cobalt. We can define where they come from, how they get here.", :size => 8
			end
			transparent(1){ stroke_bounds}
		end
	end

	def vehicle_properties_hindi
		move_up 150
	  	data = [["#{I18n.t("views.vehicle.index.make")}:", "#{I18n.t("views.vehicle.index.model")}:", "#{I18n.t("views.vehicle.index.color")}:"],
	  		 	["#{I18n.t("views.pickup_order.odometer")}:", {:content => "#{I18n.t("views.pickup_order.vin")}:", :colspan =>2 }],
	  		 	["#{I18n.t("views.vehicle._slider.notes")}:", {:image => "app/assets/images/vehicle.png", :image_height =>98, :image_width =>200, :colspan => 2, :borders => [:top, :bottom, :right]}]]
		table(data, width: 340, :position =>200) do
			style(row(0..1), :cell_style => { :height => 17 })
			style(column(0), :width =>130)
			style(row(2).column(0), :borders => [:left, :top, :bottom])
			style(rows(0..3), size: 7)
	 end
	end
	def vehicle_properties
		move_up 145
	  	data = [["#{I18n.t("views.vehicle.index.make")}:", "#{I18n.t("views.vehicle.index.model")}:", "#{I18n.t("views.vehicle.index.color")}:"],
	  		 	["#{I18n.t("views.pickup_order.odometer")}:", {:content => "#{I18n.t("views.pickup_order.vin")}:", :colspan =>2 }],
	  		 	["#{I18n.t("views.vehicle._slider.notes")}:", {:image => "app/assets/images/vehicle.png", :image_height =>96, :image_width =>200, :colspan => 2, :borders => [:top, :bottom, :right]}]]
		table(data, width: 340, :position =>200) do
			style(row(0), :size => 8)
			style(column(0), :width =>130)
			style(row(2).column(0), :borders => [:left, :top, :bottom])
			style(rows(0..3), size: 8)
	 end
	end

	def disclimer
		move_down 3
			if @lot.yard.facility.country.present?
			if (@lot.yard.facility.country.code == "DE" || @lot.yard.facility.country.code == "ES")
				left_disclaimer = "#{I18n.t("views.shared.disclaimer.germany.l_row1")}, "
				left_disclaimer << "\n \u2022 #{I18n.t("views.shared.disclaimer.germany.l_row2")}, "
				left_disclaimer << "\n \u2022 #{I18n.t("views.shared.disclaimer.germany.l_row3")}, "
				left_disclaimer << "\n \u2022 #{I18n.t("views.shared.disclaimer.germany.l_row4")}. "
			
				right_disclaimer = "#{I18n.t("views.shared.disclaimer.germany.l_row1")}, "
				right_disclaimer << "\n \u2022 #{I18n.t("views.shared.disclaimer.germany.r_row2")}. "
				y_position = cursor - 7
		
				text_box left_disclaimer, :at =>[0, y_position], :width => 260, :height => 55,:size => 7, :overflow => :shrink_to_fit
				text_box right_disclaimer, :at =>[280, y_position], :width => 260, :height => 30, :size => 7, :overflow => :shrink_to_fit
			
			elsif @lot.yard.facility.country.code == "IN"
				string = ""
				y_position = cursor - 7
				text_box string, :at =>[0, y_position], :width => 260, :height => 30,:size => 7, :overflow => :shrink_to_fit
				text_box string, :at =>[280, y_position], :width => 260, :height => 30, :size => 7, :overflow => :shrink_to_fit
			end

		end

	end

	def signature
		move_down 10
		# y_position = cursor - 32
		pn ="#{I18n.t("views.pickup_order.printed_name")}"
		sn = "#{I18n.t("views.pickup_order.signature")}"
		date = "#{I18n.t("views.pickup_order.date")}"
		text_box pn, :at => [0, 25], :width => 260, :height => 25,:size => 6, :overflow => :shrink_to_fit
		stroke do
			horizontal_line 45, 260, :at => 20
		end
		text_box sn, :at => [0, 5], :width => 160, :height => 25,:size => 6
		stroke do
			horizontal_line 45, 165, :at => 0
		end
		 text_box date, :at => [175, 5], :width => 100, :height => 30,:size => 6
		 stroke do
		 	horizontal_line 200, 260, :at => 0
		 end

		text_box pn, :at => [280, 25], :width => 260, :height => 25,:size => 6
		stroke do
			horizontal_line 325, 540, :at => 20
		end
		text_box sn, :at => [280, 5], :width => 170, :height => 25,:size => 6
		stroke do
			horizontal_line 325, 445, :at => 0
		end
		text_box date, :at => [455, 5], :width => 100, :height => 25,:size => 6
		stroke do
			horizontal_line 480, 540, :at => 0
		end
	end

	def is_vehicle_odometer?
		[ "A", "C", "D", "E", "K", "R", "U", "V", "W" ].include?(@lot.vehicle_type.code)
	end

	def set_piece(value)
		(!value.present? || value == 0) ? 0 : 1
	end

	def set_per_piece(value)
		number = value.present? ? value : 0
		self.get_currency(number)
	end

	def set_prepaid(value)
		number = @lot.advance_charge_paid? ? value : 0
		self.get_currency(number)
	end

	def set_pay(value)
		number = @lot.advance_charge_paid? ? 0 : value
		self.get_currency(number)
	end

	def get_storage
		number = @lot.advance_charge.storage_amount.present? ? @lot.advance_charge.storage_amount : 0
		self.get_currency(number)
	end

	def get_prepaid_storage
		number = @lot.advance_charge_paid? ? self.total_storage_charges : 0
		self.get_currency(number)
	end

	def get_total_storage
		number = @lot.advance_charge_paid? ? 0 : self.total_storage_charges
		self.get_currency(number)
	end

	def get_total_prepaid
		number = self.calculate_prepaid_charges
		self.get_currency(number)
	end

	def get_total_paid
		number = @lot.advance_charge_paid? ? 0 : self.calculate_total_charges
		self.get_currency(number)
	end

	def get_disclaimer
		if @lot.yard.facility.country.present? && @lot.yard.facility.country.code == 'DE'
			" (#{I18n.t("views.vehicle.new.disclaimer")})"
		end
	end

	def get_currency(number)
		if @lot.yard.facility.country.present?
			if @lot.yard.facility.country.currency_code == "EUR"
				@view.number_to_currency(number, unit: "", separator: ",", delimiter: ".")
			else
				@view.number_to_currency(number, unit: "")
			end
		else
			@view.number_to_currency(number, unit: "")
		end
	end

	def get_owner
		if @lot.owner.present? && !@lot.owner.company?
			contact = get_contact(@lot.owner.id)
			if contact.present?
				owner_name = "#{contact.first_name} #{contact.last_name}"
				display_owner_name = owner_name.truncate(40)
				#end
				return display_owner_name
			else
				return ""
			end
		elsif @lot.owner.present? && @lot.owner.company?
			owner_name = "#{@lot.owner.company_name}"
			display_owner_name = owner_name.truncate(40)
			return display_owner_name
		else
			return ""
		end
	end

	def get_contact(contactable_id)
		Contact.where(contactable_type: "Owner", contactable_id: contactable_id).first
	end

	def get_description
		description = ""
		if @lot.make
			description << "#{@lot.make.name.capitalize} "
		else
			description <<"#{@lot.custom_make.capitalize} "
		end
		if @lot.model
			description << "#{@lot.model.name.capitalize} "
		else
			description << "#{@lot.custom_model.capitalize} "
		end
		if @lot.trim
			description << "#{@lot.trim.name.capitalize}"
		elsif @lot.custom_trim
			description << "#{@lot.custom_trim.capitalize}"
		end
		
		return description
	
	end

end
