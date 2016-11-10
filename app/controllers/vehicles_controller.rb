# == Schema Information
#
# Table name: vehicles
#
#  id                                :integer          not null, primary key
#  min_bid_reserve                   :decimal(12, 2)
#  ok_pay_charge                     :boolean
#  vat_applicable                    :boolean
#  vat_total                         :decimal(12, 2)
#  lot_num                           :integer
#  vin_serial_num                    :string(255)
#  year                              :integer
#  towable                           :string(255)
#  pre_accident_value                :decimal(12, 2)
#  insurance                         :boolean
#  claim_ref_num                     :string(255)
#  date_claim_reported               :date
#  date_of_loss                      :date
#  clear_date                        :date
#  pickup_date                       :date
#  dispatch_date                     :date
#  usage                             :integer
#  keys                              :string(255)
#  vehicle_description               :string(255)
#  buy_now                           :decimal(15, 2)
#  sale_date                         :date
#  item_num                          :integer
#  live_auction                      :boolean
#  early_bid                         :boolean
#  sale_confirmed                    :boolean          default(FALSE)
#  left_yard_date                    :date
#  state                             :string(255)
#  created_at                        :datetime
#  updated_at                        :datetime
#  color_id                          :integer
#  model_id                          :integer
#  yard_id                           :integer
#  seller_id                         :integer
#  employee_id                       :integer
#  lane_id                           :integer
#  facility_id                       :integer
#  vehicle_type_id                   :integer
#  loss_type_id                      :integer
#  subhauler_id                      :integer
#  adjuster_id                       :integer
#  run_condition_id                  :integer
#  transmission_type_id              :integer
#  owner_id                          :integer
#  insured_id                        :integer
#  pickup_location_id                :integer
#  license_plate_num                 :string(255)
#  old_auction_date                  :date
#  old_item_num                      :integer
#  high_bid_amount                   :decimal(15, 2)
#  received_employee_name            :string(255)
#  received_date                     :date
#  assignment_date                   :date
#  created_by                        :string(255)
#  promised_pickup_date              :date
#  engine                            :string(255)
#  proceeds_date                     :date
#  buy_it_now_eligible               :boolean          default(FALSE)
#  last_updated_by                   :string(255)
#  yard_row_id                       :integer
#  ownership_transfer_type_id        :integer
#  sale_hold_action_date             :date
#  hold_for_sale                     :boolean
#  hold_for_pickup                   :boolean
#  hold_for_pickup_date              :date
#  sale_hold_comment                 :string(255)
#  vehicle_registration_num          :string(255)
#  cancelled_date                    :date
#  custom_make                       :string(255)
#  custom_model                      :string(255)
#  gross_vehicle_weight              :string(255)
#  vehicle_length                    :string(255)
#  body_style                        :string(255)
#  fuel_type_id                      :integer
#  drive_train_type_id               :integer
#  original_odometer_hour            :integer
#  documented_odometer_hour          :integer
#  original_odometer_brand_id        :integer
#  documented_odometer_brand_id      :integer
#  calculated_odometer_brand_id      :integer
#  registration_certificate_num      :string(255)
#  sale_doc_received_date            :date
#  sale_doc_application_date         :date
#  verify_vehicle_identification_num :string(255)
#  hold_for_pickup_reason            :string(255)
#  hold_type_id                      :integer
#  inventory_info_readable           :boolean
#  has_engine                        :boolean
#  has_transmission                  :boolean
#  additional_info                   :string(4000)
#  primary_damage_type_id            :integer
#  secondary_damage_type_id          :integer
#  original_doc_state                :string(255)
#  sale_doc_state                    :string(255)
#  original_doc_type_id              :integer
#  sale_doc_type_id                  :integer
#  original_doc_country_id           :integer
#  sale_doc_country_id               :integer
#  sale_action_approved_by           :string(255)
#  member_id                         :integer
#  sale_confirmation_status_id       :integer
#  advance_charge_paid               :boolean
#  yard_vehicle_count                :integer
#  member_award_date                 :date
#  member_paid                       :boolean
#  seller_billing_complete           :boolean          default(FALSE)
#  abnormal_close_type_id            :integer
#  estimated_cost_of_repair          :decimal(10, 2)
#  residual_value                    :decimal(10, 2)
#  sale_doc_at_copart_date           :date
#  sale_doc_given_to_buyer_date      :date
#  pickup                            :string(255)
#  cylinders                         :integer
#  first_registration_date           :date
#  copart_company_code               :string(255)
#  original_doc_received_date        :date
#  copart_action_code                :integer          default(0)
#  relisted                          :boolean          default(FALSE), not null
#  buyer_billing_complete            :boolean          default(FALSE)
#  sale_confirmed_date               :datetime
#  purchase_vat                      :decimal(15, 2)
#  delivered_on_date                 :date
#  co2_emission                      :integer
#  horsepower                        :integer
#  year_of_manufacture               :integer
#  previous_lot_num                  :integer
#  number_of_reruns                  :integer          default(0), not null
#  sort_name_of_make                 :string(255)
#  sort_name_of_model                :string(255)
#  btba_type_id                      :integer
#  cubic_capacity                    :integer
#  euronorm                          :string(255)
#  custom_make_model_approved        :boolean          default(TRUE)
#  custom_make_enabled               :boolean          default(FALSE)
#  custom_model_enabled              :boolean          default(FALSE)
#  custom_trim_enabled               :boolean          default(FALSE)
#  custom_trim                       :string(255)
#  trim_id                           :integer
#  lot_creation_from                 :string(255)      default("cobalt")
#  total_member_charges_amount       :decimal(15, 2)
#  total_seller_charges_amount       :decimal(15, 2)
#  grand_total_seller_charges_amount :decimal(15, 2)
#  vat_section                       :string(255)
#  custom                            :boolean          default(FALSE)
#  settlement_model                  :string(255)
#  lot_awarded_from                  :string(255)
#  engine_output_unit_id             :integer
#  odometer_unit_id                  :integer
#  original_odometer_unit_id         :integer
#  documented_odometer_unit_id       :integer
#  weight_unit_id                    :integer
#  length_unit_id                    :integer
#  purchase_price                    :decimal(10, 2)
#
# Indexes
#
#  fk_rails_7bb5f6cb0c                             (hold_type_id)
#  fk_rails_8c9a7896df                             (abnormal_close_type_id)
#  fk_rails_ec8f58f167                             (pickup_location_id)
#  fk_rails_ee4a55a094                             (lane_id)
#  index_vehicles_on_adjuster_id                   (adjuster_id)
#  index_vehicles_on_btba_type_id                  (btba_type_id)
#  index_vehicles_on_calculated_odometer_brand_id  (calculated_odometer_brand_id)
#  index_vehicles_on_color_id                      (color_id)
#  index_vehicles_on_documented_odometer_brand_id  (documented_odometer_brand_id)
#  index_vehicles_on_drive_train_type_id           (drive_train_type_id)
#  index_vehicles_on_employee_id                   (employee_id)
#  index_vehicles_on_engine_output_unit_id         (engine_output_unit_id)
#  index_vehicles_on_facility_id                   (facility_id)
#  index_vehicles_on_fuel_type_id                  (fuel_type_id)
#  index_vehicles_on_insured_id                    (insured_id)
#  index_vehicles_on_loss_type_id                  (loss_type_id)
#  index_vehicles_on_lot_num                       (lot_num) UNIQUE
#  index_vehicles_on_member_id                     (member_id)
#  index_vehicles_on_model_id                      (model_id)
#  index_vehicles_on_odometer_unit_id              (odometer_unit_id)
#  index_vehicles_on_original_doc_country_id       (original_doc_country_id)
#  index_vehicles_on_original_doc_type_id          (original_doc_type_id)
#  index_vehicles_on_original_odometer_brand_id    (original_odometer_brand_id)
#  index_vehicles_on_owner_id                      (owner_id)
#  index_vehicles_on_ownership_transfer_type_id    (ownership_transfer_type_id)
#  index_vehicles_on_primary_damage_type_id        (primary_damage_type_id)
#  index_vehicles_on_run_condition_id              (run_condition_id)
#  index_vehicles_on_sale_confirmation_status_id   (sale_confirmation_status_id)
#  index_vehicles_on_sale_doc_country_id           (sale_doc_country_id)
#  index_vehicles_on_sale_doc_type_id              (sale_doc_type_id)
#  index_vehicles_on_secondary_damage_type_id      (secondary_damage_type_id)
#  index_vehicles_on_seller_id                     (seller_id)
#  index_vehicles_on_state                         (state)
#  index_vehicles_on_subhauler_id                  (subhauler_id)
#  index_vehicles_on_transmission_type_id          (transmission_type_id)
#  index_vehicles_on_trim_id                       (trim_id)
#  index_vehicles_on_vehicle_type_id               (vehicle_type_id)
#  index_vehicles_on_yard_id                       (yard_id)
#  index_vehicles_on_yard_row_id                   (yard_row_id)
#

require 'new_relic/agent/method_tracer'
include Ids
class VehiclesController < ApplicationController
  include ::NewRelic::Agent::MethodTracer
  include ActionView::Helpers::NumberHelper
  include Ids::IdsImageClient
  before_action :authenticate_employee!, if: Proc.new { |c| c.request.format.html? } # We allow api GET with a key provided
  before_action :acquire_vehicle, only: [ :edit, :update, :cancel_lot, :move_lot,
                                          :destroy, :pickup_order, :rerun_lot, :relist_lot, :unlock_lot, :update_title ]
  before_action :check_pickup_order_permissions, only: :pickup_order
  protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }
  before_action :load_field_permissions, only: [:index, :edit, :update, :new, :cancel_lot, :create, :move_lot, :search]
  before_action :load_country_and_states, only: [:edit, :new, :bid_history]
  before_action :load_default_values, only: [:new]

  NOTES_PER_PAGE = 30

  rescue_from ActiveResource::ClientError do |e|
    @error = AssignmentClientError.new(e)
    logger.info("Assignment Client Exception: #{e.message}")
    respond_to do |format|
      format.html { render 'assignments/client_error', status: :not_implemented }
      format.json { render 'assignments/client_error', status: :not_implemented, content_type: :json }
    end
  end

  rescue_from ActiveResource::ServerError do |e|
    @error = AssignmentServerError.new(e)
    logger.info("Assignment Server Exception: #{e.message}")
    respond_to do |format|
      format.html { render 'assignments/server_error', status: :bad_gateway }
      format.json { render 'assignments/server_error', status: :bad_gateway, content_type: :json }
    end
  end

  # GET /vehicles
  # GET /vehicles.json
  def index
    # check permisison
    authorize! :enabled_menu_index, Vehicle.new
    page = params[:page] || 1
    # See if the API passed a desired code
    country_id_desired =
      if params[:country_code].present?
        desired_country = Country.find_by_code(params[:country_code].upcase)
        desired_country.present? ? desired_country.id : nil
      # ...otherwise load the employee's operating country id
      else
        current_employee.operating_country_id
      end

    

    # desired auction date or empty string (which is any auction date)
    auction_date_desired = params[:auction_date] || cookies[:auction_date_filter] || ""

    # desired facility or nil (which is any facility)
    facility_desired = params[:facility_filter_id] || cookies[:facility_filter_id]

    # desired seller or nil (which is any seller)
    seller_desired = params[:seller_filter_id] || cookies[:seller_filter_id]

    # desired member or nil (which is any member)
    member_desired = params[:member_filter_id] || cookies[:member_filter_id]

    # any column not defined in our model is equivalent to "id ASC"
    sort_desired = params[:column_as_string] || cookies[:lot_sort_by_column] || ""

    # the order is ASC unless this parameter specifies "desc"
    sort_order = params[:sort_order] || cookies[:lot_sort_by_order] || ""

    # any state not defined in our AASM is equivalent to .all
    # this one is also a rails level html variable so we may 
    # more easily conditionally include partials
    @state_desired = params[:state_as_string] || ""

    # yard_num is currently (02/04/14) for Copart's API, our UI
    # only uses yard_filter_id. If both are present yard_num is 
    # used instead of yard id.
    yard_id_desired = params[:yard_filter_id] || cookies[:yard_filter_id] # normal case
    if params[:yard_num].present?
      desired_yard = Yard.find_by_yard_num(params[:yard_num])
      yard_id_desired = desired_yard.id if desired_yard.present?
    end
    # ... and let's make sure the yard_id is one the employee has access to
    #managing_yards = Yard.for_employee(current_employee)
    #yard_id_desired = nil if !managing_yards.detect { |x| x[:id] == yard_id_desired.to_i }

    # Get yards from current employee and find out if yard is accessible or not
    if current_employee.present? && current_employee.yards.present? && yard_id_desired.present?
      yard_id_desired = nil if !current_employee.yards.map(&:id).include?(yard_id_desired.to_i)
    end

    # The auction page has a special default sort order, so
    # if we're looking at the ready for auction lots main page
    # and don't have other filters requested we'll apply it
    should_apply_auction_order = (@state_desired == "ready_for_auction") &&
                                  sort_desired.empty? &&
                                  auction_date_desired.empty?
    @vehicles = Vehicle.for_employee(current_employee)
                       .state(@state_desired)
                       .ordered_by(sort_desired, sort_order, should_apply_auction_order, params[:state_as_string])
                       .order_for_auction_page(should_apply_auction_order)
                       .seller(seller_desired)
                       .member(member_desired)
                       .facility(facility_desired)
                       .auction_date(auction_date_desired)
                       .yard(yard_id_desired)
                       .country(country_id_desired)
                       .includes([:api_error, {model: :make}, {vehicle_type: :vehicle_type_group}]).group("vehicles.id")
    # Only get these when loading the html page
    if request.format.html?
      gon.showMailInvoiceButtons = @state_desired == "wtg_for_settlement_confirmation"
      csv_lot_state = ["awaiting_sale_docs", "ready_for_auction", "ready_for_seller_billing", 
                            "wtg_for_buyer_charge_confirmation", "wtg_to_clear_pickup", 
                            "wtg_for_driver_dispatch", "wtg_for_inventory", "wtg_for_sale_confirmation",
                            "wtg_for_settlement_confirmation", "wtg_for_trip_confirmation", 
                            "wtg_for_title", ""].include?(@state_desired)

    if csv_lot_state
      gon.showCsvButton = current_employee.can_enable_field?("action_export_to_csv")
      gon.showSellerCsvButton = current_employee.can_enable_field?("action_export_to_seller_csv")
      gon.showMemberCsvButton = current_employee.can_enable_field?("action_export_to_member_csv")
    end

    create_country_specific_gon_variables if request.format.html?

    gon.sortOptionAscending = Vehicle::SORT_ASCENDING
    gon.sortOptionDescending = Vehicle::SORT_DESCENDING
    employee_country = current_employee.present? ? current_employee.operating_country : nil
      if @state_desired == "wtg_for_driver_dispatch"
        # the form path for the subhaluer (tow provider) mass assign function
        gon.assignTowProviderFormPath = assign_tow_provider_vehicles_path
      elsif @state_desired == "ready_for_auction"
        gon.showAuctionDateFilter = true
        gon.auctionLotsTitle = I18n.t("views.vehicle.index.auction_lots")   
        current_employee_yards = current_employee.yards.includes(facility: :address).select{|ya| ya.facility.address.country_id.to_s == employee_country.id.to_s }
        gon.auctionDates = AuctionDatum.current_future_datum.for_yards(current_employee_yards).map(&:auction_date).uniq
      end

    end

    # Filter lot query based on state
    gon.vehicles = tuneup_lots_based_on_state(@vehicles, page)
    gon.parameters = { "auction_date" => auction_date_desired,
                       "column_as_string" => sort_desired,
                       "country_filter_id" => country_id_desired,
                       "facility_filter_id" => facility_desired,
                       "seller_filter_id" => seller_desired, 
                       "sort_order" => sort_order,
                       "member_filter_id" => member_desired,
                       "state_as_string" => @state_desired,
                       "yard_filter_id" => yard_id_desired }

    gon.pagination = { current_page: @vehicles.current_page,
                       default_per_page: @vehicles.default_per_page,
                       per_page: @vehicles.total_count % @vehicles.default_per_page,
                       total_pages: @vehicles.total_pages,
                       total_count: @vehicles.total_count }

    gon.httpSlug = "" # To allow for dynamic http path building in vehicles.js.coffee

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: { vehicles: gon.vehicles, 
                                   parameters: gon.parameters, 
                                   pagination: gon.pagination,
                                   auctionDates: gon.auctionDates } }
    end
  end

  def fetch_subhaulers
    employee_country = current_employee.present? ? current_employee.operating_country : nil
     # load up the subhaulers (tow providers)
    render json: Subhauler.all_with_lot_count(employee_country)
  end
  # GET /vehicles/recent
  # GET /vehicles/recent.json
  #
  # Get the most recent vehicles (modified in the last 90 days) for the current employee.
  def recent
    page = params[:page] || 1

    # we don't expect the api to ask for recent, so we'll load
    # things based on current employee, or we'll just load all
    # lots regardless of country
    country_id_desired = current_employee.present? ? current_employee.operating_country_id : nil

    # desired facility or nil (which is any facility)
    facility_desired = params[:facility_filter_id] || cookies[:facility_filter_id]

    # desired seller or nil (which is any seller)
    seller_desired = params[:seller_filter_id] || cookies[:seller_filter_id]

    # any column not defined in our model is equivalent to "id ASC"
    sort_desired = params[:column_as_string] || cookies[:lot_sort_by_column] || ""

    # the order is ASC unless this parameter specifies "desc"
    sort_order = params[:sort_order] || cookies[:lot_sort_by_order] || ""

    # update sort desired and order if it's empty as this page has
    # its own default
    if sort_desired.blank?
      sort_desired = "updated_at"
      sort_order = Vehicle::SORT_DESCENDING
    end

    # the yard id
    yard_id_desired = params[:yard_filter_id]

    @vehicles = Vehicle.edited_by_employee(current_employee)
                       .not_canceled
                       .not_closed
                       .where("vehicles.updated_at >= ?", Time.zone.now - 90.days)
                       .seller(seller_desired)
                       .facility(facility_desired)
                       .yard(yard_id_desired)
                       .country(country_id_desired)
                       .ordered_by(sort_desired, sort_order, false)
                       .includes([:api_error, {model: :make}, :vehicle_type, :seller])
                       .page(page)

    # We always want these
    gon.vehicles = @vehicles.as_json(include_basic: "yes", 
                                     include_api_error: 'yes',
                                     exclude_unwanted_keys: "yes", 
                                     include_facility_basic: "yes",
                                     include_seller_compact: "yes", 
                                     include_vehicle_type: "yes")

    gon.parameters = { "column_as_string" => sort_desired,
                       "facility_filter_id" => facility_desired,
                       "seller_filter_id" => seller_desired, 
                       "sort_order" => sort_order,
                       "yard_filter_id" => yard_id_desired }

    gon.pagination = { current_page: @vehicles.current_page,
                       default_per_page: @vehicles.default_per_page,
                       per_page: (@vehicles.total_count % @vehicles.default_per_page),
                       total_pages: @vehicles.total_pages,
                       total_count: @vehicles.total_count }

    gon.httpSlug = "/recent" # To allow for dynamic http path building in vehicles.js.coffee

    # Only get these when loading the html page
    if request.format.html?
      create_country_specific_gon_variables

      gon.sortOptionAscending = Vehicle::SORT_ASCENDING
      gon.sortOptionDescending = Vehicle::SORT_DESCENDING
      gon.showCsvButton = true
    end

    respond_to do |format|
      format.html { render :index }
      format.json { render json: { vehicles: gon.vehicles,
                                   parameters: gon.parameters,
                                   pagination: gon.pagination } }
    end
  end

  # Generating Lot View CSV report
  def vehicles_report
    email = current_employee.present? ? current_employee.email : COBALT_ADMIN_EMAIL[:figsoutbid]
    employee_id = current_employee.id
    logger.info("Will send report to \"#{email}\"")
    
    Vehicle.queue_vehicles_report(email, locale, params[:state_as_string], employee_id)
    
    respond_to do |format|
      format.json { render json: { message: "success" } }
      format.html { redirect_to vehicles_path }
    end
  end

  # GET /vehicles/search
  # GET /vehicles/search.json
  def search
    #begin
      page = params[:page].present? ? params[:page].to_i : 1
      page = 1 if page <= 0
      query = params[:query]
      @unclean_query = query.dup

      # return error message
      if @unclean_query.present? && (@unclean_query.length < 3 || @unclean_query.length > 30)
        if @unclean_query.length < 3
          gon.searchErrorMessage = I18n.t("views.shared.search_errors.too_short")
        else
          gon.searchErrorMessage = I18n.t("views.shared.search_errors.too_long")
        end
      else
        # Finding yards in which current employee has access
        employee_yard_access = current_employee.yards.pluck(:id)
        employee_country = current_employee.present? ? current_employee.operating_country : nil

        # .where("yards.id in (?)", employee_yard_access)
        @vehicles = Vehicle.includes([:seller, :facility, :vehicle_type, {model: :make}]).search(query, page, {yard_access: employee_yard_access, 
                                  country_id: employee_country.try(:id)}, current_role_id)
        if @vehicles.empty?
          gon.searchResultMessage = I18n.t("controllers.vehicle.search.no_results")
        else
          gon.searchResultMessage = I18n.t("controllers.vehicle.search.results")
        end
        gon.pagination = { current_page: @vehicles.current_page,
             default_per_page: Kaminari.config.default_per_page,
             per_page: @vehicles.size,
             total_pages: @vehicles.total_pages,
             total_count: @vehicles.total_count }

        gon.vehicles = @vehicles.map(&:search_results) || []        
        gon.sortOptionAscending = Vehicle::SORT_ASCENDING
        gon.sortOptionDescending = Vehicle::SORT_DESCENDING
        gon.httpSlug = "/search"       
      end

      gon.queryString = @unclean_query
      gon.parameters = { page: page,
                           query: @unclean_query}
      
      respond_to do |format|
        format.html
        format.json { render :json => { vehicles: gon.vehicles, 
                                        parameters: gon.parameters, 
                                        pagination: gon.pagination } }
      end
   
  end

  # GET /vehicles/:id/api-audit.html
  # GET /vehicles/:id/api-audit.json
  #
  # Shows history via all the 'audit' notes
  # associated to the vehicle.
  #
  def api_audit
    # authorize! :api_audit, Vehicle.new
    vehicle = Vehicle.find_by_id(params[:id])
    # filter params
    days = params[:days] || "21"
    type = params[:type] || ""
    # aquacadets
    gon.notes = []
    if vehicle.present?
      gon.notes = vehicle.api_audit_notes
                         .note_of_sub_type(type)
                         .past_x_days(days)
                         .reverse
      gon.parameters = { "days" => days, "type" => type }
      # Only needed on first load
      if request.format.html?
        gon.path = "/vehicles/#{vehicle.id}/api-audit"
        gon.recordName = vehicle.make_model_description
        gon.uid = vehicle.lot_num
      end
    end

    respond_to do |format|
      format.html { render "shared/api_audit.html.erb" }
      format.json { render json: { notes: gon.notes.as_json, parameters: gon.parameters } }
    end
  end

  # GET /vehicles/buyer_invoices.json
  #
  # Will send an email out to the current employee
  # containing the csv files for JDE and ZLot data.
  #
  def buyer_invoices
    logger.info("Will send email of BUYER JDE and ZLot csvs")
    email = current_employee.present? ? current_employee.email : "salesreports@outbid.com"
    logger.info("Will send email to \"#{email}\"")
    Vehicle.queue_buyer_invoice_email(email)
    
    respond_to do |format|
      format.json { render json: { message: "success" } }
      format.html { redirect_to vehicles_url(:state_as_string => "wtg_for_settlement_confirmation") }
    end
  end

  # GET /vehicles/seller_invoices.json
  #
  # Will send an email out to the current employee
  # containing the csv files for JDE and ZLot data.
  #
  def seller_invoices
    logger.info("Will send email of SELLER JDE and ZLot csvs")
    email = current_employee.present? ? current_employee.email : "salesreports@outbid.com"
    logger.info("Will send email to \"#{email}\"")
    Vehicle.queue_seller_invoice_email(email)
    
    respond_to do |format|
      format.json { render json: { message: "success" } }
      format.html { redirect_to vehicles_url(:state_as_string => "wtg_for_settlement_confirmation") }
    end
  end

  # GET /vehicles/new
  # GET /vehicles/new.json
  def new
    @vehicle = Vehicle.new
    authorize! :enabled_menu_new, @vehicle

    logger.info("Loading New Vehicle Form")

    @vehicle.model = Model.new if @vehicle.model.nil?
    @vehicle.model.make = Make.new if @vehicle.model.make.nil?
    @vehicle.trim = Trim.new if @vehicle.trim.nil?

    # View-model for AngularJS controller
    create_edit_gon_variables(@vehicle)

    gon.vehicleFormIsNewRecord = true
    
    #gon.adjusters = Adjuster.includes(:contact).active.as_json(include_contact: "yes") # Finding all active adjuster and contacts
    gon.noEmailsFound = I18n.t("views.adjuster.create_edit_form.no_emails_found") # Adjuster email search stuff
    gon.cancelLocation = request.referer || root_url
    gon.cownerfca = true
    
    respond_to do |format|
      format.html { render (params[:version]=='sds' ? "assignments/new" : "new") }
      format.json { render json: @vehicle }
    end
  end

  def create_assignment
    @vehicle = Vehicle.new
    assignment = DataService::AssignmentData::Assignment.new(params[:assignment])
    if assignment.save
      respond_to do |format|
        format.html { redirect_to vehicle_path(assignment.id) }
        format.json { render json: { assignment: JSON.parse(assignment.encode) }, status: :created, location: vehicle_path(assignment.id) }
      end
    else
      respond_to do |format|
        format.html { render action: "assignments/new" }
        format.json { render json: { assignment: JSON.parse(assignment.encode) }, status: :unprocessable_entity }
      end
    end
  end

  # POST /vehicles
  # POST /vehicles.json
  def create
    create_assignment and return if params[:assignment].present?
    permitted_params = vehicle_params
    @vehicle = Vehicle.new(permitted_params.merge!(get_additional_vehicle_params))
    @vehicle.assignment_date = DateTime.now # not sure why we have this, it is created_at
    @vehicle.update_associations(permitted_params)

    # Updating custom make model attributes as per user input
    if permitted_params[:custom_make_enabled].present?
      @vehicle.custom_make_model_approved = false
      @vehicle.model = nil
      @vehicle.trim = nil
    elsif permitted_params[:custom_model_enabled].present?
      @vehicle.custom_make_model_approved = false
      @vehicle.trim = nil
      @vehicle.model = nil
    elsif permitted_params[:custom_trim_enabled].present?
      @vehicle.custom_make_model_approved = false
      @vehicle.trim = nil
    else
      @vehicle.custom_make_model_approved = true
      @vehicle.custom_make_enabled = false
      @vehicle.custom_model_enabled = false
      @vehicle.custom_trim_enabled = false
      @vehicle.custom_make = nil
      @vehicle.custom_model = nil
      @vehicle.custom_trim = nil
    end

    # Handle Pick Up Required Values
    if @vehicle.pickup_required?
      @vehicle.state = nil
      logger.info("Setting vehicle state to waiting to clear pickup, currently state is: #{@vehicle.state}")
      @vehicle.transition
      logger.info("Vehicle state is now: #{@vehicle.state}")
      if @vehicle.pickup_location.present?
        logger.info("Setting pickup location's country")
        @vehicle.pickup_location.kind == "residential"
        @vehicle.pickup_location.country = current_employee.operating_country unless current_employee.operating_country.nil?
        logger.info("Setting vehicle facility (current location) to pickup location's facility.")
        @vehicle.facility = @vehicle.pickup_location
      else
        logger.warn("WARNING: pickup is required, yet there's no pickup location... that's bad.")
      end
    else
      logger.info("Vehicle is already at the yard, set the facility (current location)")
      if @vehicle.facility.present?
        logger.info("Looks like an offsite yard, vehicle facility is at: #{@vehicle.facility.name}")
      elsif params[:pickup] == Vehicle::PICKUP_OFFSITE
        logger.info("Lot is offsite, but no facility is present, adding error.")
        @vehicle.errors.add(:offsite_facility, I18n.t("views.shared.required"))
      elsif params[:yard].present?
        yard = Yard.find_by_id(params[:yard][:id])
        if yard.present? && yard.facility.present?
          @vehicle.facility = yard.facility
        end
      end
    end

    associated_errors = {}
    # Whose your company?
    @vehicle.copart_company_code = "COPART#{current_employee.operating_country.code.upcase}" if current_employee.present?
    vehicle_saved = @vehicle.save
    if vehicle_saved && (params[:make_missing] != true) && associated_errors.blank?
      logger.info("created vehicle of ID #{@vehicle.id}")
      yard = Yard.find_by_id(params[:yard][:id])
      yard.update_next_vehicle_sequence_num unless yard.nil?
      if params[:lot_assignment_note].present?
        @vehicle.add_note(Note::LOT_ASSIGNMENT_NOTE,
                          NoteType::NOTE_TYPE_CODE_LOT,
                          params[:lot_assignment_note],
                          current_employee)
      end

      respond_to do |format|
        format.html { redirect_to @vehicle }
        format.json { render json: { vehicle: @vehicle.as_json(include_service_orders: "yes") }, 
                             status: :created, 
                             location: @vehicle }
      end
    else
      if @vehicle.facility.present? && @vehicle.facility.address.present? && @vehicle.facility.address.country.present? && @vehicle.facility.address.country.is_state_required && !@vehicle.facility.address.state.present?
       @vehicle.errors.add(:yard, I18n.t("views.yard.errors.state_required_for_facility"))
      end
     
      @vehicle.errors.messages.merge!(associated_errors)
      add_additional_errors(@vehicle, params)

      respond_to do |format|
        format.html { render action: "new" }
        format.json { render json: { vehicle: @vehicle.as_json(include_service_orders: "yes"),
                                     errors: @vehicle.errors }, 
                             status: :unprocessable_entity }
      end
    end
  end

  # Get yard for create assignment and Edit lot page , The method return Yard json
  def find_yards 
    employee_country = current_employee.present? ? current_employee.operating_country : nil
    copartYards = if employee_country.present?
      yard_uid_management = UidManagement.uid_manager_for(Yard, employee_country)
      Yard.for_country_uid(yard_uid_management.min_number, yard_uid_management.max_number)
      .copart_yards
      .for_employee(current_employee)
      .order(:name)
      .as_json(include_basic: 'yes')
    else
      []
    end
    render json: {copartYards: copartYards}  
  end

  # GET /vehicles/:id
  # GET /vehicles/:id.json
  def show
    @vehicle = Vehicle.find_by_id(params[:id])

    respond_to do |format|
      if @vehicle.present?
        format.html do
          if params[:lotredfrm].present?
            redirect_to edit_vehicle_url(@vehicle, lotredfrm: params[:lotredfrm])
          else
            redirect_to edit_vehicle_url(@vehicle) # The 'show' template is also the 'edit' template in this case.
          end
        end
        format.json { render json: { model_object: @vehicle.as_json(include_yard: 'yes', include_documents: "yes",
                                                                    include_seller_light: "yes", service_orders_compact: "yes") } }
      else
        format.html { redirect_to vehicles_url }
        format.json { render json: { errors: [ "Vehicle #{params[:id]} not found." ] } }
      end
    end
  end

  # GET /vehicles/:id/edit
  def edit
    gon.cownerfca = true

    authorize! :enabled_menu_index, @vehicle

    # Set section view/edit permissions to gon variables
    setup_view_edit_permissions(@vehicle)
    # Load our vehicle json to gon with just
    # the basic member info (top level properties plus contact)
    gon.vehicle = @vehicle.as_json(include_all: "yes",
                                   include_member_light: "yes",
                                   include_seller_light: "yes",
                                   include_seller_charges: "yes", lot_state: @vehicle.state, 
                                   klass_name: @vehicle.class.name)
    logger.info "Edit: Before create_edit_gon_variables: #{Time.now}"
    create_edit_gon_variables(@vehicle)

    logger.info "Edit: After create_edit_gon_variables: #{Time.now}"
    gon.custom_make_dropdown_value = Make.find_by_name(@vehicle.custom_make).as_json if !@vehicle.custom_make_enabled && @vehicle.custom_make.present?

    # May this user assign a lot to an auction that's today?
    gon.mayAssignLotSameDay = current_employee.can_enable_field?("action_same_day_lot_assignment")
    #set transition button permission
    gon.showTransitionButton = current_employee.can_enable_field?("action_move_lot")
    #set permission for cancel lot button
    gon.showCancelLotButton = current_employee.can_enable_field?("action_cancel_lot")
    #set permission for rerun and relist button
    gon.showRelistLotButton = current_employee.can_enable_field?("action_relist_lot") && !@vehicle.buyer_billing_complete
    gon.showRerunLotButton = current_employee.can_enable_field?("action_rerun_lot")
    # Set a couple of form-related variables
    gon.vehicleFormIsNewRecord = false
    #gon.adjusters = Adjuster.includes(:contact).active.as_json(include_contact: "yes") # Finding all active adjuster and contacts
    gon.noEmailsFound = I18n.t("views.adjuster.create_edit_form.no_emails_found") # Adjuster email search stuff
    gon.cancelLocation = request.referrer || root_url

    if params[:redirect_conflict].present?
      gon.conflictMessage = I18n.t("views.shared.record_locking.update_conflict")
    end
    
    # Ensure button to go back has relevant filter parameters
    gon.backButtonLink =
      if params[:lotredfrm].present?
        vehicles_path(state_as_string: "ready_for_auction") 
      elsif request.referer.present?
        # Add URL parameter 'from=[lot #]' to the back arrow link to let
        # the lots index page know to restore any filters and sort orders
        # that were previously set.
        ref_link = request.referrer.gsub(/&?from=\d+/i, "").chomp("?")
        "#{ref_link}#{ref_link.include?('?') ? '&' : '?'}from=#{@vehicle.lot_num}"
      else
        vehicles_url
      end

    # Set the buyer fee estimation if we should
    logger.info("Lot: #{@vehicle.lot_num} Current employee present #{current_employee.present?}")
    if @vehicle.high_bid_amount.present? && current_employee.present?
      gon.displayBuyerFee = @vehicle.calculate_buyer_fee_for_display(@vehicle.high_bid_amount, current_employee.operating_country)
    end
    gon.totalBuyerFees = @vehicle.get_buyer_total_fees()
    gon.highBidAmount = @vehicle.high_bid_amount

    #TODO: this probably needs to be refactored, to be pulling from auction_datum by PK/FK, but it's not in sync with bid_histories
    # If we're at auction state or later
    if @vehicle.bid_histories.present?
      auction_dates = @vehicle.bid_histories.map(&:auction_date).uniq
      # remove nil, from drop down display
      gon.bidHistoryDates = auction_dates.delete_if {|v| v.nil?}
    end

    # Build the link for Aurora if we can
    gon.vehicle_aurora_link =
      if @vehicle.in_or_after_state?(:ready_for_auction) && @vehicle.auction_datum.present? &&  @vehicle.auction_datum.auction_date.present?
        "#{ app_config.urls['aurora_url_prefix_' + current_employee.operating_country.code.downcase] }"  + "/" + "#{@vehicle.lot_num}"
      else
        ""
      end

    render :new
  end

 
  # PUT /vehicles/:lot_num
  # PUT /vehicles/:lot_num.json
  # PUT /vehicles/:id
  # PUT /vehicles/:id.json
  def update
    # @vehicle is retrieved in before_action acquire_vehicle
    # We should start transaction from here
    current_ability

    saved = false
    display_buyer_fee = 0.0
    starting_state = ""

    # If there is a update conflict, we want to return immediately
    @vehicle.handle_conflicts(params[:last_updated_at])

    if @vehicle.errors.has_key?(:update_conflict)
      previous_state = params[:state]
      if @vehicle.state != previous_state
        redirect_url = edit_vehicle_url(@vehicle) + "?redirect_conflict=true"
        logger.info("there is a update conflict, vehicle state has also transationed, redirect to the edit page, redirect_url #{redirect_url}")
        respond_to do |format|
          format.html { redirect_to edit_vehicle_url(@vehicle) }
          format.json { render json: { errors: @vehicle.errors, vehicle: @vehicle.as_json(include_all: "yes"), prev_state: previous_state,
                                       location: redirect_url, message: I18n.t("controllers.vehicle.move_lot_success",
                                       state_name: @vehicle.state_display_text) }, 
                                       status: :unprocessable_entity }
        end
      else
        # There is a conflict but no state change. This is the main update conflict flow.
        logger.info("update_conflict Errors exist: #{@vehicle.errors["update_conflict"]}")
        respond_to do |format|
          format.html { render action: :new }
          format.json { render json: { errors: @vehicle.errors, vehicle: @vehicle.as_json(include_all: "yes"),
                                       display_buyer_fee: display_buyer_fee, last_updated_at: @vehicle.updated_at },
                               status: :unprocessable_entity }
        end
      end
      return
    end
    associated_errors = {}
    Vehicle.transaction do 
      # @vehicle is retrieved in before_action acquire_vehicle
      # Get auction date (if any) before updating for comparison later
      pre_existing_auction_date = nil
      if @vehicle.auction_datum.present? && @vehicle.auction_datum.auction_date.present?
        pre_existing_auction_date = @vehicle.auction_datum.auction_date.dup
        logger.info("lot has a pre-existing auction date of: #{pre_existing_auction_date}")
      end
      permitted_params = vehicle_params
      # Save all other attributes on vehicle model and update associated models 
      # (not commited to database save yet)
      @vehicle.assign_attributes(permitted_params)
      @vehicle.update_associations(permitted_params)
      @vehicle.update_custom_make_model(permitted_params)
      @vehicle.facility_id = permitted_params[:facility_id]

      if @vehicle.valid?
        # TODO: this should be part of params/accepts nested attributes pattern
        @vehicle.persist_trip_info(params[:trip_infos])

        if @vehicle.pickup_required? 
        @vehicle.pickup_location.kind == "residential"
          @vehicle.pickup_location.country = current_employee.operating_country unless current_employee.operating_country.nil?
          @vehicle.facility = @vehicle.pickup_location
        end
        # If we're in dispatch or confirmation send charges
        # delta to SAP if they changed (for non-residence)
        if advance_charges_modified?(@vehicle) &&
           @vehicle.pickup_location.present? && 
           !@vehicle.pickup_location.residence? &&
           (@vehicle.wtg_for_driver_dispatch? || @vehicle.wtg_for_trip_confirmation?)
          @vehicle.add_audit_note_with_content("Processing modified advance charges (lot updated in driver dispatch or trip confirmation state)", Note::SAP_AUDIT_LOG_NOTE)
          @vehicle.send_advance_charges_to_sap("vendor", true)
        end

        if (@vehicle.wtg_to_clear_pickup? ||
            @vehicle.wtg_for_driver_dispatch? ||
            @vehicle.wtg_for_trip_confirmation?) && @vehicle.pickup_location.present? &&
           !@vehicle.offsite?
          logger.info("Edited vehicle is not yet at a yard, will ensure facility matches pickup location (facility).")
          @vehicle.facility = @vehicle.pickup_location
        end

        # Does Copart need to take a specific action?
        if @vehicle.ready_for_auction? && pre_existing_auction_date.present?
          # If we previously had an auction date and now we don't Copart will want to know.
          if @vehicle.auction_datum.nil? || @vehicle.auction_datum.auction_date.nil?
            @vehicle.set_copart_action_code(app_config.copart_action_codes["remove_from_auction"])
            @vehicle.add_note(Note::RECORD_UPDATE, NoteType::NOTE_TYPE_CODE_LOT,
                              I18n.t("system_notes.user_activity.removed_from_auction", old_auction_date: pre_existing_auction_date),
                              current_employee, true)
          # If the date is different we want to send a bid reset regardless of other changes.
          elsif @vehicle.auction_datum.auction_date != pre_existing_auction_date
            @vehicle.set_copart_action_code(app_config.copart_action_codes["keep_auction_remove_prelim_bids"])
            @vehicle.add_note(Note::RECORD_UPDATE, NoteType::NOTE_TYPE_CODE_LOT,
                              I18n.t("system_notes.user_activity.changed_to_auction", old_auction_date: pre_existing_auction_date, new_auction_date: @vehicle.auction_datum.auction_date),
                              current_employee, true)
          # Else, check what changed and send the code based on the result.
          else
            safe_to_edit_properties = [ "item_num" ]
            changed_fields = @vehicle.changed
            changed_fields.delete_if { |property| safe_to_edit_properties.include?(property) }
            if changed_fields.empty?
              @vehicle.set_copart_action_code(app_config.copart_action_codes["keep_auction_and_prelim_bids"])
            else
              @vehicle.set_copart_action_code(app_config.copart_action_codes["keep_auction_remove_prelim_bids"])
            end
          end
        elsif @vehicle.ready_for_auction? && @vehicle.auction_datum.present? && @vehicle.auction_datum.auction_date.present?
          @vehicle.add_note(Note::RECORD_UPDATE, NoteType::NOTE_TYPE_CODE_LOT,
                            I18n.t("system_notes.user_activity.assigned_to_auction", new_auction_date: @vehicle.auction_datum.auction_date),
                            current_employee, true)
        end

        # Are we in Buyer Billing? Let's save the charges.
        if @vehicle.wtg_for_buyer_charge_confirmation?
          MemberCharge.persist_member_charges(params[:member_charges], @vehicle)
        end

        # Well what about Seller Billing?  Let's save those charges
        # seller charge can be added after seller billing THEN USE IN OR AFTER
        if @vehicle.ready_for_seller_billing?
          SellerCharge.persist_seller_charges(params[:seller_charges], @vehicle)
        end

        # Did we just learn the buyer paid?
        if @vehicle.member_paid? && @vehicle.buyer_billing_complete && @vehicle.member_award_date.nil?
          @vehicle.member_award_date = Date.today
          @vehicle.set_copart_action_code(app_config.copart_action_codes["lot_paid_actions"])
        elsif !@vehicle.member_paid? && @vehicle.member_award_date.present?
          # We should clear out this date and reset the action code when
          # user switches value of button from yes to no
          @vehicle.member_award_date = nil
          @vehicle.set_copart_action_code(app_config.copart_action_codes["no_action_required"])
        end
      end
      @vehicle.get_custom_changes(permitted_params[:service_orders_attributes])
      @vehicle.service_orders = [] if permitted_params[:service_orders_attributes].blank?
      saved = @vehicle.errors.count > 0 ? false : @vehicle.save

      # If save returns false, will raise a rollback exception
      if !saved
        logger.error("Save vehicle failed, will roll back transaction hopefully ... @vehicle.errors ? #{@vehicle.errors.as_json}")
        raise ActiveRecord::Rollback, "Should roll back everything ?"
      end
    end # end of transaction

    # we need this link when there is a conflict
    vehicle_aurora_link = 
      if @vehicle.in_or_after_state?(:ready_for_auction) && @vehicle.auction_datum.present? && @vehicle.auction_datum.auction_date.present?
        "#{app_config.urls['aurora_url_prefix']}/#{@vehicle.lot_num}"
      else
        ""
      end

    if saved 
      #Synked Completed Service Orders with SAP
      logger.info("Calling Service Order synup method for lot #{@vehicle.lot_num} from update action of vehicle controller")        
      @vehicle.sync_service_order_with_SAP

      # Validations pass and there are no errors, committed to database and there is no rollback!
      # As it is an Ajax request, we need to pass updated_at to the front-end controller so that it has updated last_update_at
      @vehicle.reload

      # Set the buyer fee estimation if we should
      logger.info("Lot: #{@vehicle.lot_num} Current employee present #{current_employee.present?}")
      if @vehicle.high_bid_amount.present? && current_employee.present?
        display_buyer_fee = @vehicle.calculate_buyer_fee_for_display(@vehicle.high_bid_amount, current_employee.operating_country)
      end
    
      logger.info("Vehicle (Lot) #{@vehicle.lot_num} updated successfully.")
      respond_to do |format|
        format.html { redirect_to @vehicle }
        format.json { render json: { vehicle: @vehicle.as_json(include_all: "yes", include_member_light: "yes"), 
                                     display_buyer_fee: display_buyer_fee,
                                     vehicle_aurora_link: vehicle_aurora_link },
                             status: :created, 
                             location: @vehicle }
      end
    else
      # there is validation error and database rollback happened 
      # we need to add service order specific errors here
      @vehicle.errors.messages.merge!(associated_errors)
      add_additional_errors(@vehicle, params)

      logger.info("Errors exist: #{@vehicle.errors.messages}")
      respond_to do |format|
        format.html { render action: :new }
        format.json { render json: { vehicle: @vehicle.as_json(include_all: "yes"),
                                     errors: @vehicle.errors }, 
                             status: :unprocessable_entity }
      end
    end
  end


  # POST /vehicles/:id/update_title
  # when update title transfer from dialog 
  def update_title
    title_params = { year: params[:year],
                     min_bid_reserve: params[:min_bid_reserve],
                     pre_accident_value: params[:pre_accident_value],
                     buy_now: params[:buy_now],
                     sale_doc_application_date: params[:sale_doc_application_date],
                     sale_doc_at_copart_date: params[:sale_doc_at_copart_date],
                     sale_doc_given_to_buyer_date: params[:sale_doc_given_to_buyer_date] }
    if @vehicle.homeowner_group?
      title_params.merge!(vehicle_description: params[:vehicle_description])
    else
      title_params.merge!(license_plate_num: params[:license_plate_num],
                          vehicle_registration_num: params[:vehicle_registration_num],
                          registration_certificate_num: params[:registration_certificate_num],
                          verify_vehicle_identification_num: params[:verify_vehicle_identification_num],
                          ownership_transfer_type_id: params[:ownership_transfer_type].present? ? params[:ownership_transfer_type][:id] : nil,
                          original_doc_country_id: params[:original_doc_country].present? ? params[:original_doc_country][:id] : nil,
                          original_doc_type_id: params[:original_doc_type].present? ? params[:original_doc_type][:id] : nil,
                          documented_odometer_hour: params[:documented_odometer_hour],
                          documented_odometer_unit_id: params[:documented_odometer_unit].present? ? params[:documented_odometer_unit][:id] : nil,
                          original_odometer_brand_id: params[:original_odometer_brand].present? ? params[:original_odometer_brand][:id] : nil,
                          documented_odometer_brand_id: params[:documented_odometer_brand].present? ? params[:documented_odometer_brand][:id] : nil,
                          sale_doc_country_id: params[:sale_doc_country].present? ? params[:sale_doc_country][:id] : nil,
                          sale_doc_type_id: params[:sale_doc_type].present? ? params[:sale_doc_type][:id] : nil,
                          original_doc_state: params[:original_doc_state],
                          sale_doc_state: params[:sale_doc_state],
                          original_odometer_hour: params[:original_odometer_hour],
                          original_odometer_unit_id: params[:original_odometer_unit].present? ? params[:original_odometer_unit][:id] : nil)
      if @vehicle.marine_or_recreational_or_industrial_or_homeowner_group?
        title_params.merge!(custom_make: params[:custom_make],
                            custom_model: params[:custom_model], custom_trim: params[:custom_trim])
      end
    end
    # Replace masking value with the original
    title_params.keys.each do |key|
      replace_value = replace_mask_val_with_orginal(key.to_s, @vehicle)
      title_params[key] = replace_value if !replace_value.nil?
    end
    @vehicle.update_attributes(title_params)
    @vehicle.add_note(Note::RECORD_UPDATE, NoteType::NOTE_TYPE_CODE_LOT,
                      I18n.t("system_notes.user_activity.ownership_transfer_update"),
                      current_employee, true)

    if @vehicle.save
      @vehicle.reload
      respond_to do |format|
        format.html { redirect_to @vehicle }
        format.json { render json: { vehicle: @vehicle.as_json(include_all: "yes") }, 
                             status: :created, 
                             location: @vehicle }
      end
    else
      logger.info("Errors exist: #{@vehicle.errors.messages}")
      respond_to do |format|
        format.html { render action: :new }
        format.json { render json: { errors: @vehicle.errors }, 
                             status: :unprocessable_entity }
      end
    end
  end

  # GET /vehicles/:id/makes.json
  def makes
    makes = if current_employee.present? && params[:id].present?
        vehicle_type = VehicleType.where(id: params[:id]).first
        vehicle_type.makes.for_country(current_employee.operating_country).order("name asc").group("makes.id").as_json(list: true)
      else
        []
      end

    respond_to do |format|
      format.json { render json: {makes: makes} }
    end
  end

  def get_images
    vehicle = Vehicle.find_by_id(params[:id])
    ImageManager.retrieve(vehicle.lot_num, vehicle.class.name.upcase)
  end

  # GET /vehicles/:id/images.json
  def images
    vehicle = Vehicle.find_by_id(params[:id])
    images = ImageManager.retrieve(@vehicle.lot_num, @vehicle.class.name)

    respond_to do |format|
      format.json { render json: { images: images } }
    end
  end

  # GET /vehicles/:id/images.json
  def images
    vehicle = Vehicle.find_by_id(params[:id])
    images = ImageManager.retrieve(@vehicle.lot_num, @vehicle.class.name)

    respond_to do |format|
      format.json { render json: { images: images } }
    end
  end

  # POST /vehicles/:id/add_note.json
  def add_note
    note =
      if params[:note].present?
        vehicle = Vehicle.find_by_id(params[:id])
        (vehicle.present? ?
         vehicle.add_note(Note::LOT_ASSIGNMENT_NOTE, NoteType::NOTE_TYPE_CODE_LOT, params[:note], current_employee) :
         false)
      else
        nil
      end

    respond_to do |format|
      format.json { render json: { success: note.present?, note: note } }
    end
  end


  # GET /vehicles/:id/notes.json?page=[page]
  def notes
    vehicle = Vehicle.select("id").find_by_id(params[:id])
    page = params[:page].to_i rescue 1
    notes = populate_notes(vehicle)
    note_count = notes.size
    page_count = (note_count.to_f / NOTES_PER_PAGE.to_f).ceil
    page = 1 if (page < 1) || (page > page_count)
    starting_note_index = (page - 1) * NOTES_PER_PAGE    
   
    respond_to do |format|
      format.json { render json: { notes: notes.drop(starting_note_index).first(NOTES_PER_PAGE),
                                   note_count: note_count,
                                   page: page,
                                   page_count: page_count,
                                   per_page: NOTES_PER_PAGE } }
    end
  end


  # PUT /vehicles/auction_result/:lot_num 
  def auction_result

    logger.info("-------------auction result processing started---------------")
    logger.info("-------------params---------------")
    logger.info("#{params}")
    logger.info("----------lot num: #{params[:lot_num]}-----------------")


    lot_num = params[:lot_num]
    yard_num = params[:vehicle][:yard_num]
    member_uid = params[:vehicle][:member_num]

    errors_hash = Hash.new

    # our lot
    vehicle = Vehicle.find_by_lot_num(lot_num)
    if vehicle.nil? 
      errors_hash[:lot_num] = I18n.t("controllers.vehicle.error.lot_num")
    end

    # our buyer (we may not have one, and that's fine)
    # member = member_uid.present? ? MemberResource.find(member_uid) : nil
    member = nil

    # our auction date
    auction_date = (vehicle.present? && vehicle.auction_datum.present?) ? vehicle.auction_datum.auction_date : nil

    # our yard
    yard = yard_num.present? ? Yard.find_by_yard_num(yard_num) : nil
    if yard.nil?
      errors_hash[:yard_num] = I18n.t("controllers.vehicle.error.yard_num")
    end

    # our country
    country = nil
    if yard.present? && yard.facility_country_present?
      country = yard.facility.address.country
      params.merge!(for_country_code: country.code)
    end
    if country.nil?
      errors_hash[:yard_country] = I18n.t("controllers.vehicle.error.yard_country")
    end

    # is our lot managed by our yard?
    if yard.present? && vehicle.present? && yard.id != vehicle.yard_id
      errors_hash[:yard_num_lot_num] = I18n.t("controllers.vehicle.error.yard_num_lot_num")
    end

    # is our lot in the expected state?
    if vehicle.present? && !vehicle.ready_for_auction?
      errors_hash[:invalid_starting_lot_state] = I18n.t("controllers.vehicle.error.invalid_starting_lot_state")
    end

    # are we error free thus far?
    if errors_hash.empty? && vehicle.valid?
      # good, let's do this thing
      logger.info("no errors in params, will associate buyer and bids")
      vehicle.add_audit_note_with_content("Auction Result JSON Received: #{params}", Note::API_AUDIT_LOG_NOTE)
      # first, let's associate the member (if present)
=begin
      #########################  TODO ###################################
      if member.present?
        logger.info("buyer (member) exist with uid #{member.member_uid}")
        vehicle.member = member
      end
=end
      vehicle.member_id = member_uid if member_uid.present?    ###### TODO

      # now let's add the bids
      bid_history_data = params[:vehicle][:bid_histories]
      kiosk_source_codes = ["KS", "KD", "BBD", "BBS"]
     
      auction_date = (vehicle.present? && vehicle.auction_datum.present?) ? vehicle.auction_datum.auction_date : nil

      if bid_history_data.present?
        logger.info("bid history data is present.")
        bid_history_data.reverse.each do |bid_history|
=begin
          # our bidder
          ## bidder = Member.find_by_member_uid(bid_history[:member_num])
          ## bidder = MemberResource.find(bid_history[:member_num])   ### TODO
=end
          bidder = nil         ##### TODO
          # the bid type, eh?
          bid_type = BidType.find_by_code(bid_history[:bid_type_code])
          # Here we need to check if its a kiosk then we sen the K code instead
          if (bid_type.code == "P" && kiosk_source_codes.include?(bid_history[:bid_source_code]))
            bid_type = BidType.find_by_code("K")
          elsif bid_type.nil?
            logger.info("Unrecognized BidType code: #{bid_history[:bid_type_code]}, setting type to unknown.")
            bid_type = BidType.find_by_code("UNKNOWN")
          end
          # bidder and bid_type are both present, hooray!
          # let's get the timestamp
          bid_date_time = nil
          if bid_history[:bid_time_timestamp].present? && 
             bid_history[:bid_time_timestamp].to_i != 0
            bid_date_time = Time.at(bid_history[:bid_time_timestamp].to_i)
          end
          # let's set up the params for BidHistory...
          input_params = {"member_id" => bid_history[:member_num], "bid_type_id" => bid_type.id,    ### TODO
                          "bid_time" => bid_date_time,  "auction_date" => auction_date }
          # ... adding item num if present
          if params[:vehicle][:item_num].present?
            input_params.merge!("item_num" => params[:vehicle][:item_num])
          end
          # ... adding bid_amount if present
          bid_amount = bid_history[:bid_amount]
          if bid_amount.present? && is_number(bid_amount)
            input_params.merge!("bid_amount" => bid_amount) 
          else
            logger.error("bid_amount invalid in bid_history for lot_num: #{vehicle.lot_num}")
          end
          # ... adding the bid_source_code if present
          if bid_history[:bid_source_code].present?
            input_params.merge!("bid_source_code" => bid_history[:bid_source_code])
          end
          # "let's create this thing" ~ Dr. Frankenstein
          bid = BidHistory.create(input_params)
          vehicle.bid_histories << bid
        end
      end
      # Set the vehicle's sale confirmation status
      vehicle.sale_confirmation_status = SaleConfirmationStatus.find_by_code("N")
      # Set the vehicle's highbid
      vehicle.high_bid_amount = params[:vehicle][:high_bid_amount]
      vehicle.transition
      
      logger.info("Lot: #{vehicle.lot_num} transitioning to #{vehicle.state} with company code #{vehicle.company_code} before saving auction result")
      if vehicle.save  
        buy_it_now = BidType.is_current_bid_buy_it_now?(params[:vehicle][:bidTypeCode])
        vehicle.update_auction_date(params[:vehicle][:award_time_timestamp]) if buy_it_now && params[:vehicle][:award_time_timestamp].present?

        logger.info("auction_result, lot transition successful for lot_num: #{lot_num}")
        state_as_string = vehicle.state

        # Add a system note indication the state transition.
        figs_admin_user = Employee.find_by_email(COBALT_ADMIN_EMAIL[:figsoutbid])
        note = vehicle.add_note(Note::VEHICLE_STATE_CHANGE, NoteType::NOTE_TYPE_CODE_LOT,
                                I18n.t("controllers.vehicle.move_lot_success", state_name: "'Sale Confirmation'"),
                                figs_admin_user, true)
        # Add a snapshot of the state on transition.
        note.update_attributes(snapshot_state: vehicle.state) if note.present?
        # Pure Sell continues to buyer charges
        # while non-pure-sell goes to sale confirmation
        if vehicle.pure_sell?(buy_it_now)
          # have to do this b/c of the method call... really not liking this implementation
          # maintenance and readability are shot here, (I've commented the methods, original
          # code by Ziji)
          params[:high_bid_amount] = vehicle.high_bid_amount
          params[:vehicle_type] = vehicle.vehicle_type # really can't overstate how bad this is.
          # TODO: these two methods feel like they're breaking the MVC paradigm
          #       perhaps we can refactor this at some point
          MemberCharge.add_initial_buyer_fees_to_hash(params, vehicle, vehicle.yard.facility.country)
          MemberCharge.persist_member_charges(params[:member_charges], vehicle)
          # Confirm sale date if it is pure sale
          vehicle.confirm_sale!(buy_it_now)
          vehicle.transition
          if vehicle.save
            pures_sell_note = vehicle.add_note(Note::VEHICLE_STATE_CHANGE, 
                                               NoteType::NOTE_TYPE_CODE_LOT,
                                               I18n.t("controllers.vehicle.move_lot_success", state_name: "'Member Charges' (Pure Sale)"),
                                               figs_admin_user, 
                                               true)
            # Add a snapshot of the state on transition.
            pures_sell_note.update_attributes(snapshot_state: vehicle.state) if pures_sell_note.present?
            
            # sending/syncing purchase price/residual value with SAP in case when operaing country is India, 
            # as in this case the lot will go directly from Auction to Member billing
            vehicle.add_audit_note_with_content("Syncing updated Purchase Price/Residual Value", Note::SAP_AUDIT_LOG_NOTE)          
            vehicle.send_advance_charges_to_sap('vendor', true, true)
          else
            logger.info("Auction result transition and save failed.")
            logger.info("Errors exist: #{vehicle.errors.messages}")

            respond_to do |format|
              format.json { render json: { errors: vehicle.errors }, 
                                   status: :unprocessable_entity }
            end
          end
        end

        respond_to do |format|
          format.json { render json: { location: vehicles_path(state_as_string: state_as_string),
                                       message: I18n.t("controllers.vehicle.move_lot_success", state_name: vehicle.state_display_text) }, 
                                       status: :created }
        end
      else
        logger.info("Auction result transition and save failed.")
        logger.info("Errors exist: #{vehicle.errors.messages}")

        respond_to do |format|
          format.json { render json: { errors: vehicle.errors }, 
                               status: :unprocessable_entity }
        end
      end
    else
      # errors_hash isn't empty, eh?
      # or perhaps vehicle isn't valid?
      if errors_hash.empty? && vehicle.present?
        errors_hash = vehicle.errors.messages
      end
      logger.error("errors present: #{errors_hash}")
      if vehicle.present?
        vehicle.add_audit_note_with_content("ERRORS with Auction Result JSON: #{params}", Note::API_AUDIT_LOG_NOTE)
        vehicle.add_audit_note_with_content("ERRORS: #{errors_hash}", Note::API_AUDIT_LOG_NOTE)
      end
      respond_to do |format|
        format.json { render json: { errors: errors_hash }, 
                             status: :unprocessable_entity }
      end
    end
    logger.info("-------------auction result processing done---------------")
  end


  # GET /vehicles/:id/bid_history/:auction_date.json
  #
  # UI only action for viewing virtual bid log in modal for current vehicle
  # Expected to be called several times for browser, so pulling directly
  # from BidHistory
  def bid_history
    bid_histories = BidHistory.for_vehicle_id_and_auction_date(params[:id], params[:auction_date])
    member_ids = bid_histories.map(&:member_id).compact

    bid_histories_json = if member_ids.blank?
      bid_histories.as_json
    else  
      members = Hash[MemberResource.find_by_ids(member_ids).map {|member| [member.id, parse_member_country_state(member) ] } ]
      members.blank? ? bid_histories.as_json : bid_histories.map{ |bid_history| bid_history.as_json().merge!(member: fill_members_data(members[bid_history.member_id]))}
    end

    respond_to do |format|  
      format.json { render json: { bidHistories: bid_histories_json }}
    end
  end


  # PUT /vehicles/:id/move_lot
  def move_lot
    # @vehicle is retrieved in before_filter acquire_vehicle
    saved = false
    move_lot_successful = false
    starting_state_as_string = ""
    transition_errors = {}
    associated_errors = {}

    # If there is an update conflict, we want to return immediately
    @vehicle.handle_conflicts(params[:last_updated_at])
    if @vehicle.errors.has_key?(:update_conflict)
      previous_state = params[:state]
      if @vehicle.state != previous_state
        redirect_url = edit_vehicle_url(@vehicle) + "?redirect_conflict=true"
        logger.info("there is a update conflict, vehicle state has also transationed, redirect to the eidt page, redirect_url #{redirect_url}")
        respond_to do |format|
          format.html { redirect_to edit_vehicle_url(@vehicle) }
          format.json { render json: { errors: @vehicle.errors, 
                                       vehicle: @vehicle.as_json(include_all: "yes", exclude_unwanted_keys: "yes"), 
                                       prev_state: previous_state,
                                       location: redirect_url, message: I18n.t("controllers.vehicle.move_lot_success",
                                       state_name: @vehicle.state_display_text) }, 
                               status: :unprocessable_entity }
        end
      else
        # there is a conflict but there is no state change, this is the main update conflict flow
        logger.info("update_conflict Errors exist: #{@vehicle.errors["update_conflict"]}")
        respond_to do |format|
          format.html { render action: :new }
          format.json { render json: { errors: @vehicle.errors, 
                               vehicle: @vehicle.as_json(include_all: "yes", exclude_unwanted_keys: "yes"), 
                               last_updated_at: @vehicle.updated_at}, 
                               status: :unprocessable_entity }
        end
      end
      return
    end

    Vehicle.transaction do
      permitted_params = vehicle_params
      if params[:sell_now] == true && @vehicle.auction_datum.present? && @vehicle.auction_datum.auction_date.present?
        @vehicle.set_copart_action_code(app_config.copart_action_codes["remove_from_auction"])
      end
      @vehicle.assign_attributes(permitted_params)
      @vehicle.update_associations(permitted_params)
      @vehicle.update_custom_make_model(permitted_params)
      @vehicle.process_sale_confirmation_notes(params, current_employee)
      @vehicle.persist_trip_info(params[:trip_infos]) 
      starting_state_as_string = @vehicle.state
      # Decide which state is next and transition to it.
      transition_successful =
        if params[:sell_now] == true
          logger.info("We will sell now.")
          @vehicle.sell_now = true # This is not actually stored in the database - it's just a Vehicle attribute.
          # Setting Sale confirmation status as N when translating from Auction/Ownership Transfer to Sale Confirmation state.
          if starting_state_as_string == "ready_for_auction" || starting_state_as_string == "wtg_for_title"
            @vehicle.sale_confirmation_status = SaleConfirmationStatus.find_by_code("N")
            if(@vehicle.sale_hold_action_date?)
              @vehicle.errors.add(:"sale_hold_action_date", I18n.t("controllers.vehicle.error.remove_sale_hold_date_to_award_lot"))
              false
            end
          end
          # Transition directly to waiting for sale confirmation
          if starting_state_as_string == "ready_for_auction" && (@vehicle.auction_datum && @vehicle.auction_datum.auction_date?)
            @vehicle.errors.add(:"auction_datum.auction_date", I18n.t("controllers.vehicle.error.remove_auction_date_to_award_lot"))
            false
          else
            @vehicle.transition(:wait_for_sale_confirmation)
          end
        # Pickup isn't required but we're not in inventory yet?
        # Let's fix that.
        elsif !@vehicle.pickup_required? &&
              (@vehicle.wtg_for_driver_dispatch? || @vehicle.wtg_to_clear_pickup? || @vehicle.wtg_for_trip_confirmation?)
          # If a pickup hold is present and we are transitioning from Call for Release (Clear for Pickup) or
          # Driver Dispatch to Inventory/Receiving, clear out all pickup hold fields.
          if (@vehicle.hold_for_pickup? || @vehicle.hold_for_pickup_date.present? || @vehicle.hold_for_pickup_reason.present?) &&
             (@vehicle.wtg_to_clear_pickup? || @vehicle.wtg_for_driver_dispatch?)
            @vehicle.hold_for_pickup = false
            @vehicle.hold_for_pickup_date = nil
            @vehicle.hold_for_pickup_reason = nil
          end
          @vehicle.transition(:wait_for_inventory)
        elsif @vehicle.wtg_for_sale_confirmation? && @vehicle.member.present? && @vehicle.member.inactive?
          @vehicle.errors.add(:member, I18n.t("controllers.vehicle.transition_failures.inactive_member_exists"))
          false
        else
          @vehicle.transition
        end
      # Hold onto the errors if transition failed
      if !transition_successful
        transition_errors = @vehicle.errors.messages.dup
      end
      if @vehicle.valid?
        # If pickup hold was removed, add the appropriate system note.
        if @vehicle.hold_for_pickup_changed? && !@vehicle.hold_for_pickup?
          note_text = I18n.t("controllers.vehicle.notes.pickup_hold_removed")
          @vehicle.add_note(Note::RECORD_UPDATE, NoteType::NOTE_TYPE_CODE_LOT, note_text, current_employee, true)
        end

        # Set 'Advance Charges Paid?' radio button selection to 'Yes' if all the advance charge validations pass
        # when transitioning out of the Trip Maintenance state into Inventory/Receiving state.
        if @vehicle.errors.empty? && @vehicle.advance_charge.errors.empty? && @vehicle.ok_pay_charge? &&
           !@vehicle.advance_charge_paid? && (starting_state_as_string == "wtg_for_trip_confirmation") &&
           @vehicle.in_or_after_state?(:wtg_for_inventory)
          @vehicle.advance_charge_paid = true
        end
        
        if params[:sell_now] == true
          @vehicle.lot_awarded_from = "cobalt"
          # Clean up auction specific data
          if @vehicle.auction_datum.present? && @vehicle.auction_datum.auction_date.present?
            @vehicle.set_copart_action_code(app_config.copart_action_codes["remove_from_auction"])
          end
          # Add a sale now bid history, which will not yet have
          # the member / bid as they aren't added until sale_confirmation.
          bid_history = BidHistory.new
          bid_history.bid_type = BidType.find_by_code(BidType::FIGS_SALE_NOW_CODE)
          @vehicle.bid_histories << bid_history
        # Headed to Buyer Billing now?  Let's set up the initial charges
        elsif starting_state_as_string == "wtg_for_sale_confirmation" && current_employee.present?
          logger.info("Lot: #{@vehicle.lot_num} Current employee present #{current_employee.present?} in state #{@vehicle.state}")
          MemberCharge.add_initial_buyer_fees_to_hash(params, @vehicle, current_employee.operating_country)
          MemberCharge.persist_member_charges(params[:member_charges], @vehicle)
          @vehicle.confirm_sale!
          @vehicle.update_auction_date(Time.now.utc.to_i * 1000) if @vehicle.lot_awarded_from == "cobalt" # TODO Code refactor required here
          @vehicle.set_copart_action_code_for_buyer          
        # Leaving the Buyer Billing state eh? Let's save those charges
        # that were added / updated.
        elsif starting_state_as_string == "wtg_for_buyer_charge_confirmation"
          MemberCharge.persist_member_charges(params[:member_charges], @vehicle)
          # Save tax paid value to vehicle level as it is referenced
          # from both a member and seller context when creating invoices/extracts
          vts_charge = params[:member_charges].detect { |charge| charge[:gl_type][:code] == "VTS" unless charge[:gl_type].nil? }
          @vehicle.purchase_vat = vts_charge[:vat] if vts_charge.present?
        # Finished with Seller Billing state, are we? I suppose we
        # should save those charges too.
        elsif starting_state_as_string == "ready_for_seller_billing"
          SellerCharge.persist_seller_charges(params[:seller_charges], @vehicle)
        # Nothing special, eh?  Let's transition normally.
        elsif starting_state_as_string == "wtg_for_settlement_confirmation"
          # Transistioning from settlement confirmation
          # to closed?  Let's make sure the record has the
          # proper copart action code.
          if @vehicle.member_paid? && @vehicle.buyer_billing_complete && @vehicle.member_award_date.nil?
            @vehicle.member_award_date = Date.today
            @vehicle.set_copart_action_code(app_config.copart_action_codes["lot_paid_actions"])
          else
            @vehicle.set_copart_action_code(app_config.copart_action_codes["lot_closed_action"])
          end
        end
      end # end if @vehicle.valid?

      # this should happen before @vehicle.save
      advance_charges_modified = advance_charges_modified?(@vehicle)
      advance_charges_paid_changed = @vehicle.advance_charge_paid_changed?  
      if transition_successful && @vehicle.save
        move_lot_successful = true
        
        #Synked Completed Service Orders with SAP
        logger.info("Calling Service Order synup method for lot #{@vehicle.lot_num} from move_lot action of vehicle controller")        
        @vehicle.sync_service_order_with_SAP

        logger.info("lot transition successful for vehicle with ID: #{@vehicle.id}")
        if params[:sell_now] == true          
          # logger.info("SELL_NOW, start to update auction_date for vehicle_id: #{@vehicle.id}")

          # if @vehicle.auction_datum.present? && @vehicle.auction_datum.auction_date.present?
          #   #logger.debug("SELL_NOW, auction_datum present: #{@vehicle.auction_datum.inspect}")
          #   @vehicle.auction_datum.update_column(:auction_date, @vehicle.auction_datum.auction_date)
          # else
          #   #logger.debug("SELL_NOW, auction_datum: #{@vehicle.auction_datum.inspect}")
          #   AuctionDatum.create(auction_date: Date.today, vehicle_id: @vehicle.id)
          # end

          # Add a system note indicating that the lot was sold now (outside of an auction).
          logger.info("SELL_NOW, start to update note for vehicle_id: #{@vehicle.id}")
          @vehicle.add_note(Note::VEHICLE_STATE_CHANGE, NoteType::NOTE_TYPE_CODE_LOT,
                            I18n.t("controllers.vehicle.notes.lot_sold_now"), current_employee, true)
        end

        # Add a system note indication the state transition.
        note = @vehicle.add_note(Note::VEHICLE_STATE_CHANGE, NoteType::NOTE_TYPE_CODE_LOT,
                                 I18n.t("controllers.vehicle.move_lot_success", state_name: "'#{@vehicle.state_display_text}'"),
                                 current_employee, true)
        # Add a snapshot of the state on transition.
        note.update_attributes(snapshot_state: @vehicle.state) if note.present?

        # If we entered trip confirmation state, add an appropriate business note.
        if @vehicle.wtg_for_trip_confirmation?
          @vehicle.add_business_note(Note::LOT_DISPATCH,
                                     I18n.t("controllers.vehicle.notes.lot_dispatched_to_subhauler", subhauler: @vehicle.subhauler.provider_name),
                                     current_employee)
        end

        # If we entered buyer billing the let's set the
        # sale confirmed flag to true and date to today
        if @vehicle.wtg_for_buyer_charge_confirmation?
          @vehicle.confirm_sale!
          # If the high bid is a figs 'sale now' bid then
          # let's add the amount / member now (we don't know
          # this data when sale now happens)
          last_bid = @vehicle.bid_histories.empty? ? BidHistory.new : @vehicle.bid_histories.first
          if last_bid.bid_type.present? && (last_bid.bid_type.code == BidType::FIGS_SALE_NOW_CODE)
            last_bid.member_id = @vehicle.member_id
            last_bid.bid_amount = @vehicle.high_bid_amount
            last_bid.bid_time = Time.now.utc
            last_bid.auction_date = Time.now.utc.to_date
            last_bid.save
          end
        end

        # Let's trigger the sending to SAP if we transitioned
        # out of a state that would require that.
        #
        # Please note that "advance_charges_modified" here is
        # a variable declared above that is set by calling the
        # similarly named method: advance_charges_modified?(lot).
        #
        # (done because record is already saved at this point)
        #
        pickup_location_is_not_residence = @vehicle.pickup_location.present? && !@vehicle.pickup_location.residence?
        if starting_state_as_string == "wtg_to_clear_pickup"
          # Send initial advance charges if they exist
          if @vehicle.advance_charge.present? &&
             @vehicle.advance_charge.total_charges.present? && 
             @vehicle.advance_charge.total_charges > 0
            @vehicle.add_audit_note_with_content("Processing initial advance charges", Note::SAP_AUDIT_LOG_NOTE)
            @vehicle.send_advance_charges_to_sap('vendor')
          end
        elsif starting_state_as_string == "wtg_for_driver_dispatch"
          # If advance charge values changed send delta
          if advance_charges_modified
            @vehicle.add_audit_note_with_content("Processing modified advance charges (transitioning out of driver dispatch)", Note::SAP_AUDIT_LOG_NOTE)
            @vehicle.send_advance_charges_to_sap('vendor', true)
          end
        elsif starting_state_as_string == "wtg_for_trip_confirmation"
          # If advance charge values changed send delta
          if advance_charges_modified
            @vehicle.add_audit_note_with_content("Processing modified advance charges (transitioning out of trip confirmation)", Note::SAP_AUDIT_LOG_NOTE)
            @vehicle.send_advance_charges_to_sap('vendor', true)
          end
          # Send final advance charges if they exist
          if @vehicle.advance_charge.present? &&
             @vehicle.advance_charge.total_charges.present? && 
             @vehicle.advance_charge.total_charges > 0
            # Send seller invoice of advance charges
            @vehicle.add_audit_note_with_content("Processing final advance charges", Note::SAP_AUDIT_LOG_NOTE)
            @vehicle.send_advance_charges_to_sap('seller')
          end
        elsif starting_state_as_string == "wtg_for_inventory"
          if(!@vehicle.pickup_required? && @vehicle.advance_charge.present? &&
             @vehicle.advance_charge.total_charges.present? && 
             @vehicle.advance_charge.total_charges > 0)
            @vehicle.add_audit_note_with_content("Processing final advance charges", Note::SAP_AUDIT_LOG_NOTE)          
            @vehicle.send_advance_charges_to_sap('vendor')
          end 
          if !(@vehicle.advance_charge.present? &&
             @vehicle.advance_charge.total_charges.present? && 
             @vehicle.advance_charge.total_charges > 0)
            @vehicle.add_audit_note_with_content("Sending only header data", Note::SAP_AUDIT_LOG_NOTE)          
            @vehicle.send_advance_charges_to_sap('vendor')
          end
        elsif starting_state_as_string == "wtg_for_sale_confirmation"
          # Send/sync updated Purchase Price/Residual Value with SAP
          @vehicle.add_audit_note_with_content("Syncing updated Purchase Price/Residual Value", Note::SAP_AUDIT_LOG_NOTE)          
          @vehicle.send_advance_charges_to_sap('vendor', true, true)
        elsif starting_state_as_string == "wtg_for_buyer_charge_confirmation"
          # Send buyer charges
          @vehicle.add_audit_note_with_content("Processing buyer charges (transitioning out of buyer billing)", Note::SAP_AUDIT_LOG_NOTE)
          @vehicle.send_buyer_charges_to_sap
        elsif starting_state_as_string == "ready_for_seller_billing"
          # Send seller charges
          @vehicle.add_audit_note_with_content("Processing seller charges (transitioning out of seller billing)", Note::SAP_AUDIT_LOG_NOTE)
          @vehicle.send_seller_charges_to_sap
        end
      end 
     
      if !move_lot_successful
        logger.error("Move lot failed, will roll back transaction,  @vehicle.errors ? #{@vehicle.errors.as_json}")
        raise ActiveRecord::Rollback, "Should roll back everything"
      end
    end # end of transaction

 
    if move_lot_successful
      respond_to do |format|
        format.html { redirect_to edit_vehicle_path(@vehicle) }
        format.json { render json: { location: vehicles_url(state_as_string: starting_state_as_string),
                                     vehicle: @vehicle,
                                     message: I18n.t("controllers.vehicle.move_lot_success",
                                                     state_name: @vehicle.state_display_text) }, 
                             status: :created }
      end
    else
      # normal validation errors
      logger.info("Danger Will Robinson, lot transition failed.")
      @vehicle.errors.messages.merge!(associated_errors)
      add_additional_errors(@vehicle, params)
      @vehicle.errors.messages.merge!(transition_errors)
      logger.info("Errors exist: #{@vehicle.errors.messages}")
      # Part of performance tuning, In UI we are using lot object only to see service order errors. So, include only service orders.
      # We don't need extra data in JSON.
      #@vehicle.reload
      respond_to do |format|
        format.html { render action: :edit }
        format.json { render json: { vehicle: @vehicle.as_json(include_service_orders_basic: "yes", exclude_unwanted_keys: "yes"),
                                     errors: @vehicle.errors }, 
                             status: :unprocessable_entity }
      end
    end
  end


  # PUT /vehicles/assign_tow_provider
  #
  # this method assigns a tow provider to the given lots
  # for the given pickup date and moves the lots from
  # driver dispatch to waiting for trip confirmation.
  #
  # three params must be present for this:
  #   lots: an array of lots to act on
  #   tow_provider: the Subhauler (tow provider) to use
  #   trip_date: the date 
  def assign_tow_provider
    # try to load the subhauler now as not being able to do so is
    # as bad as having a nil param for tow_provider.
    subhauler = Subhauler.find_by_id(params[:tow_provider][:id]) unless params[:tow_provider].nil?
    # Return errors immediately if the required params are not present
    if params[:lots].nil? || subhauler.nil? || params[:tow_provider].nil? || params[:trip_date].nil?
      # build the errors
      # (these are different from lot level errors, hense the following)
      errors = {}
      errors[:lots] = [ I18n.t("views.shared.assign_tow_provider.errors.lots") ] if params[:lots].nil?
      errors[:tow_provider] = [ I18n.t("views.shared.assign_tow_provider.errors.tow_provider") ] if subhauler.nil? || params[:tow_provider].nil?
      errors[:trip_date] = [ I18n.t("views.shared.assign_tow_provider.errors.trip_date") ] if params[:trip_date].nil?
      # log the errors
      logger.info("errors present: #{errors}")
      # respond
      respond_to do |format|
        format.html { redirect_to vehicles_url(state_as_string: Vehicle::WAITING_FOR_DRIVER_DISPATCH) }
        format.json { render json: { errors: errors }, 
                             status: :unprocessable_entity }
      end
      return
    end
    # so we have the needed params, let's do stuff
    failed_lot_ids = [] # to keep track of lots that fail
    successful_lot_ids = [] # to keep track of lots that awesome
    # loop through our lots and...
    params[:lots].each do |json_lot|
      lot = Vehicle.find_by_id(json_lot[:id])
      if lot.nil?
        # we're not adding to the failed_lots in this case b/c the lot
        # we tried to load isn't valid at all, so stating that it failed
        # is somewhat meaningless
        logger.info("lot provided in tow provider mass assign does not have a valid id.")
        next
      end
      # ...set the tow provider, then...
      lot.subhauler = subhauler
      # ...set the trip date, which means we can...
      lot.pickup_date = params[:trip_date]
      # ...attempt to transition
      if lot.transition && lot.save
        # well hot damn!
        logger.info("lot transition successful for vehicle with ID: #{lot.id}")
        successful_lot_ids << lot.id
        lot.reload
        # add the auto note for tow provider assignment
        lot.add_business_note(Note::LOT_DISPATCH,
                              I18n.t("controllers.vehicle.notes.lot_dispatched_to_subhauler", subhauler: lot.subhauler.provider_name),
                              current_employee)
        # add a system note indication the state transition.
        note = lot.add_note(Note::VEHICLE_STATE_CHANGE, NoteType::NOTE_TYPE_CODE_LOT,
                            I18n.t("controllers.vehicle.move_lot_success", state_name: "'#{lot.state_display_text}'"),
                            current_employee, 
                            true)
        # Add a snapshot of the state on transition.
        note.update_attributes(snapshot_state: lot.state) if note.present?
      else
        logger.info("lot transition FAILED for vehicle with ID: #{lot.id}")
        # sad panda adds failed lots to the array
        failed_lot_ids << lot.id
      end
    end
    # we always return successful response, if any lots failed to
    # transistion they will be in the given 'failed_lots' property
    respond_to do |format|
      format.html { redirect_to vehicles_url(state_as_string: Vehicle::WAITING_FOR_DRIVER_DISPATCH) }
      format.json { render json: { failed_lot_ids: failed_lot_ids, 
                                   successful_lot_ids: successful_lot_ids }, 
                           status: :created }
    end
  end


  # PUT /vehicles/:id/cancel_lot
  def cancel_lot
    # @vehicle is retrieved in before_filter acquire_vehicle
    starting_state = @vehicle.state
    transition_errors = {}
    @vehicle.handle_conflicts(params[:last_updated_at])
    if @vehicle.errors.has_key?(:update_conflict)
      previous_state = params[:state]
      if @vehicle.state != previous_state
        redirect_url = edit_vehicle_url(@vehicle) + "?redirect_conflict=true"
        logger.info("there is a update conflict, vehicle state has also transationed, redirect to the eidt page")
        respond_to do |format|
          format.html { redirect_to edit_vehicle_url(@vehicle)  and return}
          format.json { render json: { errors: @vehicle.errors, vehicle: @vehicle.as_json(include_all: "yes"), prev_state: previous_state,
                                       location: redirect_url, message: I18n.t("controllers.vehicle.move_lot_success",
                                       state_name: @vehicle.state_display_text) }, 
                                       status: :unprocessable_entity  and return}
        end
      else
        # there is a conflict but there is no state change, this is the main update conflict flow
        logger.info("update_conflict Errors exist: #{@vehicle.errors["update_conflict"]}")
        respond_to do |format|
          format.html { render action: :new  and return }
          format.json { render json: { errors: @vehicle.errors, vehicle: @vehicle.as_json(include_all: "yes") }, 
                                 status: :unprocessable_entity  and return }
        end
      end
    end

    cancel_success = false
    Vehicle.transaction do
      if starting_state == "ready_for_auction" && @vehicle.auction_datum.present? && @vehicle.auction_datum.auction_date.present?
        @vehicle.set_copart_action_code(app_config.copart_action_codes["remove_from_auction"])
      end
      # If this is a clean cancel, we don't care about the validations
      if !@vehicle.wtg_to_clear_pickup? || (@vehicle.wtg_to_clear_pickup? && @vehicle.has_completed_service_orders?)
        permitted_params = vehicle_params
        @vehicle.assign_attributes(permitted_params)
        @vehicle.update_associations(permitted_params)
      end

      if @vehicle.may_cancel?
        @vehicle.transition(:cancel)
        @vehicle.set_abnormal_close_type_and_add_note(starting_state, current_employee)
      end

      # we need to trigger validation
      if (@vehicle.canceled? || @vehicle.ready_for_seller_billing?) && @vehicle.save
        cancel_success = true
        # if it was allowed to cancel and the cancel happened from sale confirmation
        # (so post auction) let Aurora know about it
        if starting_state.to_sym == :wtg_for_sale_confirmation
          # well... only let them know about it if the lot wasn't a sale now from
          # within FIGS, as these lots aren't in Aurora anyway.
          last_bid = @vehicle.bid_histories.empty? ? BidHistory.new : @vehicle.bid_histories.last
          if last_bid.bid_type.present? &&
             last_bid.bid_type.code != BidType::FIGS_SALE_NOW_CODE
            @vehicle.set_copart_action_code(app_config.copart_action_codes["post_auction_cancel_actions"])
          end
          @vehicle.update_attributes(high_bid_amount: BigDecimal.new("0.00"))
        end
      end # (@vehicle.canceled? || @vehicle.ready_for_seller_billing?)

      if !cancel_success
        logger.error("Cancel vehicle failed, will roll back transaction... @vehicle.errors ? #{@vehicle.errors.as_json}")
        raise ActiveRecord::Rollback, "Should roll back everything"
      end
    end # end of transaction

    if cancel_success # validations pass and there is errors, commited to database and there is no rollback!
      respond_to do |format|
        format.html { redirect_to edit_vehicle_path(@vehicle) }
        format.json { render json: { location: vehicles_url(state_as_string: starting_state),
                                     message: I18n.t("controllers.vehicle.cancel_lot_success",
                                     state_name: @vehicle.state_display_text) },
                             status: :created }
      end
    else
      logger.error("Errors exist: #{@vehicle.errors.messages}")
      respond_to do |format|
        format.html { render action: :edit }
        format.json { render json: { errors: @vehicle.errors, vehicle: @vehicle.as_json(include_all: "yes") },
                             status: :unprocessable_entity }
      end
    end
  end

  # PUT /vehicles/:id/rerun_lot
  def rerun_lot
    # @vehicle is retrieved in before_filter acquire_vehicle
    @vehicle.handle_conflicts(params[:last_updated_at])
    if @vehicle.errors.has_key?(:update_conflict)
      previous_state = params[:state]
      if @vehicle.state != previous_state
        redirect_url = edit_vehicle_url(@vehicle) + "?redirect_conflict=true"
        logger.info("there is a update conflict, vehicle state has also transationed, redirect to the eidt page, redirect_url #{redirect_url}")        
        respond_to do |format|
          format.html { redirect_to edit_vehicle_url(@vehicle)  and return}
          format.json { render json: { errors: @vehicle.errors, vehicle: @vehicle.as_json(include_all: "yes"), prev_state: previous_state,
                                       location: redirect_url, message: I18n.t("controllers.vehicle.move_lot_success",
                                       state_name: @vehicle.state_display_text) }, 
                                       status: :unprocessable_entity  and return}
        end
      else
        # there is a conflict but there is no state change, this is the main update conflict flow
        logger.info("update_conflict Errors exist: #{@vehicle.errors["update_conflict"]}")
        respond_to do |format|
          format.html { render action: :new  and return }
          format.json { render json: { errors: @vehicle.errors, vehicle: @vehicle.as_json(include_all: "yes")}, 
                                 status: :unprocessable_entity  and return }
        end
      end
    end

    starting_state = @vehicle.state
    transition_errors = {}
    transitioned = false
    saved = false
    
    Vehicle.transaction do
      permitted_params = vehicle_params
      @vehicle.assign_attributes(permitted_params)
      @vehicle.update_associations(permitted_params)

      # Save auction date in 'old_auction_date' and delete auction date.
      # Save item number in 'old_item_num' and blank out item number.
      # Important: this must be done before transition as having an auction
      #            date will prevent rerun when the lot has no images.
      if @vehicle.auction_datum.present? && @vehicle.auction_datum.auction_date.present?
        @vehicle.old_auction_date = @vehicle.auction_datum.auction_date
      end
      @vehicle.auction_datum.destroy if @vehicle.auction_datum.present?
      @vehicle.old_item_num = @vehicle.item_num
      @vehicle.auction_datum = nil # Otherwise item_num validation will kick in
      @vehicle.item_num = nil

      # Rerunning a lot requires approval.
      if params[:approved_by].blank?
        @vehicle.errors.add(:rerun_approved_by_missing, I18n.t("views.shared.rerun_approved_by_missing"))
      end

      if (@vehicle.transition(:prepare_for_auction) &&
          @vehicle.valid?)
        transitioned = true

        old_high_bid_amount = @vehicle.high_bid_amount.blank? ? BigDecimal.new(0) : @vehicle.high_bid_amount
        @vehicle.high_bid_amount = nil #BigDecimal.new(0) if we do 0 it shows as 0 on the UI, which I believe is undesired.

        @vehicle.member = nil # we don't want the old winner to show up if award lot is done (via auction results it would overwrite anyway)

        @vehicle.set_copart_action_code(app_config.copart_action_codes["figs_is_rerunning"])

        # Increment the rerun counter by 1.
        @vehicle.number_of_reruns += 1

        if @vehicle.save
          saved = true
          approved_by = params[:approved_by].strip.downcase.gsub(/\b([a-z])/, &:upcase)
          currency_symbol = @vehicle.currency_symbol
          formatted_high_bid_amount = currency_symbol.present? ?
                                        number_to_currency(old_high_bid_amount, precision: 2, unit: currency_symbol) :
                                        number_to_currency(old_high_bid_amount, precision: 2)
          @vehicle.add_note(Note::VEHICLE_STATE_CHANGE, NoteType::NOTE_TYPE_CODE_LOT,
                            I18n.t("system_notes.user_activity.lot_rerun",
                                   approved_by: approved_by,
                                   high_bid_amount: formatted_high_bid_amount),
                            current_employee, true)

        end 
      end

      if !saved || !transitioned
        logger.error("Rerun vehicle failed, will roll back transaction @vehicle.errors ? #{@vehicle.errors.as_json}")
        raise ActiveRecord::Rollback, "Should roll back everything"
      end
    end # end of transaction

    if saved
      # Reload should only be done once save is done in order not to override local changes
      @vehicle.reload

      respond_to do |format|
      format.html { redirect_to edit_vehicle_url(@vehicle) }
      format.json { render json: { location: vehicles_url(state_as_string: starting_state), 
                                    message: I18n.t("controllers.vehicle.rerun_lot_success",
                                                      state_name: @vehicle.state_display_text) },
                             status: :created }
      end
    else # this is normal validation error 
      respond_to do |format|
        format.html { render :edit }
        format.json { render json: { errors: @vehicle.errors },
                             status: :unprocessable_entity }
      end
    end
  end

  # PUT /vehicles/:id/relist_lot
  def relist_lot
    # @vehicle is retrieved in before_filter acquire_vehicle
    @vehicle.handle_conflicts(params[:last_updated_at])
    if @vehicle.errors.has_key?(:update_conflict)
      previous_state = params[:state]
      if @vehicle.state != previous_state
        redirect_url = edit_vehicle_url(@vehicle) + "?redirect_conflict=true"
        logger.info("Relist update conflict, vehicle state has also transationed, redirect to the eidt page, redirect_url #{redirect_url}")
        respond_to do |format|
          format.html { redirect_to edit_vehicle_url(@vehicle) }
          format.json { render json: { errors: @vehicle.errors, vehicle: @vehicle.as_json(include_all: "yes"), prev_state: previous_state,
                                       location: redirect_url, message: I18n.t("controllers.vehicle.move_lot_success",
                                       state_name: @vehicle.state_display_text) }, 
                                       status: :unprocessable_entity }
        end
      else
        logger.info("update_conflict Errors exist: #{@vehicle.errors["update_conflict"]}")
        respond_to do |format|
          format.html { render action: :new }
          format.json { render json: { errors: @vehicle.errors, vehicle: @vehicle.as_json(include_all: "yes") }, 
                               status: :unprocessable_entity }
        end
      end
      return
    end

    starting_state = @vehicle.state
    transition_errors = {}
    vehicle_saved = false
    cloned_vehicle_saved = false
    cloned_vehicle = nil

    Vehicle.transaction do
      permitted_params = vehicle_params
      @vehicle.assign_attributes(permitted_params)
      @vehicle.update_associations(permitted_params)
      use_copart_default_seller = (params[:account] =~ /^copart$/i)
      copart_default_seller =
        if use_copart_default_seller
          if @vehicle.facility.present? && @vehicle.facility.country.present?
            Seller.where(copart_default: true, country_id: @vehicle.facility.country.id).first
          else
            Seller.where(copart_default: true).first
          end
        else
          nil
        end
      if use_copart_default_seller && copart_default_seller.nil?
        @vehicle.errors.add(:cloned_vehicle_error, I18n.t("views.shared.relist.default_copart_seller_missing"))
      end

      @vehicle.set_copart_action_code(app_config.copart_action_codes["figs_relist"])

      # Flag to indicate to AASM guard (and anything else we want in the model)
      # that vehicle is about to be closed because of this relist.
      @vehicle.bypass_validations_because_of_relist = true

      # Since we're bypassing validations, let's reset the left yard date if
      # it's in the future (since that's not allowed).
      if @vehicle.left_yard_date_changed? && (@vehicle.left_yard_date > Date.today)
        @vehicle.left_yard_date = nil
      end

      if @vehicle.may_close? && @vehicle.valid? && !@vehicle.relisted?
        new_seller = (use_copart_default_seller && copart_default_seller.present?) ? copart_default_seller : @vehicle.seller
        begin
          cloned_vehicle = @vehicle.may_close? ? @vehicle.generate_clone_for_relist(new_seller) : Vehicle.new
          logger.info("*****Lot #{cloned_vehicle.lot_num} in state #{cloned_vehicle.state} may prepare for auction? #{cloned_vehicle.ready_for_auction?}****")
          # Lot is already transitioned to auction and have to check whether it is ready for auction or not
          if (cloned_vehicle.persisted? && cloned_vehicle.ready_for_auction?)
            cloned_vehicle_saved = true
            # These attributes on the cloned vehicle have to be set to nil AFTER the
            # transition to Auction Lots because they are no longer required in that
            # state (but they ARE required in the Settlement Confirmation state).
            cloned_vehicle.update_attributes(high_bid_amount: nil, member_id: nil, sale_confirmation_status_id: nil)
            # If seller is Copart default seller, set adjuster to nil
            # (bypassing validations or it won't save). Also set advance_charge_paid to false.
            if use_copart_default_seller && copart_default_seller.present?
              cloned_vehicle.update_attributes(advance_charge_paid: false)
              cloned_vehicle.update_attribute(:adjuster, nil)
            else
              cloned_vehicle.update_attributes(advance_charge_paid: @vehicle.advance_charge_paid)
            end
            # Add lot note to the relisted lot linking it to the old lot.
            cloned_lot_msg = I18n.t("system_notes.user_activity.new_lot_relisted",
                                    original_lot_num: "<a href='#{vehicle_url(@vehicle)}' target='_blank' style='color:#0099FF;'>##{@vehicle.lot_num}</a>",
                                    original_seller: "<a href='#{edit_seller_url(@vehicle.seller)}' target='_blank' style='color:#0099FF;'>#{@vehicle.seller.name}</a>",
                                    new_seller: "<a href='#{edit_seller_url(cloned_vehicle.seller)}' target='_blank' style='color:#0099FF'>#{cloned_vehicle.seller.name}</a>")
            note = cloned_vehicle.add_note(Note::RECORD_CREATE, NoteType::NOTE_TYPE_CODE_LOT,
                                           cloned_lot_msg, current_employee, true)
            if note.present?
              now = Time.zone.now
              note.update_attributes_without_timestamps(created_at: now + 1.second, updated_at: now + 1.second)
            end


            @vehicle.left_yard_date = Time.zone.now.to_date
            # Set relist to true before closing out (transitioning) original lot so validations are bypassed.
            @vehicle.relisted = true
            @vehicle.transition(:close)
            #@vehicle.save
            # We don't care if this save fails when for rolling back.
            if @vehicle.persisted?
              # Add lot note to original lot linking it to the (new) relisted lot.
              original_lot_msg = I18n.t("system_notes.user_activity.original_lot_relisted",
                                        new_lot_num: "<a href='#{vehicle_url(cloned_vehicle)}' target='_blank' style='color:#0099FF;'>##{cloned_vehicle.lot_num}</a>",
                                        original_seller: "<a href='#{edit_seller_url(@vehicle.seller)}' target='_blank' style='color:#0099FF;'>#{@vehicle.seller.name}</a>",
                                        new_seller: "<a href='#{edit_seller_url(cloned_vehicle.seller)}' target='_blank' style='color:#0099FF'>#{cloned_vehicle.seller.name}</a>")
              @vehicle.add_note(Note::RECORD_UPDATE, NoteType::NOTE_TYPE_CODE_LOT,
                                original_lot_msg, current_employee, true)
              # Add a system note indication the state transition.
              @vehicle.add_note(Note::VEHICLE_STATE_CHANGE, NoteType::NOTE_TYPE_CODE_LOT,
                                I18n.t("controllers.vehicle.move_lot_success", state_name: "'#{@vehicle.state_display_text}'"),
                                current_employee, true)
              # @vehicle.bypass_validations_because_of_relist = false
            end
          end # end of clone_vehicle.save
        rescue
          logger.error("Lot #{@vehicle.lot_num} cloning in progress")
        end
      end # end of @vehicle.save

      vehicle_saved = @vehicle.save
      if !vehicle_saved || !cloned_vehicle_saved 
        logger.error("****Cloned Lot #{cloned_vehicle_saved.inspect}")
        logger.error("Relist vehicle failed, will roll back transaction, @vehicle.errors ? #{@vehicle.errors.as_json}")
        raise ActiveRecord::Rollback, "Should roll back everything"
      end
    end # end of transaction

    if vehicle_saved && cloned_vehicle_saved && @vehicle.persisted?
      logger.info("Relist successful - both original and cloned vehicles are saved...") 
      respond_to do |format|
        format.html { redirect_to vehicle_url(cloned_vehicle) }
        format.json { render json: { location: vehicle_url(cloned_vehicle),
                                     message: I18n.t("views.shared.relist.relist_lot_success",
                                                     state_name: cloned_vehicle.state_display_text) },
                             status: :created }
      end
    elsif vehicle_saved && cloned_vehicle_saved && !@vehicle.persisted?
      cloned_vehicle.destroy if cloned_vehicle.present? && cloned_vehicle.persisted?
      @vehicle.errors.add(:cloned_vehicle_error, I18n.t("views.shared.relist.relist_lot_failed"))
      logger.info("Original lot errors found: #{@vehicle.errors.messages}") unless @vehicle.errors.empty?
      if cloned_vehicle.present? && !cloned_vehicle.errors.empty?
        logger.info("Cloned lot errors found: #{cloned_vehicle.errors.messages}")
      end
      @vehicle.bypass_validations_because_of_relist = false

      respond_to do |format|
        format.html { render :edit }
        format.json { render json: { vehicle: @vehicle.as_json(include_service_orders: "yes"),
                                     errors: @vehicle.errors },
                             status: :unprocessable_entity }
      end
    elsif vehicle_saved && !cloned_vehicle_saved
      cloned_vehicle_errors = cloned_vehicle.present? ? cloned_vehicle.errors : nil
      cloned_vehicle.destroy if cloned_vehicle.present? && cloned_vehicle.persisted?
      @vehicle.errors.add(:cloned_vehicle_error, I18n.t("views.shared.relist.relist_lot_failed"))

      logger.info("Original lot errors found: #{@vehicle.errors.messages}") unless @vehicle.errors.empty?
      if cloned_vehicle.present? && !cloned_vehicle.errors.empty?
        logger.info("Cloned lot errors found: #{cloned_vehicle.errors.messages}")
      end
      @vehicle.bypass_validations_because_of_relist = false

      respond_to do |format|
        format.html { render :edit }
        format.json { render json: { vehicle: @vehicle.as_json(include_service_orders: "yes"),
                                     errors: cloned_vehicle_errors },
                             status: :unprocessable_entity }
      end
    else # everything failed here
      if @vehicle.relisted?
        @vehicle.errors.add(:already_relisted_error, I18n.t("views.shared.relist.already_relisted"))
      end
      @vehicle.bypass_validations_because_of_relist = false

      logger.info("relist failed : #{@vehicle.errors.messages}") unless @vehicle.errors.empty?
      respond_to do |format|
        format.html { render :edit }
        format.json { render json: { vehicle: @vehicle.as_json(include_service_orders: "yes"),
                                     errors: @vehicle.errors },
                             status: :unprocessable_entity }
      end
    end
  end

  # PUT /vehicles/:id/unlock_lot
  def unlock_lot

    message = I18n.t("views.shared.unlock.unlock_lot_success")
    status = :created
    if params[:unlock_type] == "lot_not_in_auction"
      @vehicle.update_column(:copart_action_code, app_config.copart_action_codes["no_action_required"])
      auction_datum = AuctionDatum.where(vehicle_id: @vehicle.id).first
      if auction_datum
        auction_datum.auction_date = nil
        if(!auction_datum.save)
          @vehicle.errors.add(:unlock_vehicle_error, I18n.t("views.shared.unlock.unlock_lot_failed"))
          status = :unprocessable_entity
          message = ""
        end
      end
    elsif params[:unlock_type] == "lot_with_no_auction_result"
      @vehicle.auction_datum.auction_date = nil
      @vehicle.copart_action_code = -1
      if(!@vehicle.save)
        @vehicle.errors.add(:unlock_vehicle_error, I18n.t("views.shared.unlock.unlock_lot_failed"))
        status = :unprocessable_entity
        message = ""
      end  
    end  
    respond_to do |format|
      format.html { redirect_to edit_vehicle_url(@vehicle, lotredfrm: "unlock") }
      format.json { render json: {  location: edit_vehicle_url(@vehicle, lotredfrm: "unlock"),
                                    message: message,
                                    errors: @vehicle.errors },
                                  status: status }
    end
  end
    
  # GET /vehicles/:id/pickup_order
  def pickup_order
    # @vehicle is retrieved in before_action acquire_vehicle
    gon.vehicle = (params[:blank] == "true") ? Vehicle.new : @vehicle.as_json(include_all: 'yes', include_bid_histories: 'no')
    gon.chargesOk = I18n.t("views.pickup_order.charges_ok")
    gon.noCharges = I18n.t("views.pickup_order.no_charges")

    gon.dailyStorage = I18n.t("views.vehicle.new.storage_daily")
    gon.flatStorage = I18n.t("views.vehicle.new.storage_flat")

    respond_to do |format|
      format.html { render layout: "print" } # pickup_order.html.erb
      format.pdf do
        pdf = PickupOrderFormat.new(@vehicle, view_context)
        #pdf.save_as("PICKUPORDER#{@vehicle.lot_num}.pdf")
        #pdf.render_file File.join(Rails.root, 'pickup/', "PICKUPORDER#{@vehicle.lot_num}.pdf")
        send_data pdf.render, filename: "PICKUPORDER#{@vehicle.lot_num}.pdf", type: "application/pdf", disposition: "inline"
      end
    end
  end

  def completed_service_orders_for_lots
    @vehicle = Vehicle.includes(service_orders: :service_order_details).find(params[:id])
    render json: @vehicle.complete_service_orders.as_json(include_service_order_details: 'yes')
  end

  # GET /vehicles/service_orders
  def service_orders
    # check permisison
    # authorize! :index, Vehicle.new
    
    page = params[:page] || 1

    # desired country to load lots for, which should be the
    # current user's country.
    country_id_desired = current_employee.present? ? current_employee.operating_country_id : nil
    
    # desired facility or nil (which is any facility)
    facility_desired = params[:facility_filter_id] || cookies[:facility_filter_id]

    # desired seller or nil (which is any seller)
    seller_desired = params[:seller_filter_id] || cookies[:seller_filter_id]

    # any column not defined in our model is equivalent to "id ASC"
    sort_desired = params[:column_as_string] || cookies[:lot_sort_by_column] || ""

    # the order is ASC unless this parameter specifies "desc"
    sort_order = params[:sort_order] || cookies[:lot_sort_by_order] || ""

    yard_id_desired = params[:yard_filter_id] || cookies[:yard_filter_id] # normal case
    
    @vehicles = Vehicle.for_employee(current_employee)
                       .has_service_order
                       .ordered_by(sort_desired, sort_order, false)
                       .seller(seller_desired)
                       .facility(facility_desired)
                       .yard(yard_id_desired)
                       .country(country_id_desired)
                       .includes([ {model: :make}, :seller, { service_orders: [:service_order_details] }, :yard_row])
                       .page(page)

    # Only get these when loading the html page
    if request.format.html?
      create_country_specific_gon_variables
      gon.sortOptionAscending = Vehicle::SORT_ASCENDING
      gon.sortOptionDescending = Vehicle::SORT_DESCENDING
      gon.showCsvButton = true
    end

    # We always want these
    gon.vehicles = @vehicles.as_json(include_seller: "yes", 
                                     include_service_orders: "yes",
                                     include_vehicle_type: "yes",
                                     include_yard_row: "yes")

    gon.parameters = { "column_as_string" => sort_desired,
                       "facility_filter_id" => facility_desired,
                       "seller_filter_id" => seller_desired, 
                       "sort_order" => sort_order,
                       "yard_filter_id" => yard_id_desired }

    gon.pagination = { current_page: @vehicles.current_page,
                       default_per_page: @vehicles.default_per_page,
                       per_page: @vehicles.count,
                       total_pages: @vehicles.total_pages,
                       total_count: @vehicles.total_count }

    gon.httpSlug = "/service_orders"
    gon.serviceOrderMultiple = I18n.t("views.vehicle.service_order.multiple")
    gon.serviceOrderSeeDetails = I18n.t("views.vehicle.service_order.see_details")

    respond_to do |format|
      format.html { render :index }
      format.json { render json: { vehicles: gon.vehicles, 
                                   parameters: gon.parameters, 
                                   pagination: gon.pagination,
                                   auctionDates: gon.auctionDates } }
    end
  end


  # GET /vehicles/:id/service_orders_print_preview
  #
  def service_orders_print_preview
    @vehicle = Vehicle.find_by_id(params[:id])
    incomplete_service_orders_present =
      @vehicle.service_orders.any? do |so|
        so.service_order_details[0].status.present? &&
         (so.service_order_details[0].status != ServiceOrder::SO_STATUS_COMPLETE) &&
         (so.service_order_details[0].status != ServiceOrder::SO_STATUS_REJECTED)
      end

    if incomplete_service_orders_present
      gon.vehicle = @vehicle.as_json(include_loss_type: "yes",
                                     include_vehicle_type: "yes",
                                     include_primary_damage_type: "yes",
                                     include_seller: "yes")
      gon.service_orders = @vehicle.service_orders.as_json(include_service_order_details: "yes")

      respond_to do |format|
        format.html { render layout: "print" } # service_orders_print_preview.html.erb
      end
    else
      respond_to do |format|
        format.html { redirect_to @vehicle } # Redirect to vehicle show/edit page
      end
    end
  end


  # ajax request to validate if can assign auciton date or not depending on 
  # service orders status and priority
  # GET /vehicles/:id/allow-assign-auction-date.json
  def allow_assign_auction_date
    if params[:id].present? 
      vehicle = Vehicle.find_by_id(params[:id])
     
      if vehicle.present? 
        vehicle.validate_can_assign_auction_date()
      end

      if vehicle.errors.empty?
        respond_to do |format|
          format.json { render json: { vehicle: vehicle.as_json() } }
        end
      else
        respond_to do |format|
          format.json { render json: { errors: vehicle.errors, vehicle: vehicle.as_json(include_service_orders: "yes") },
                               status: :unprocessable_entity }
        end
      end
    else
      respond_to do |format|
        format.json { render json: { success: false, errors: [ "Vehicle not found." ] } }
      end
    end
  end


  def get_additional_vehicle_params
    additional_params = {}
    buy_now = params[:buy_now].to_f
    reserve = params[:min_bid_reserve].to_f
    # Per Vinnie via Lisa:
    #   Vinnie wanted them treated separately and not have any restraints. 
    #   Reserve can be more than Buy It Now. The reasoning is some Sellers 
    #   may be willing to take a little less to get the funds sooner, but 
    #   if they have to wait for Live Auction they want more. 
    buy_it_now_eligible_value = (buy_now > 0) #&& ((buy_now - reserve) >= 0)
    additional_params = { buy_it_now_eligible: buy_it_now_eligible_value }

    # Car count
    if params[:yard].present?
      yard = Yard.find_by_id(params[:yard][:id])
      if yard.present?
        next_num = yard.get_next_vehicle_sequence_num
        additional_params.merge!(yard_vehicle_count: next_num)
      end
    end

    additional_params
  end


  # DELETE /vehicles/:id
  # DELETE /vehicles/:id.json
  def destroy
    # @vehicle is retrieved in before_filter acquire_vehicle
    @vehicle.destroy

    if @vehicle.destroyed?
      logger.info("deleted Vehicle #{@vehicle.id}.")
      respond_to do |format|
        format.html { redirect_to vehicles_path }
        format.json { render json: { success: true, vehicle: @vehicle } }
      end
    else
      logger.error("Cannot delete Vehicle #{@vehicle.id}.")
      flash.now[:alert] = I18n.t("controllers.vehicle.flash_message.can_not_delete")
      respond_to do |format|
        format.html { render :show }
        format.json { render json: { success: false, 
                                     vehicle: @vehicle,
                                     msg: (@vehicle.errors.present? ?
                                           @vehicle.errors.full_messages :
                                           I18n.t("controllers.vehicle.flash_message.can_not_delete")) } }
      end
    end
  end


  private

    def parse_member_country_state(member)
      return {} if (member.blank? || member.physicalAddress.blank? || member.physicalAddress.stateType.blank?)
      country = gon.countries.find {|country| country[:a3code] == member.physicalAddress?.countryType?.code }
      state = country[:states].present? ? country[:states].find {|state| state[:code] == member.physicalAddress?.stateType?.code } : nil
      {
        id: member.present? ? member.id : '',
        state: state.nil? ? '' : state[:display_text],
        country: country.nil? ? '' : country[:display_text]
      }
    end

    def fill_members_data(member)
      {
        member_uid: member.present? ? member[:id] : '', 
        state: member.present? ? member[:state] : '',
        country: member.present? ? member[:country] : ''
      }
    end
    
    def acquire_vehicle
      @vehicle = Vehicle.includes([{yard: {facility: {address: {country: :states}}}}, :service_orders]).find_by_id(params[:id])
      if @vehicle.nil? || !@vehicle.interaction_allowed_for_employee?(current_employee)
        respond_to do |format|
          format.html { redirect_to vehicles_path }
          format.json { render json: { errors: I18n.t("controllers.vehicle.flash_message.not_found"),
                                       status: :unprocessable_entity } }
        end
        return
      end
    end

    # Some validation errors occur at a level our UI does
    # not expect.  For these cases we must manually add the
    # errors where the UI (JS) expects them.
    #
    # For example, Owner.  An Owner is created when a lot's
    # Seller is an insurance type.  It consists of four fields:
    # first name, last name, contact number, and alt number.
    # If none of these are entered the Contact that belongs to
    # our Owner that belongs to our Vehicle is nil, and therefore
    # does not throw any errors.  Instead the "contact required"
    # error is thrown at the Owner level, but this is not an
    # error our UI is set up to display (as we only show errors
    # directly associated to fields).  So we add errors to the
    # the properties directly here so the user understands the
    # issue.
    #
    def add_additional_errors(vehicle, params)
      # Add make missing error (if we should)
      if (params[:make_missing] == true) && !vehicle.custom_make_enabled?
        vehicle.errors.messages[:make] = [ I18n.t("views.shared.required") ]
      end

      # Add member_email error if member (buyer) is missing.
      if vehicle.errors.messages[:member_id].present?
        vehicle.errors.messages[:member_email] = [ I18n.t("models.vehicle.errors.required") ]
      end

      # Owner - if a validation error exists and its cause is
      #         missing Owner or missing Owner->Contact add
      #         errors to the required contact fields.
      #
      if vehicle.owner.present? && vehicle.owner.company.nil? && vehicle.errors.messages[:"owner.company"].present?
        vehicle.errors.messages[:"owner.company_name"] = [ I18n.t("views.shared.required") ]
        vehicle.errors.messages[:"owner.vat_id"] = [ I18n.t("views.shared.required") ]
      end
      if vehicle.owner.nil?
        # This is a second if condition so the elsif below only
        # fires when an owner exists
        if vehicle.errors.messages[:owner].present?
          vehicle.errors.messages[:"owner.company"] = [ I18n.t("views.shared.required") ]
        end
      else
        if (vehicle.owner.company? || !vehicle.owner.company?) && vehicle.owner.contact.blank?
          vehicle.errors.messages[:"owner.contact.first_name"] = [ I18n.t("views.shared.required") ]
          vehicle.errors.messages[:"owner.contact.last_name"] = [ I18n.t("views.shared.required") ]
        end
        if vehicle.owner.address.blank? 
          vehicle.errors.messages[:"owner.address.line1"] = [I18n.t("views.shared.required")]
          vehicle.errors.messages[:"owner.address.country"] = [I18n.t("views.shared.required")]
          vehicle.errors.messages[:"owner.address.city"] = [I18n.t("views.shared.required")]
        end
      end
 
      # Insured - if a validation error exists and its cause is
      #         missing Insured or missing Insured->Contact add
      #         errors to the required contact fields.
      #
      if vehicle.insured.present? && vehicle.insured.company.nil? && vehicle.errors.messages[:"insured.company"].present?
        vehicle.errors.messages[:"insured.company_name"] = [ I18n.t("views.shared.required") ]
        vehicle.errors.messages[:"insured.vat_id"] = [ I18n.t("views.shared.required") ]
      end
      if vehicle.insured.nil?
        if vehicle.errors.messages[:insured].present?
          vehicle.errors.messages[:"insured.company"] = [ I18n.t("views.shared.required") ]
        end
      else
        if !vehicle.insured.company? && vehicle.insured.contact.blank?
          vehicle.errors.messages[:"insured.contact.first_name"] = [ I18n.t("views.shared.required") ]
          vehicle.errors.messages[:"insured.contact.last_name"] = [ I18n.t("views.shared.required") ]
        end
        if vehicle.insured.address.blank?
        vehicle.errors.messages[:"insured.address.line1"] = [I18n.t("views.shared.required")]
        vehicle.errors.messages[:"insured.address.country"] = [I18n.t("views.shared.required")]
        vehicle.errors.messages[:"insured.address.city"] = [I18n.t("views.shared.required")]
        end
      end

      if vehicle.errors.messages[:pickup_location].present?
        vehicle.errors.add(:pickup_location_kind, I18n.t("activerecord.errors.models.facility.attributes.kind.blank"))
      end
      
      # Pickup - add errors for missing address/contact cases
      if vehicle.errors.messages[:"pickup_location.address"].present? &&
        vehicle.pickup_location.address.nil?
        vehicle.errors.messages[:"pickup_location.address.city"] = [ I18n.t("views.shared.required") ]
        vehicle.errors.messages[:"pickup_location.address.country"] = [ I18n.t("views.shared.required") ]
        vehicle.errors.messages[:"pickup_location.address.line1"] = [ I18n.t("views.shared.required") ]
        vehicle.errors.messages[:"pickup_location.address.zip"] = [ I18n.t("views.shared.required") ]
      end

      if vehicle.errors.messages[:"pickup_location.contact"].present? &&
         vehicle.pickup_location.contact.nil?
        vehicle.errors.messages[:"pickup_location.contact.primary_phone"] = [ I18n.t("views.shared.required") ]
      end

    end


    def check_pickup_order_permissions
      @vehicle = Vehicle.find_by_id(params[:id])

      redirect_path =
        if @vehicle.nil?
          vehicles_url
        elsif @vehicle.offsite? || @vehicle.wtg_to_clear_pickup? || @vehicle.wtg_for_driver_dispatch?
          vehicle_url(@vehicle, state_as_string: @vehicle.state)
        else
          ""
        end

      if redirect_path.present?
        respond_to do |format|
          format.html { redirect_to redirect_path }
        end
        false
      else
        true
      end
    end

    def tuneup_lots_based_on_state(vehicles, page)
      if @state_desired.blank?
        @vehicles = vehicles.includes([:seller]).page(page)
        @vehicles.as_json({
          include_basic: "yes",
          include_seller_compact: "yes",
          include_facility_basic: "yes",
          include_vehicle_type: "yes",
          include_api_error: 'yes',
          exclude_unwanted_keys: true
        })
      elsif @state_desired == "wtg_to_clear_pickup"
        @vehicles = vehicles.includes([:seller]).page(page)
        @vehicles.each do |vh|           
          vh.hold_for_sale = false if vh.hold_for_sale 
          vh.sale_hold_action_date = nil if vh.sale_hold_action_date.present? 
        end
        @vehicles.as_json({
          include_seller_compact: "yes",
          include_facility_compact: "yes",
          include_vehicle_type: "yes",
          include_api_error: 'yes',
          exclude_unwanted_keys: true
        })
      elsif @state_desired == "wtg_for_driver_dispatch"
        @vehicles = vehicles.includes([{facility: {address: {country: :states}}}]).page(page)
        @vehicles.as_json({
          include_facility_with_address: "yes",
          include_vehicle_type: "yes",
          include_api_error: 'yes',
          exclude_unwanted_keys: true
        })
      elsif @state_desired == "wtg_for_trip_confirmation"
        @vehicles = vehicles.includes([:seller, {facility: {address: {country: :states}}}, :subhauler]).page(page)
        @vehicles.as_json({
          include_seller_compact: "yes",
          include_facility_with_address: "yes",
          include_subhauler: "yes",
          include_vehicle_type: "yes",
          include_api_error: 'yes',
          exclude_unwanted_keys: true
        })
      elsif @state_desired == "wtg_for_inventory"
        @vehicles = vehicles.includes([:seller, :color, :subhauler]).page(page)
        @vehicles.as_json({
          include_seller_compact: "yes",
          include_subhauler: "yes",
          include_color: "yes",
          include_yard_row: "yes",
          include_vehicle_type: "yes",
          include_api_error: 'yes',
          exclude_unwanted_keys: true
        })
      elsif @state_desired == "wtg_for_title"
        @vehicles = vehicles.includes([:seller, {facility: {address: {country: :states}}}]).page(page)
        @vehicles.as_json({
          include_seller_compact: "yes",
          include_vehicle_type: "yes",
          include_facility_with_address: "yes",
          include_api_error: 'yes',
          exclude_unwanted_keys: true
        })
      elsif @state_desired == "ready_for_auction"
        @vehicles = vehicles.includes([:yard, :seller, :run_condition, :auction_datum, :yard_row]).page(page)
        @vehicles.as_json({
          include_seller_compact: "yes",
          include_run_condition: "yes",
          include_vehicle_type: "yes",
          include_auction_datum: "yes",
          include_yard_row: "yes",
          include_api_error: 'yes',
          exclude_unwanted_keys: true
        })
      elsif @state_desired == "wtg_for_sale_confirmation"
        @vehicles = vehicles.includes([:seller, :auction_datum, :sale_confirmation_status]).page(page)
        member_names = Hash[ MemberResource.find_by_ids(@vehicles.map(&:member_id).compact.uniq).map {|member| [member.id, member.full_name] } ]
        gon.showMemberFilter = true
        @vehicles.map{|v| 
          v.as_json(
            include_basic: "yes",
            include_seller_compact: "yes",
            include_vehicle_type: "yes",
            include_auction_datum: "yes",
            include_sale_confirmation_status: "yes",
            include_api_error: 'yes',
            exclude_unwanted_keys: true
          ).merge!(member: {
            id: v.member_id,
            full_name: member_names[v.member_id]
          })
        }
      elsif @state_desired == "wtg_for_buyer_charge_confirmation" || @state_desired == "awaiting_sale_docs"
        @vehicles = vehicles.includes([:seller, :color, :auction_datum]).page(page)
        member_names = Hash[ MemberResource.find_by_ids(@vehicles.map(&:member_id).compact.uniq).map {|member| [member.id, member.full_name] } ]
        gon.showMemberFilter = true
        @vehicles.map {|v| 
          v.as_json({
            include_basic: "yes",
            exclude_unwanted_keys: true,
            include_seller_compact: 'yes',
            include_color: "yes",
            include_vehicle_type: "yes",
            include_api_error: 'yes',
            include_auction_datum: "yes"
          }).merge!(member: {
            id: v.member_id,
            full_name: member_names[v.member_id]
          })
        }
      elsif @state_desired == "ready_for_seller_billing"
        @vehicles = vehicles.includes([:seller, :color, :auction_datum]).page(page)
        @vehicles.as_json({
          include_basic: "yes",
          include_seller_compact: "yes",
          include_auction_datum: "yes",
          include_color: "yes",
          include_vehicle_type: "yes",
          include_api_error: 'yes',
          exclude_unwanted_keys: true
        })
      elsif @state_desired == "wtg_for_settlement_confirmation"
        @vehicles = vehicles.includes(:seller).page(page)
        @vehicles.as_json({
          include_seller_compact: "yes",
          include_vehicle_type: "yes",
          include_api_error: 'yes',
          exclude_unwanted_keys: true
        })
      else
        # If no state matching, send JSON as it is in old format
        @vehicles = vehicles.includes([{adjuster: [:contact, :sellers]}, :auction_datum, :color,
                                  # Commenting the facility clause out because it "magically" changes facilities to yards
                                  # when sorting by make or model. No idea why, but commenting it out until we can
                                  # investigate further.
                                  # {facility: [:address, :contact]},
                                  {member: :contact}, {model: :make}, :btba_type, :bid_histories, {notes: [:note_type]},
                                  :run_condition, {seller: [{seller_charges: :gl_type}, :seller_type]},
                                  :subhauler, :trip_infos, {vehicle_type: :vehicle_type_group}, :yard_row]).page(page)
        
        @vehicles.as_json(include_adjuster: "yes",
                           include_auction_datum: "yes",
                           include_color: "yes", 
                           include_facility: "yes",
                           include_last_n_user_notes: (@state_desired == "wtg_to_clear_pickup") ? 1 : 0,
                           include_member_light: "yes",
                           include_run_condition: "yes",
                           include_seller: "yes", 
                           include_sale_confirmation_status: "yes",
                           include_subhauler: "yes", 
                           include_trip_infos: "yes",
                           include_vehicle_type: "yes",
                           include_yard_row: "yes")
      end
    end

    def vehicle_params
      # Add derived values to params...
      #
      # TODO: A few of these (maybe all) can
      #       actually be moved to the model.
      #       ex: buy_it_now_eligible could be
      #       set in a before_save filter, or
      #       changed to a ad hoc result via a
      #       method (depending on how/where it's
      #       used).
      #
      # HOLD
      buy_now = params[:buy_now].to_f
      reserve = params[:min_bid_reserve].to_f
      buy_it_now_eligible_value = (buy_now > 0) # && ((buy_now - reserve) >= 0)
      params[:buy_it_now_eligible] = buy_it_now_eligible_value
      
      # PICKUP
      params[:hold_for_pickup] = !params[:hold_for_pickup_date].blank?
      
      # SALE
      params[:hold_for_sale] = !params[:sale_hold_action_date].blank?

      # The Lot (if it exist)
      vehicle = Vehicle.find_by_id(params[:id])

      # original_doc_received_date
      if params[:original_doc_type].present? && params[:original_doc_country].present?
        params[:original_doc_received_date] = DateTime.now.to_date
      end

      # back fill original doc data
      #
      # TODO: Is this still needed?  And, if it is
      #       in fact a backfilling thing why wouldn't
      #       a migration fix this?
      if params[:ownership_transfer_type].present? && 
         (params[:ownership_transfer_type][:code] == 'R' ||
          params[:ownership_transfer_type][:code] == 'P')
        if params[:sale_doc_state].present?
          params[:original_doc_state] = params[:sale_doc_state]
        end

        if params[:sale_doc_at_copart_date].present?
          params[:original_doc_received_date] = params[:sale_doc_at_copart_date]
        end
      end

      # sale_doc_at_copart_date for homeowner items 
      if (params[:ownership_transfer_type].present? && 
          (params[:ownership_transfer_type][:code] == 'N') && 
          params[:vehicle_type].present? && 
          (params[:vehicle_type][:code] == 'H') &&
          params[:sale_doc_type].present? && 
          params[:sale_doc_country].present?)
        params[:sale_doc_at_copart_date] = DateTime.now.to_date
      end
      #
      # Set association ids
      # (small price to pay when using AngularJS instead of Rails form)
      #
      # Basically, if the child/parent cannot be edited via Vehicle
      # interaction (and most can't) there should be a line here for it.
      #

      params[:adjuster_id] = params[:adjuster].present? ? params[:adjuster][:id] : nil
      params[:btba_type_id] = params[:btba_type].present? ? params[:btba_type][:id] : nil
      params[:color_id] = params[:color].present? ? params[:color][:id] : nil
      params[:drive_train_type_id] = params[:drive_train_type].present? ? params[:drive_train_type][:id] : nil
      params[:engine_output_unit_id] = params[:engine_output_unit].present? ? params[:engine_output_unit][:id] : nil
      params[:odometer_unit_id] = params[:odometer_unit].present? ? params[:odometer_unit][:id] : nil
      params[:weight_unit_id] = params[:weight_unit].present? ? params[:weight_unit][:id] : nil
      params[:length_unit_id] = params[:length_unit].present? ? params[:length_unit][:id] : nil
      if params[:pickup] == Vehicle::PICKUP_OFFSITE
        params[:facility_id] = params[:facility].present? ? params[:facility][:id] : nil
      else
        params[:facility_id] = params[:facility].present? ? params[:facility][:id] : params[:yard].present? ? params[:yard][:facility_id] : nil
      end
      params[:fuel_type_id] = params[:fuel_type].present? ? params[:fuel_type][:id] : nil
      params[:lane_id] = params[:lane].present? ? params[:lane][:id] : nil
      params[:loss_type_id] = params[:loss_type].present? ? params[:loss_type][:id] : nil
      params[:member_id] = params[:member].present? ? params[:member][:id] : nil
      params[:model_id] = params[:model].present? ? params[:model][:id] : nil
      params[:trim_id] = params[:trim].present? ? params[:trim][:id] : nil
      params[:original_doc_country_id] = params[:original_doc_country].present? ? params[:original_doc_country][:id] : nil
      params[:original_doc_type_id] = params[:original_doc_type].present? ? params[:original_doc_type][:id] : nil
      params[:original_odometer_brand_id] = params[:original_odometer_brand].present? ? params[:original_odometer_brand][:id] : nil
      params[:documented_odometer_brand_id] = params[:documented_odometer_brand].present? ? params[:documented_odometer_brand][:id] : nil
      params[:original_odometer_unit_id] = params[:original_odometer_unit].present? ? params[:original_odometer_unit][:id] : nil
      params[:documented_odometer_unit_id] = params[:documented_odometer_unit].present? ? params[:documented_odometer_unit][:id] : nil
      params[:ownership_transfer_type_id] = params[:ownership_transfer_type].present? ? params[:ownership_transfer_type][:id] : nil
      params[:pickup_location_id] = params[:pickup_location].present? ? params[:pickup_location][:id] : nil
      params[:primary_damage_type_id] = params[:primary_damage_type].present? ? params[:primary_damage_type][:id] : nil
      params[:run_condition_id] = params[:run_condition].present? ? params[:run_condition][:id] : nil
      params[:sale_confirmation_status_id] = params[:sale_confirmation_status].present? ? params[:sale_confirmation_status][:id] : nil
      params[:sale_doc_country_id] = params[:sale_doc_country].present? ? params[:sale_doc_country][:id] : nil
      params[:sale_doc_type_id] = params[:sale_doc_type].present? ? params[:sale_doc_type][:id] : nil
      params[:secondary_damage_type_id] = params[:secondary_damage_type].present? ? params[:secondary_damage_type][:id] : nil
      params[:seller_id] = params[:seller].present? ? params[:seller][:id] : nil
      params[:subhauler_id] = params[:subhauler].present? ? params[:subhauler][:id] : nil
      params[:transmission_type_id] = params[:transmission_type].present? ? params[:transmission_type][:id] : nil
      params[:vehicle_type_id] = params[:vehicle_type].present? ? params[:vehicle_type][:id] : nil
      params[:yard_id] = params[:yard].present? ? params[:yard][:id] : nil
      params[:yard_row_id] = params[:yard_row].present? ? params[:yard_row][:id] : nil
      #
      # Well what if they can be edited you ask? Ask damn you!!!!!
      # Simple, we just need to make sure those have '_attributes'
      # tag as AngularJS does not set up the hash how Rails form helper
      # does.
      #

      # Adjuster
      params[:adjuster_attributes] = params.delete(:adjuster)
      if params[:adjuster_attributes].present? && params[:adjuster_attributes][:contact].present?
        contact_attributes = params[:adjuster_attributes].delete(:contact)
        params[:adjuster_attributes][:contact_attributes] = contact_attributes

      end

      # Advance Charge
      params[:advance_charge_attributes] = params.delete(:advance_charge)

      # Auction Data
      params[:auction_datum_attributes] = params.delete(:auction_datum)
      # only update the sale time if we're pre-sale-confirmation
      # and the sale date is different
      # (this is to handle the testing done by QA, but confirmed by Lisa
      #  as an acceptable rule in general)
      if params[:auction_datum_attributes].present? && 
         params[:yard_id].present? && 
         vehicle.present? && 
         vehicle.in_or_before_state?(:ready_for_auction)
        yard = Yard.find_by_id(params[:yard_id])
        current_auction_datum = vehicle.auction_datum
        passed_auction_date = params[:auction_datum_attributes][:auction_date].to_date rescue nil
        should_set_sale_time = current_auction_datum.nil? || current_auction_datum.auction_date.nil? || current_auction_datum.auction_date != passed_auction_date
        if yard.present?
          params[:auction_datum_attributes][:sale_time] = yard.utc_sale_date_with_time_for_date(params[:auction_datum_attributes][:auction_date])
        end
      end

      # Insured
      params[:insured_attributes] = params.delete(:insured) if params[:seller].present? && params[:seller][:seller_type].present? && params[:seller][:seller_type][:code] == "I"
      if params[:insured_attributes].present?
        if params[:insured_attributes][:contact].present?
          params[:insured_attributes][:contact_attributes] = params[:insured_attributes].delete(:contact)
        end
        if params[:insured_attributes][:address].present?
          params[:insured_attributes][:address_attributes] = params[:insured_attributes].delete(:address)
          insured_country = params[:insured_attributes][:address_attributes].delete(:country)
          params[:insured_attributes][:address_attributes][:country_id] = insured_country.nil? ? nil : insured_country[:id]
          insured_state = params[:insured_attributes][:address_attributes].delete(:state)
          # using blank as the state is not required, if it becomes required then nil check will be sufficient
          params[:insured_attributes][:address_attributes][:state_id] = insured_state.blank? ? nil : insured_state[:id]        
        end  
      end


      # Owner
      
      if params[:seller].present? && params[:seller][:seller_type].present? && params[:seller][:seller_type][:code] == "I"        
       
        params[:owner_id] = params[:owner].present? ? params[:owner][:id] : nil  
        params[:owner_attributes] = params.delete(:owner) 
        if params[:owner_attributes].present?
          params[:owner_attributes][:country_id] = current_employee.operating_country.id rescue nil
          if  params[:owner_attributes][:contact].present?        
            params[:owner_attributes][:contact_attributes] = params[:owner_attributes].delete(:contact)
          end
          if  params[:owner_attributes][:address].present?        
            params[:owner_attributes][:address_attributes] = params[:owner_attributes].delete(:address)
            owner_country = params[:owner_attributes][:address_attributes].delete(:country)
            params[:owner_attributes][:address_attributes][:country_id] = owner_country.nil? ? nil : owner_country[:id]
            owner_state = params[:owner_attributes][:address_attributes].delete(:state)
            # using blank as the state is not required, if it becomes required then nil check will be sufficient
            params[:owner_attributes][:address_attributes][:state_id] = owner_state.blank? ? nil : owner_state[:id]        
          end
        end
      end   

      # Pickup Location
      params[:pickup_location_attributes] = params.delete(:pickup_location) if params[:pickup] == "YES" 
      if params[:pickup_location_attributes].present? 
        # pickup offsite (always true for pickup locations)
        params[:pickup_location_attributes][:offsite] = true
        
        # the kind of location
        params[:pickup_location_attributes][:kind] = params[:pickup_location_kind].strip.downcase if params[:pickup_location_kind].present?

        # the pickup location country if the kind is residential
        if params[:pickup_location_attributes][:kind].present? && params[:pickup_location_attributes][:kind] == "residential"
          params[:pickup_location_attributes][:country_id] = current_employee.operating_country.id unless current_employee.operating_country.nil?
        end
        
        bank_country = params[:pickup_location_attributes].delete(:bank_country)
        params[:pickup_location_attributes][:bank_country_id] = bank_country.nil? ? nil : bank_country[:id]
        
        # Facility type related
        if params[:pickup_location_attributes][:facility_type].present?
          # We receive the user-friendly display value for facility type. This swaps
          # it out for the back-end value of the facility type that corresponds to the
          # display value.
          back_end_facility_type = Facility.facility_types_hash.find do |hash|
            hash[:display_text] == params[:pickup_location_attributes][:facility_type]
          end[:type] rescue nil
          params[:pickup_location_attributes][:facility_type] = back_end_facility_type
        end
        
        # When creating residential, set facility type to pickup 
        if !params[:pickup_location_attributes][:facility_type].present? && params[:pickup_location_attributes][:kind] ==  Facility::FACILITY_KIND_RESIDENTIAL 
          params[:pickup_location_attributes][:facility_type] = Facility::FACILITY_TYPE_PICKUP
        end

        # pickup address
        if params[:pickup_location_attributes][:address].present?
          params[:pickup_location_attributes][:address_attributes] = params[:pickup_location_attributes].delete(:address)
          country = params[:pickup_location_attributes][:address_attributes].delete(:country)
          params[:pickup_location_attributes][:address_attributes][:country_id] = country.nil? ? nil : country[:id]
          state = params[:pickup_location_attributes][:address_attributes].delete(:state)
          # using blank as the state is not required, if it becomes required then nil check will be sufficient
          params[:pickup_location_attributes][:address_attributes][:state_id] = state.blank? ? nil : state[:id] 
        end

        # pickup contact
        if params[:pickup_location_attributes][:contact].present?
          params[:pickup_location_attributes][:contact_attributes] = params[:pickup_location_attributes].delete(:contact)
        end
      end

      # get parameters for offsite facility/location
      params[:facility_attributes] = params.delete(:facility) if params[:pickup] == "OFFSITE"
      if params[:facility_attributes].present?
        # Facility type 
        if params[:facility_attributes][:facility_type].present?
          # We receive the user-friendly display value for facility type. This swaps
          # it out for the back-end value of the facility type that corresponds to the
          # display value.
          back_end_facility_type = Facility.facility_types_hash.find do |hash|
            hash[:display_text] == params[:facility_attributes][:facility_type]
          end[:type] rescue nil
          params[:facility_attributes][:facility_type] = back_end_facility_type
        end

        # facility address
        if params[:facility_attributes][:address].present?
          params[:facility_attributes][:address_attributes] = params[:facility_attributes].delete(:address)
          country = params[:facility_attributes][:address_attributes].delete(:country)
          params[:facility_attributes][:address_attributes][:country_id] = country.nil? ? nil : country[:id]
          state = params[:facility_attributes][:address_attributes].delete(:state)
          # using blank as the state is not required, if it becomes required then nil check will be sufficient
          params[:facility_attributes][:address_attributes][:state_id] = state.blank? ? nil : state[:id]
        end
        # facility contact
        if params[:facility_attributes][:contact].present?
          params[:facility_attributes][:contact_attributes] = params[:facility_attributes].delete(:contact)
        end
      end

      # Need country_id for service orders, as we don't pass country to 
      # the front end. We have to assign it to the service_order when persisting.
      logger.info("Lot: Current Employee present: #{current_employee.present?} in vehicle params")
      service_order_country = current_employee.operating_country if current_employee.present?

      if service_order_country.nil?
        # If operating country is nil, get country from the yard.
        yard = Yard.find_by_id(params[:yard_id])
        if yard.present? && yard.facility_country_present?
          service_order_country = yard.facility.address.country
        end
      end
      
      if params[:seller_charges].present?
        params[:seller_charges].each do |seller_charge|
          seller_charge[:seller_id] =  params[:seller][:id] if params[:seller].present? && params[:seller][:id].present?
        end
      end

      # Get parameters for service orders
      params[:service_orders_attributes] = params.delete(:service_orders)
      if params[:service_orders_attributes].present?
        params[:service_orders_attributes].each do |so_attrs|
          so_attrs[:country_id] = service_order_country.id if service_order_country.present?
          so_attrs[:gl_type_id] = so_attrs[:gl_type][:id] if so_attrs[:gl_type].present?
          # Set the details
          so_attrs[:service_order_details_attributes] = [{}]
          so_details = so_attrs[:service_order_details_attributes][0]
          so_details[:id] = so_attrs.delete(:service_order_detail_id)
          so_details[:seller_type_id] = so_attrs[:seller_type][:id] if so_attrs[:seller_type]
          so_details[:status] = so_attrs.delete(:status)
          so_details[:synked_with_sap] = so_attrs.delete(:synked_with_sap)
          so_attrs.delete(:seller_type)
        end
      end

      if vehicle.present? && params[:service_orders_attributes].present?
        # Handle seller changed
        if params[:seller].present? && params[:seller][:id].present? && (params[:seller][:id] != vehicle.seller.id)
          # Delete all uncompleted service orders from the existing seller.
          params[:service_orders_attributes].delete_if { |p| p[:seller_id] == vehicle.seller_id }
          # Remove older seller service orders from the database except completed ones.
          vehicle.service_orders.each do |service_order|
            if service_order.seller_id.present? &&
               (service_order.seller_id != params[:seller][:id]) &&
               (service_order.service_order_details[0].status != "complete")
              params[:service_orders_attributes] << { id: service_order.id, _destroy: 1 }
            end
          end
        elsif params[:seller].present? && params[:seller][:id].present? && (params[:seller][:id] == vehicle.seller.id)
          params_service_order_ids = params[:service_orders_attributes].map { |so| so["id"] }
          vehicle.service_orders.each do |service_order|
            if !params_service_order_ids.include?(service_order.id) && 
               service_order.seller_id.present? && (service_order.seller_id == params[:seller][:id])
              params[:service_orders_attributes] << { id: service_order.id, _destroy: 1 }
            end
          end
        end
      end

      filtered_params = params
      if vehicle.present?
        ## This method is about unmasking the params
        ## Make sure direct associted object ids (e.g unit_id) are added as exceptions
        filtered_params = filter_lot_attributes(params, vehicle)
      end

      # This Is SPARTA!!!!
      # (well... it's protecting attributes from end-user assignment)
      #
      filtered_params.permit(:id, :additional_info, :adjuster_id,
        :advance_charge_paid, :assignment_date, :body_style, :btba_type_id, 
        :buy_it_now_eligible,:buy_now, :buyer_billing_complete, :claim_ref_num, :color_id,
        :created_at, :co2_emission, :cubic_capacity, :custom_make_enabled, :custom_model_enabled, :custom_trim_enabled,
        :custom_make_model_approved, :cylinders, :date_claim_reported, :date_of_loss, :delivered_on_date,
        :documented_odometer_hour, :drive_train_type_id, :engine, :estimated_cost_of_repair, :euronorm,
        :facility_id, :first_registration_date, :fuel_type_id, :gross_vehicle_weight, :weight_unit_id, :has_engine,
        :has_transmission, :high_bid_amount, :hold_for_pickup, :hold_for_pickup_date,
        :hold_for_pickup_reason, :hold_for_sale, :hold_type, :horsepower, :engine_output_unit_id, :odometer_unit_id, :original_odometer_unit_id, :documented_odometer_unit_id, 
        :insurance, :inventory_info_readable, :item_num, :keys, :lane_id, :left_yard_date,
        :license_plate_num, :loss_type_id, :lot_num, :member_award_date, :member_id,
        :member_paid, :min_bid_reserve, :model_id, :custom_make, :custom_model, :custom_trim,
        :ok_pay_charge, :original_doc_country_id, :original_doc_received_date,
        :original_doc_state, :original_doc_type_id, :original_odometer_brand_id, :documented_odometer_brand_id,
        :original_odometer_hour, :ownership_transfer_type_id, :pickup_date, :pickup,
        :pickup_location_id, :pre_accident_value, :primary_damage_type_id,
        :promised_pickup_date, :received_employee_name, :registration_certificate_num,
        :residual_value,:purchase_price, :run_condition_id, :sale_action_approved_by, :sale_confirmation_status_id,
        :sale_doc_application_date, :sale_doc_at_copart_date, :sale_doc_country_id,
        :sale_doc_given_to_buyer_date, :sale_doc_state, :sale_doc_type_id,
        :sale_hold_action_date, :sale_hold_comment, :secondary_damage_type_id,
        :seller_billing_complete, :seller_id, :owner_id, :sell_now, :subhauler_id, :towable, :transmission_type_id,
        :total_member_charges_amount, :total_seller_charges_amount, :grand_total_seller_charges_amount, :trim_id,
        :updated_at, :usage, :vat_applicable, :vat_section, :vehicle_description, :vehicle_length, :length_unit_id,
        :vehicle_registration_num, :vehicle_type_id, :verify_vehicle_identification_num,
        :vin_serial_num, :yard_id, :yard_row_id, :yard_vehicle_count, :year, :year_of_manufacture,
        :last_updated_at, :custom, :settlement_model, 

        # Nested models now...

        # adjuster

        adjuster_attributes: [ :id, :vehicles_count, :position, :status,
                               contact_attributes: [ :id, :email, :primary_phone, :primary_phone_ext,
                                                     :secondary_phone, :secondary_phone_ext ] ],

        # advance charge
        advance_charge_attributes: [ :id, :additional_fee, :additional_fee_vat, :additional_fee_comment,
                                     :advance_check1_amount, :advance_check1_date, :advance_check1_num, 
                                     :advance_check2_amount, :advance_check2_date, :advance_check2_num, 
                                     :advance_check3_amount, :advance_check3_date, :advance_check3_num, :labor, 
                                     :labor_vat, :payment1_type, :payment2_type, :payment3_type, :storage_amount, 
                                     :storage_amount_vat, :storage_daily, :storage_from_date, :storage_thru_date, :tear_down_estimate,
                                     :tear_down_estimate_vat, :total_tax, :total_charges, :total_payments, :towing, :towing_vat, :yard_gate, :yard_gate_vat ],
        # auction data
        auction_datum_attributes: [ :id, :auction_date, :description, :sale_time, :vehicle_id ],

        # offsite facility
        facility_attributes: [ :id, :account_number, :additional_fee_comment, :bank_country_id, :bank_name, :confirm_account_number, 
                                      :confirm_iban_account_number, :confirm_routing_number, :direction, :distance, 
                                      :facility_type, :iban_account_number, :kind, :name, :offsite, :routing_number, :tax_id, 
                                      address_attributes: [ :id, :city, :country_id, :line1, :line2, :name, :state_id, :zip ],
                                      contact_attributes: [ :id, :email, :primary_phone, :secondary_phone ] ],
        # insured
        insured_attributes: [ :id, :company, :company_name, :vat_id, contact_attributes: [ :id, :first_name,  
                            :last_name, :primary_phone, :primary_phone_ext, :secondary_phone, :secondary_phone_ext ], 
                            address_attributes: [ :id, :city, :country_id, :line1, :line2, :name, :state_id, :zip ]],
        # owner
        owner_attributes: [ :id, :company, :company_name, :country_id, :vat_id, contact_attributes: [ :id, :first_name, 
                          :last_name, :email, :primary_phone, :primary_phone_ext, :secondary_phone, :secondary_phone_ext ],
                          address_attributes: [ :id, :city, :country_id, :line1, :line2, :name, :state_id, :zip ]],
        # pickup location (facility)
        pickup_location_attributes: [ :id, :account_number, :additional_fee_comment, :bank_country_id, :bank_name, :confirm_account_number, 
                                      :confirm_iban_account_number, :confirm_routing_number, :direction, :distance, 
                                      :facility_type, :iban_account_number, :kind, :name, :offsite, :routing_number, :tax_id, 
                                      address_attributes: [ :id, :city, :country_id, :line1, :line2, :name, :state_id, :zip ],
                                      contact_attributes: [ :id, :email, :primary_phone, :secondary_phone ] ],
        # service orders
        service_orders_attributes: [ :id, :_destroy, :amount, :amount_editable, :comments, :contact, :country_id, :gl_type_id,
                                     :include_on_lots, :instructions, :name, :priority, :seller_id,
                                     :so_type, :status_updated_date, :user_note, :vehicle_id,
                                     service_order_details_attributes: [ :id, :seller_type_id, :status ] ]
      )
    end
    
    def filter_lot_attributes(filtered_params, vehicle) 
      
      vehicle.attributes.except("owner_id", "pickup_location_id", "hold_for_sale", "hold_for_pickup", "facility_id", "odometer_unit_id", "engine_output_unit_id", "weight_unit_id", "length_unit_id", "original_odometer_unit_id", "documented_odometer_unit_id").keys.each do |key|
        replace_value = replace_mask_val_with_orginal(key, vehicle)
        filtered_params[key] = replace_value if replace_value.present?
      end


      if filtered_params[:adjuster_attributes].present? && filtered_params[:adjuster_attributes][:contact_attributes].present?
        adjuster = Adjuster.find_by_id(filtered_params[:adjuster_attributes][:id])
        adjuster.attributes.each do |k,v|
          replace_value = replace_mask_val_with_orginal(k, adjuster)
          filtered_params[:adjuster_attributes][k] = replace_value if !replace_value.nil?
        end
      end 

      if filtered_params[:adjuster_attributes].present? && filtered_params[:adjuster_attributes][:contact_attributes].present?
        adjuster_contact = Contact.find_by_id(filtered_params[:adjuster_attributes][:contact_attributes][:id])
        adjuster_contact.attributes.each do |k,v|
          options = {:parent_class => adjuster_contact.contactable_type.tableize.singularize}
          replace_value = replace_mask_val_with_orginal(k, adjuster_contact, options)
          filtered_params[:adjuster_attributes][:contact_attributes][k] = replace_value if !replace_value.nil?
        end
      end

      if filtered_params[:advance_charge_attributes].present?
        advance_charge = AdvanceCharge.find_by_id(filtered_params[:advance_charge_attributes][:id])
        if advance_charge.present?
          advance_charge.attributes.each do |k,v|
            replace_value = replace_mask_val_with_orginal(k, advance_charge)
            filtered_params[:advance_charge_attributes][k] = replace_value if !replace_value.nil?
          end
        end
      end

      if filtered_params[:auction_datum_attributes].present?
        auction_data = AuctionDatum.find_by_id(filtered_params[:auction_datum_attributes][:id])
        if auction_data.present?
          auction_data.attributes.except("sale_time").each do |k,v|
            replace_value = replace_mask_val_with_orginal(k, auction_data)
            filtered_params[:auction_datum_attributes][k] = replace_value if !replace_value.nil?
          end
        end
      end

      if filtered_params[:facility_attributes].present?
        facility = Facility.find_by_id(params[:facility_attributes][:id])
        facility.attributes.each do |k,v|
          replace_value = replace_mask_val_with_orginal(k, facility)
          filtered_params[:facility_attributes][k] = replace_value if !replace_value.nil?
        end
      end

      if filtered_params[:facility_attributes].present? && filtered_params[:facility_attributes][:address_attributes].present?
        facility_address = Address.find_by_id(filtered_params[:facility_attributes][:address_attributes][:id])
        facility_address.attributes.each do |k,v|
          replace_value = replace_mask_val_with_orginal(k, facility_address)
          filtered_params[:facility_attributes][:address_attributes][k] = replace_value if !replace_value.nil?
        end
      end

      if filtered_params[:facility_attributes].present? && filtered_params[:facility_attributes][:contact_attributes].present?
        facility_contact = Contact.find_by_id(filtered_params[:facility_attributes][:contact_attributes][:id])
        facility_contact.attributes.each do |k,v|
          options = {:parent_class => facility_contact.contactable_type.tableize.singularize}
          replace_value = replace_mask_val_with_orginal(k, facility_contact, options)
          filtered_params[:facility_attributes][:contact_attributes][k] = replace_value if !replace_value.nil?
        end
      end

      if filtered_params[:pickup_location_attributes].present?
        facility = if filtered_params[:pickup_location_attributes][:id].blank?
          Facility.new
        else  
          Facility.find_by_id(filtered_params[:pickup_location_attributes][:id])
        end

        facility.attributes.except("kind").each do |k,v|
          replace_value = replace_mask_val_with_orginal(k, facility)
          filtered_params[:pickup_location_attributes][k] = replace_value if !replace_value.nil?
        end

        if filtered_params[:pickup_location_attributes][:address_attributes].present? 
          facility_address = if filtered_params[:pickup_location_attributes][:address_attributes][:id].blank? 
            Address.new
          else
            Address.find_by_id(filtered_params[:pickup_location_attributes][:address_attributes][:id])
          end          
          facility_address.attributes.each do |k,v|
            options = {:parent_class => "facility"}
            replace_value = replace_mask_val_with_orginal(k, facility_address, options)
            filtered_params[:pickup_location_attributes][:address_attributes][k] = replace_value if !replace_value.nil?
          end
        end
        
        if filtered_params[:pickup_location_attributes][:contact_attributes].present?
          facility_contact = if filtered_params[:pickup_location_attributes][:contact_attributes][:id].blank?
            Contact.new
          else
            Contact.find_by_id(filtered_params[:pickup_location_attributes][:contact_attributes][:id])
          end

          facility_contact.attributes.each do |k,v|
            options = {:parent_class => "facility"}
            replace_value = replace_mask_val_with_orginal(k, facility_contact, options)
            filtered_params[:pickup_location_attributes][:contact_attributes][k] = replace_value if !replace_value.nil?
          end
        end
      end

      if filtered_params[:insured_attributes].present?
        insured = if filtered_params[:insured_attributes][:id].blank?
          Insured.new
        else
          Insured.find_by_id(filtered_params[:insured_attributes][:id])
        end

        insured.attributes.each do |k,v|
          replace_value = replace_mask_val_with_orginal(k, insured)
          filtered_params[:insured_attributes][k] = replace_value if !replace_value.nil?
        end

        if filtered_params[:insured_attributes][:address_attributes].present?
          insured_address = if filtered_params[:insured_attributes][:address_attributes][:id].blank?
            Address.new
          else
            Address.find_by_id(filtered_params[:insured_attributes][:address_attributes][:id])
          end
          insured_address.attributes.each do |k,v|
            options = {:parent_class => 'insured'}
            replace_value = replace_mask_val_with_orginal(k, insured_address, options)
            filtered_params[:insured_attributes][:address_attributes][k] = replace_value if !replace_value.nil?
          end
        end

        if filtered_params[:insured_attributes][:contact_attributes].present?
          insured_contact = if filtered_params[:insured_attributes][:contact_attributes][:id].blank?
            Contact.new
          else
            Contact.find_by_id(filtered_params[:insured_attributes][:contact_attributes][:id])
          end
          insured_contact.attributes.each do |k,v|
            options = {:parent_class => 'insured'}
            replace_value = replace_mask_val_with_orginal(k, insured_contact, options)
            filtered_params[:insured_attributes][:contact_attributes][k] = replace_value if !replace_value.nil?
          end
        end
      end      

      if filtered_params[:owner_attributes].present?
        owner = if filtered_params[:owner_attributes][:id].blank?
          Owner.new
        else
          Owner.find_by_id(filtered_params[:owner_attributes][:id])
        end

        owner.attributes.each do |k,v|
          replace_value = replace_mask_val_with_orginal(k, owner)
          filtered_params[:owner_attributes][k] = replace_value if !replace_value.nil?
        end

        if filtered_params[:owner_attributes][:address_attributes].present?
          owner_address = if filtered_params[:owner_attributes][:address_attributes][:id].blank?
            Address.new
          else
            Address.find_by_id(filtered_params[:owner_attributes][:address_attributes][:id])
          end
          owner_address.attributes.each do |k,v|
            options = {:parent_class => 'owner'}
            replace_value = replace_mask_val_with_orginal(k, owner_address, options)
            filtered_params[:owner_attributes][:address_attributes][k] = replace_value if !replace_value.nil?
          end
        end

        if filtered_params[:owner_attributes][:contact_attributes].present?
          owner_contact = if filtered_params[:owner_attributes][:contact_attributes][:id].blank?
            Contact.new
          else
            Contact.find_by_id(filtered_params[:owner_attributes][:contact_attributes][:id])
          end

          owner_contact.attributes.each do |k,v|
            options = {:parent_class => 'owner'}
            replace_value = replace_mask_val_with_orginal(k, owner_contact, options)
            filtered_params[:owner_attributes][:contact_attributes][k] = replace_value if !replace_value.nil?
          end
        end
      end

      if filtered_params[:seller_charges].present?
        filtered_params[:seller_charges].each_with_index do |charge, index|
          #REFACTOR - SQL Query in iterator will effect the performance.
          seller_charge = SellerCharge.find(charge["id"]) rescue SellerCharge.new
          
          # Keys are good enough to iterate from an object
          seller_charge.attributes.keys do |key|
            replace_value = replace_mask_val_with_orginal(key, seller_charge)
            filtered_params[:seller_charges][index][key] = replace_value unless replace_value.blank?
          end
        end
      end

      if filtered_params[:service_orders_attributes].present?
        
        filtered_params[:service_orders_attributes].each_with_index do |so, index|
          next if !so["id"].present?
          service_order = ServiceOrder.find_by_id(so["id"])

          service_order.attributes.each do |k,v|
            replace_value = replace_mask_val_with_orginal(k, service_order)
            filtered_params[:service_orders_attributes][index][k] = replace_value if !replace_value.nil?
          end

          if(so[:service_orders_details_attributes].present?)
            service_order_detail = ServiceOrderDetail.find_by_id(so[:service_orders_details_attributes][:id])
            service_order_detail.attributes.each do |k,v|
              replace_value = replace_mask_val_with_orginal(k, service_order_detail)
              filtered_params[:service_orders_attributes][index][:service_orders_details_attributes][k] = replace_value if !replace_value.nil?
            end

          end  
        end
      end


      filtered_params
      
    end

    # Set the shared gon variables for the Create/Edit flows
    def create_edit_gon_variables(vehicle)
      # View-model for AngularJS controller
      employee_country = current_employee.present? ? current_employee.operating_country : nil
      gon.facilityTypes = if (employee_country.present? && current_employee.can_edit_field?("facility_facility_type")) || vehicle.new_record? || (gon.vehicle.blank? || gon.vehicle[:pickup_location].blank?)
        Facility.facility_types_hash
      else
        [{type: gon.vehicle[:pickup_location][:facility_type], display_text: gon.vehicle[:pickup_location][:facility_type_display_text]}]
      end

      # Field specific ones
      if vehicle.high_bid_is_copart_buy_now?
        gon.mayEditBuyerEmail = false
        gon.mayEditHighBidAmount = false
      else
        gon.mayEditBuyerEmail = current_employee.can_edit_field?("member_contact_email")
        gon.mayEditHighBidAmount = true
      end

      gon.mainPagePath = vehicles_path
      # This should become a current_user based scope when that is all set up.
      gon.offsiteFacilities = Facility.for_country(employee_country)
                                      .non_residential
                                      .offsite_facilities
                                      .order(:name)
                                      .includes([{address: [:state, {country: :states}]}, :contact])
                                      .as_json(include_address: "yes",
                                               include_bank_country: "yes",
                                               include_contact: "yes", include_states: "no")
      
      # Seller stuff
      
      gon.sellerFormButtonText = I18n.t("views.seller.create_edit_form.creating.save_button")
      gon.sellerFormHeaderText = I18n.t("views.seller.create_edit_form.creating.header")
      gon.sellerFormIsNewRecord = true #even when vehicle is editing adding a seller will still be a new seller
      gon.ownerFormIsNewRecord = true
      gon.sellerFormPath = sellers_path
      gon.sellerCompanies = SellerCompany.for_country(employee_country).order("name ASC").as_json || []
      gon.sellers = Seller.active
                          .for_country(employee_country)
                          .ordered_by("name", Seller::SORT_ASCENDING)
                          .includes([:seller_company, :seller_type ])
                          .as_json(include_seller_company: "yes", include_seller_type: "yes", 
                          lot_state: vehicle.state, klass_name: vehicle.class.name) || [] #becomes current_user scope when that is all set up
      
      gon.sellerTypes = SellerType.all.as_json(lot_state: vehicle.state, klass_name: vehicle.class.name) || []
      #gon.owners = Owner.companies_for_country(employee_country).as_json(include_contact: "yes", include_address: "yes") || []

      gon.sellerStatuses = DataServiceStatus.all

      gon.adjusterStatuses = {}
      Adjuster::STATUSES.each { |status| gon.adjusterStatuses["#{status}"] = I18n.t("views.shared.statuses.#{status}") }

      # Euronorm field values
      gon.euronormOptions = if (current_employee.present? && current_employee.can_edit_field?("vehicle_euronorm")) || gon.vehicle.blank?
        Vehicle::EURONORM_OPTIONS || []
      else
        [gon.vehicle[:euronorm]]
      end
      # VAT Section field values
      gon.vatSectionOptions = if (current_employee.present? && current_employee.can_edit_field?("vehicle_vat_section")) || gon.vehicle.blank?
         Vehicle.vat_section_option
      else
        [gon.vehicle[:vat_section]]
      end
      
      #gon.vatSectionOptions = Vehicle::VAT_SECTION_OPTIONS || []

      # Settlement Model field values
      #gon.settlementModelOptions = Vehicle::SETTLEMENT_MODEL_OPTIONS || []

      gon.settlementModels =
      if current_employee.present? && current_employee.can_edit_field?("vehicle_settlement_model")|| gon.vehicle.blank? 
         Vehicle.settlement_models_hash
      else
        [{type: gon.vehicle[:settlement_model], display_text: gon.vehicle[:settlement_model_display_text]}]
      end

      # gon.settlementModelOptions = {}
      # Vehicle::SETTLEMENT_MODEL_OPTIONS.each { |settlement_model| gon.settlementModelOptions["#{settlement_model}"] = I18n.t("views.vehicle.new.settlement_model_options.#{settlement_model}")}     
     
      # gl_types
      gon.memberGlTypes = GlType.joins(:gl_category_type).includes(:gl_category_type).merge(GlCategoryType.where(code: [ "BUY", "SAL" ])).as_json(klass_name: "member_charge").sort_by {|gl| gl[:display_text].downcase} || []
      gon.sellerGlTypes = GlType.joins(:gl_category_type).includes(:gl_category_type).merge(GlCategoryType.where(code: [ "SFE", "SAF" ])).as_json(klass_name: "seller_charge").sort_by {|gl| gl[:display_text].downcase} || []

      # All of the seller's service order names
      gon.serviceOrderNames =
        (vehicle.seller.present? && vehicle.seller.service_orders.present?) ?
        vehicle.seller.service_orders.where(include_on_lots: true).map(&:name) :
        []

      # Service order stuff.
      gon.serviceOrderStatusHash = ServiceOrder.service_order_status_hash(ServiceOrder::SERVICE_ORDER_STATUSES)
      gon.serviceOrderStatusforCreation = ServiceOrder::SERVICE_ORDER_STATUSES_CREATION
      gon.serviceOrderStatusForCreationHash = ServiceOrder.service_order_status_hash(ServiceOrder::SERVICE_ORDER_STATUSES_CREATION)
      gon.serviceOrderStatusForAfterCreationHash = ServiceOrder.service_order_status_hash(ServiceOrder::SERVICE_ORDER_STATUSES_AFTER_CREATION)
      gon.serviceOrderTypeOrder = ServiceOrder::SO_ORDER
      gon.pendingServiceOrderError = I18n.t("models.vehicle.errors.service_order_must_be_completed")
      gon.openInstructionButtonText = I18n.t("views.vehicle.service_order.open_instruction")
      gon.closeInstructionButtonText = I18n.t("views.vehicle.service_order.close_instruction")

      # Vehicle stuff
      # TODO: some of these are only needed from a certain state onwards
      #       we could therefore save ourselves extra DB hits by wrapping
      #       them in logic with that in mind (see subhauler stuff below)

      logger.info("Lot: #{vehicle.lot_num} BTBA Types, checking current employee: #{current_employee.present?}")
      gon.allowedBtbaCodes = if current_employee.present?
        BtbaType.for_country(current_employee.operating_country).map(&:code) 
      else
        []
      end
      gon.btbaTypes = BtbaType.all.as_json
      gon.primaryDamageTypes=DamageType.all.as_json(damage_type: :primary_damage_type_id,lot_state: vehicle.state, klass_name: vehicle.class.name).sort_by { |dt| dt[:display_text] }
      gon.secondaryDamageTypes=DamageType.all.as_json(damage_type: :secondary_damage_type_id,lot_state: vehicle.state, klass_name: vehicle.class.name).sort_by { |dt| dt[:display_text] }
      
      #gon.damageTypes = DamageType.all.as_json(lot_state: vehicle.state, klass_name: vehicle.class.name).sort_by { |dt| dt[:display_text] }
      gon.drive_train_types = DriveTrainType.all.as_json(lot_state: vehicle.state, klass_name: vehicle.class.name).sort_by {|dt| dt[:display_text]}
      gon.engine_output_units = Unit.where(unit_type: "EngineOutput").as_json(lot_state: vehicle.state, klass_name: vehicle.class.name).sort_by {|dt| dt[:display_text]}
      gon.odometerUnits = Unit.where(unit_type: "Odometer").as_json(lot_state: vehicle.state, klass_name: vehicle.class.name).sort_by {|dt| dt[:display_text]}
      gon.weightUnits = Unit.where(unit_type: "Weight").as_json(lot_state: vehicle.state, klass_name: vehicle.class.name).sort_by {|dt| dt[:display_text]}
      gon.lengthUnits = Unit.where(unit_type: "Length").as_json(lot_state: vehicle.state, klass_name: vehicle.class.name).sort_by {|dt| dt[:display_text]}
      gon.fuel_types = if current_employee.present? && current_employee.can_edit_field?("vehicle_fuel_type_id")
        FuelType.country_based_fuel_types(current_employee.operating_country).as_json(lot_state: vehicle.state, klass_name: vehicle.class.name).sort_by {|ft| ft[:display_text].downcase}
      else
        FuelType.where(id: vehicle.fuel_type_id).as_json(lot_state: vehicle.state, klass_name: vehicle.class.name)
      end
      gon.hold_types = HoldType.all.as_json
      gon.loss_types = if current_employee.present? && current_employee.can_edit_field?("vehicle_loss_type_id")
        LossType.all.as_json(lot_state: vehicle.state, klass_name: vehicle.class.name).sort_by {|lt| lt[:display_text].downcase}
      else
        LossType.where(id: vehicle.loss_type_id).as_json(lot_state: vehicle.state, klass_name: vehicle.class.name)
      end
      gon.lotAssignmentNote = Note::LOT_ASSIGNMENT_NOTE # so the JS has the constant for the desired sub-type
      gon.originalOdomBrands=OdomBrand.all.as_json(brand: :original_odometer_brand_id,lot_state: vehicle.state, klass_name: vehicle.class.name)
      gon.documentedOdomBrands=OdomBrand.all.as_json(brand: :documented_odometer_brand_id,lot_state: vehicle.state, klass_name: vehicle.class.name)
      gon.calculatedOdomBrands=OdomBrand.all.as_json(brand: :calculated_odometer_brand_id,lot_state: vehicle.state, klass_name: vehicle.class.name)
      #gon.odomBrands = OdomBrand.all.as_json(lot_state: vehicle.state, klass_name: vehicle.class.name)
      gon.ownership_transfer_types = OwnershipTransferType.all.as_json(lot_state: vehicle.state, klass_name: vehicle.class.name)
      
      gon.paymentTypes = if (current_employee.present? && current_employee.can_edit_field?("advance_charge_payment1_type")) || gon.vehicle.blank?
        AdvanceCharge::PAYMENT_TYPES
      elsif vehicle.advance_charge.present? && vehicle.advance_charge.payment1_type.present?
        [gon.vehicle[:advance_charge][:payment1_type]]
      else
        []
      end
      gon.payment2Types = if (current_employee.present? && current_employee.can_edit_field?("advance_charge_payment2_type")) || gon.vehicle.blank?
        AdvanceCharge::PAYMENT_TYPES
      elsif vehicle.advance_charge.present? && vehicle.advance_charge.payment2_type.present?
        [gon.vehicle[:advance_charge][:payment2_type]]
      else
        []
      end
      gon.payment3Types = if (current_employee.present? && current_employee.can_edit_field?("advance_charge_payment3_type")) || gon.vehicle.blank?
        AdvanceCharge::PAYMENT_TYPES  
      elsif vehicle.advance_charge.present? && vehicle.advance_charge.payment3_type.present?
        [gon.vehicle[:advance_charge][:payment3_type]]
      else
        []
      end

      gon.run_conditions = RunCondition.all.as_json(lot_state: vehicle.state, klass_name: vehicle.class.name)
      #gon.yardRows = YardRow.all.as_json(lot_state: vehicle.state, klass_name: vehicle.class.name)
      gon.saleConfirmationStatuses = SaleConfirmationStatus.all.as_json(lot_state: vehicle.state, klass_name: vehicle.class.name)
      logger.info("Lot: #{vehicle.lot_num} Title Types Gon variables, checking current employee: #{current_employee.present?}")
      gon.title_types = if current_employee.present?
        TitleType.for_country(current_employee.operating_country).as_json(doc_type: :original_doc_type_id,lot_state: vehicle.state, klass_name: vehicle.class.name)
      else
        []
      end
      gon.sale_doc_types = if current_employee.present?
        TitleType.for_country(current_employee.operating_country).as_json(doc_type: :sale_doc_type_id,lot_state: vehicle.state, klass_name: vehicle.class.name)
      else
        []
      end
      
      gon.transmission_types = if current_employee.present? && current_employee.can_edit_field?("vehicle_transmission_type_id")
        TransmissionType.all.as_json(lot_state: vehicle.state, klass_name: vehicle.class.name).sort_by {|tt| tt[:display_text]}
      else
        TransmissionType.where(id: vehicle.transmission_type_id).as_json(lot_state: vehicle.state, klass_name: vehicle.class.name)
      end

      gon.vehicleNewFormPath = vehicles_path
      gon.trip_types = TripType.all
      gon.vehicleEditFormPath = "/vehicles/#{@vehicle.id}"
      vehicle.vehicle_type = VehicleType.select("id").where(code: 'v').first if vehicle.new_record?

      gon.vehicleMakes = if (current_employee.present? && current_employee.can_edit_field?("vehicle_make_id")) || vehicle.new_record? || vehicle.model.blank?
        VehicleType.where(id: vehicle.vehicle_type_id).first.makes.for_country(current_employee.operating_country).group("makes.id")
        .order("name asc").as_json(list: true)
      else
        Make.where(id: vehicle.model.make_id).as_json(lot_state: vehicle.state, klass_name: vehicle.class.name)
      end   

      gon.vehicle_colors = if current_employee.present? && current_employee.can_edit_field?("vehicle_color_id")
        Color.all.as_json(lot_state: vehicle.state, klass_name: vehicle.class.name).sort_by {|c| c[:display_text].downcase}
      else
        Color.where(id: vehicle.color_id).as_json(lot_state: vehicle.state, klass_name: vehicle.class.name)
      end
               
      gon.vehicleTypes = if current_employee.present? && current_employee.can_edit_field?("vehicle_vehicle_type_id")
        VehicleType.includes(:vehicle_type_group).for_operating_country(current_employee.operating_country)
                   .as_json(list: true).sort_by {|vt| vt[:display_text].downcase}
      else
        VehicleType.includes(:vehicle_type_group).where(id: vehicle.vehicle_type_id)
                   .as_json(field_name: :vehicle_type_id, lot_state: vehicle.state, klass_name: vehicle.class.name)
      end 

      gon.mayEdit = can?(:enabled_menu_index, @vehicle) && @vehicle.may_edit?
      gon.mayAddSeller = current_employee.can_enable_field?("action_new_seller")
      gon.mayEditSeller = current_employee.can_enable_field?("action_edit_eller")
      gon.mayAddAdjuster = current_employee.can_enable_field?("action_new_adjuster")
      gon.mayEditAdjuster = current_employee.can_enable_field?("action_edit_adjuster")
      gon.mayAddSubhauler = current_employee.can_enable_field?("action_new_subhauler") && @vehicle.may_edit?
      gon.mayEditSubhauler = current_employee.can_enable_field?("action_edit_subhauler")
      gon.mayEditFacility = current_employee.can_enable_field?("action_new_facility")
      gon.mayAddOwner = current_employee.can_enable_field?("action_new_owner")
      gon.mayEditOwner = current_employee.can_enable_field?("action_edit_owner")
      gon.mayAddServiceOrder = current_employee.can_enable_field?("action_add_service_order")
      gon.mayRemoveServiceOrder = current_employee.can_enable_field?("action_remove_service_order")
      gon.mayCancelNonCleanLot = can?(:button_lot_to_seller_billing_cancel, @vehicle)
      gon.mayAddPaymentType = current_employee.can_enable_field?("action_add_payment_type")

      # These are UI calculations for (total amounts) so inline editing should happen for both view and edit
      gon.mayUpdateTax = current_employee.can_edit_field?("advance_charge_total_tax")
      gon.mayUpdateCharges = current_employee.can_edit_field?("advance_charge_total_charges")
      gon.mayUpdateTotalPayment = current_employee.can_edit_field?("advance_charge_total_payments")
      gon.mayUpdateHighBid = current_employee.can_edit_field?("vehicle_high_bid_amount")
      gon.mayUpdateMemberTotalCharges = current_employee.can_edit_field?("vehicle_total_member_charges_amount")
      gon.mayUpdateSellerTotalCharges = current_employee.can_edit_field?("vehicle_total_seller_charges_amount")
      gon.mayUpdateSellerGrandTotalCharges = current_employee.can_edit_field?("vehicle_grand_total_seller_charges_amount")


      gon.mayEditImages = vehicle.in_or_after_state?(:wtg_for_sale_confirmation)
      # Missing images error message
      gon.missingImagesErrorMessage = I18n.t("controllers.vehicle.error.image_missing")

      # Sale hold date error message (b/c we want to show this error prior to save)
      gon.saleHoldError = I18n.t("activerecord.errors.models.auction_datum.attributes.auction_date.present_with_sale_hold")
      
      # Adjuster stuff
      gon.adjusterFormHeaderTextCreate = I18n.t("views.adjuster.create_edit_form.creating.header")
      gon.adjusterFormButtonTextCreate = I18n.t("views.adjuster.create_edit_form.creating.save_button")
      gon.adjusterFormHeaderTextUpdate = I18n.t("views.adjuster.create_edit_form.editing.header")
      gon.adjusterFormButtonTextUpdate = I18n.t("views.adjuster.create_edit_form.editing.save_button")

      # Owner stuff
      gon.ownerFormHeaderText = I18n.t("views.owner.create_edit_form.creating.header")
      gon.ownerFormButtonText = I18n.t("views.owner.create_edit_form.creating.save_button")
      # Document stuff
      gon.noDocumentsSelected = I18n.t("views.document.no_documents_selected")

      # Image stuff
      gon.noImagesSelected = I18n.t("views.image.no_images_selected")

      # Facility stuff
      gon.facilityFormIsNewRecord = true
      gon.facilityFormPath = facilities_path
      gon.facilityFormHeaderText = I18n.t("views.facility.create_edit_form.creating.header")
      gon.facilityFormButtonText = I18n.t("views.facility.create_edit_form.creating.save_button")

      # (Vehicle) Make stuff
      gon.noMakesFound = I18n.t("views.vehicle.new.no_makes_found")

      # (Vehicle) Model stuff
      gon.noModelsFound = I18n.t("views.vehicle.new.no_models_found")

      # (Vehicle) Locations stuff
      gon.noLocationsFound = I18n.t("views.vehicle.new.no_locations_found")
      gon.custom_make_homeowner ="Homeowners"
      gon.custom_model_homeowner ="Item"
    
      # Subhauler stuff
      if vehicle.present? && vehicle.show_wait_for_driver_dispatch_form?
        #gon.subhaulers = Subhauler.active.for_country(employee_country)
        #                          .ordered_by("provider_name", Subhauler::SORT_ASCENDING)
        #                          .includes([:address, :contact])
        #                          .as_json(include_address: "yes", include_contact: "yes") || []
        #                           #becomes current_user scope when that is all set up
        gon.subhaulerFormIsNewRecord = true
        gon.subhaulerFormPath = subhaulers_path
        gon.subhaulerCancelPath = subhaulers_path
        gon.subhaulerFormHeaderText = I18n.t("views.subhauler.create_edit_form.creating.header")
        gon.subhaulerFormButtonText = I18n.t("views.subhauler.create_edit_form.creating.save_button")
        gon.subhaulerStatuses = {}
        Subhauler::STATUSES.each do |status|
          if status = Subhauler::STATUS_ACTIVE
            gon.subhaulerStatuses["#{status}"] = I18n.t("views.shared.statuses.#{status}")
          end
        end
      end

      # Note filters
      if vehicle.present? && vehicle.persisted?
        gon.documentTypes = DocumentType.where(documentable_type: vehicle.class.name).as_json.sort_by { |dt| dt[:display_text] }
        note_filter
      end

      # Units and Measurements Text
      employee_country = current_employee.present? ? current_employee.operating_country : nil
      if employee_country.present?
        gon.unitTextCO2Emission = employee_country.co2_emission_measurement
        gon.unitTextCubicCapacity = employee_country.cubic_capacity_measurement
        gon.unitTextDistance = employee_country.usage_measurement
        #gon.unitTextNonVehicleUsage = "hrs"
        #gon.unitTextVehicleLength = employee_country.vehicle_length_measurement
        #gon.unitTextVehicleUsage = employee_country.usage_measurement
        #gon.unitTextVehicleWeight = employee_country.vehicle_weight_measurement
      end

      # Fields that only appear for certain operating countries
      # Germany (none yet, but stories exist that are adding some)
      # India
      if employee_country.present? && employee_country.code == "IN"
        gon.hideBankInfo = true
      end
  
      # Error message for invalid model for selected make.
      gon.modelNotInListError = I18n.t("activerecord.errors.models.vehicle.attributes.model.invalid_for_make")
    
      # Hide Internet Bid Fee for default member or KIOS bid member
      if(vehicle.present? && @vehicle.wtg_for_buyer_charge_confirmation?)
        gon.hide_internet_bid_fee = (["D","K"].include?(vehicle.get_high_bid_bid_type_code) || (vehicle.lot_awarded_from == "cobalt")) ? true : false
      end  
    end


    # create gon variables that are country_uid specific
    def create_country_specific_gon_variables
      employee_country = current_employee.present? ? current_employee.operating_country : nil
      yard_uid_management = employee_country.nil? ? nil : UidManagement.uid_manager_for(Yard, employee_country)
      gon.copartYards =
        if yard_uid_management.present?
          Yard.for_country_uid(yard_uid_management.min_number, yard_uid_management.max_number)
              .copart_yards
              .for_employee(current_employee).as_json(include_basic: 'yes', list: true)
        else
          []
        end
      gon.showYardFilter = gon.copartYards.size > 1
      gon.facilities = Facility.includes(:country).for_country(employee_country)
                               .non_residential.ordered_by("name", Facility::SORT_ASCENDING).as_json(include_basic: "yes") #this should become a current_user based scope when that is all set up
      gon.sellers = Seller.for_country(employee_country)
                          .ordered_by("name", Seller::SORT_ASCENDING).as_json
      gon.members = MemberResource.find_by_ids(@vehicles.map(&:member_id)
        .compact.uniq).map {|m| {id: m.id, member_name: m.full_name}} if params[:state_as_string].present? && Vehicle.is_requesting_for_post_auction_stage?(params[:state_as_string])
      gon.showSellerFilter = gon.sellers.size > 1
    end
      
    # Check the employee's security level for UI display
    def setup_view_edit_permissions(lot)
      allowableActions = []
      # This is in display order (bottom up)
      # The names after blah_ are the section names used in
      # the HTML/AngularJS code, so keep that in mind if you
      # find yourself editing those.
      #
      # View (unhide) ability
      allowableActions << "view_charges"
      allowableActions << "view_pick-up"
      allowableActions << "view_info"
      allowableActions << "view_seller"
      allowableActions << "view_wait-to-clear-pickup"
      allowableActions << "view_wait-for-driver-dispatch"
      allowableActions << "view_wait-for-trip-confirmation"
      allowableActions << "view_wait-for-inventory"
      allowableActions << "view_wait-for-title"
      allowableActions << "view_ready-for-auction-section"
      allowableActions << "view_wait-for-sale-confirmation"
      allowableActions << "view_wait-for-buyer-charge"
      allowableActions << "view_ready-for-seller-billing-section"
      allowableActions << "view_wait-for-settlement-confirmation"
      allowableActions << "view_service-orders"
      
      # Edit ability
      if !lot.closed? || (lot.closed? && can?(:edit_closed_lots, lot))
        allowableActions << "edit_charges" if can? :edit_charges_section, lot
        allowableActions << "edit_pick-up" if can? :edit_location_section, lot
        allowableActions << "edit_info" if can? :edit_lot_info_section, lot
        allowableActions << "edit_seller" if can? :edit_seller_info_section, lot
        allowableActions << "edit_wait-to-clear-pickup" if can? :edit_hold_info_section, lot
        allowableActions << "edit_wait-for-driver-dispatch" if can? :edit_tow_provider_section, lot
        allowableActions << "edit_wait-for-trip-confirmation" if can? :edit_charges_reconciliation_section, lot
        allowableActions << "edit_wait-for-inventory" if can? :edit_inventory_section, lot
        allowableActions << "edit_wait-for-title" if can? :edit_ownership_transfer_section, lot
        allowableActions << "edit_ready-for-auction-section" if can? :edit_auction_section, lot
        allowableActions << "edit_wait-for-sale-confirmation" if can? :edit_sale_confirmation_section, lot
        allowableActions << "edit_wait-for-buyer-charge" if can? :edit_member_billing_section, lot
        allowableActions << "edit_ready-for-seller-billing-section" if can? :edit_seller_billing_section, lot
        allowableActions << "edit_wait-for-settlement-confirmation" if can? :edit_settlement_confirmation_section, lot
        allowableActions << "edit_service-orders" if can? :edit_service_order_section, lot
      end
      
      gon.allowableActions = allowableActions
    end

    # Returns true if any of the charges/vat charges have changed
    # as long as all charges aren't nil (as some user actions will
    # cuase changed to be true even though everything is nil)
    def advance_charges_modified?(lot)
      charges = lot.advance_charge
      charges.attributes.each_pair do |attribute, value|
        logger.info("advance charge #{attribute} changed to #{value}") if charges.send("#{attribute}_changed?".to_sym)
      end
      changed = charges.additional_fee_changed? || charges.additional_fee_vat_changed? ||
                charges.labor_changed? || charges.labor_vat_changed? || 
                charges.storage_amount_changed? || charges.storage_amount_vat_changed? || charges.storage_daily_changed? || 
                charges.tear_down_estimate_changed? || charges.tear_down_estimate_vat_changed? || 
                charges.towing_changed? || charges.towing_vat_changed? || 
                charges.yard_gate_changed? || charges.yard_gate_vat_changed? ||
                charges.storage_from_date_changed? || charges.storage_thru_date_changed?
      if changed
        # the initial saving will create this scenario, and we don't want to send in this scenario
        logger.info("advance charges changed for lot of num/id #{lot.lot_num}/#{lot.id}")
        all_nil = charges.additional_fee.nil? && charges.additional_fee_vat.nil? &&
                  charges.labor.nil? && charges.labor_vat.nil? &&
                  charges.storage_amount.nil? && charges.storage_amount_vat.nil? &&
                  charges.tear_down_estimate.nil? && charges.tear_down_estimate_vat.nil? &&
                  charges.towing.nil? && charges.towing_vat.nil? &&
                  charges.yard_gate.nil? && charges.yard_gate_vat.nil? &&
                  charges.total_charges.nil? && charges.total_tax.nil?
        if all_nil
          logger.info("all charges are nil (not zero) for lot of num/id #{lot.lot_num}/#{lot.id}, this is not an actual modification")
          changed = false
        end
      end
      logger.info("advance_charges_modified? for lot of num/id #{lot.lot_num}/#{lot.id}: #{changed}")
      changed
    end 

    add_method_tracer :create_edit_gon_variables,             'Custom/VehiclesController#create_edit_gon_variables'
    add_method_tracer :setup_view_edit_permissions,           'Custom/VehiclesController#setup_view_edit_permissions'
    add_method_tracer :create_country_specific_gon_variables, 'Custom/VehiclesController#create_country_specific_gon_variables'
    add_method_tracer :check_pickup_order_permissions,        'Custom/VehiclesController#check_pickup_order_permissions'
    add_method_tracer :advance_charges_modified,              'Custom/VehiclesController#advance_charges_modified'
    add_method_tracer :filter_lot_attributes,                 'Custom/VehiclesController#filter_lot_attributes'
    add_method_tracer :tuneup_lots_based_on_state,            'Custom/VehiclesController#tuneup_lots_based_on_state'
end
