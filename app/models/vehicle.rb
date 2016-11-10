# -*- coding: utf-8 -*-
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

require 'open-uri'

class Vehicle < ActiveRecord::Base
  include AASM
  include ActionView::Helpers::NumberHelper
  include Addressable
  include ApplicationHelper
  include Auditable
  include CountryValidatable
  include DataTranslations
  include Documentable
  include ImageReorderable
  include Mailable
  include Maskable
  include MissingMethods
  include Notable
  include Rails.application.routes.url_helpers
  include Searchable
  include Uidable
  include MdsMember
  include Translatable 
  include ActiveResourceAssociatable 
  include Trimmable


  # Two constants for use in order_by scope
  SORT_ASCENDING = "asc"
  SORT_DESCENDING = "desc"

  # Keys to denote the available nested sorting options
  SORT_ADDRESS_CITY = "city"
  SORT_ADDRESS_STATE = "state_province"
  SORT_ADDRESS_ZIP = "zip"
  SORT_ADJUSTER_NAME = "claim_rep"
  SORT_APPROACHING_AUCTION = "approaching_auction"
  SORT_AUCTION_DATE = "auction_date"
  SORT_COLOR_NAME = "color"
  SORT_HOLD = "hold_for_pickup_or_sale"
  SORT_HOLD_DATE = "hold_for_pickup_or_sale_date"
  SORT_HOLD_REASON = "hold_for_pickup_or_sale_reason"
  SORT_LOCATION_NAME = "location"
  SORT_MEMBER_NAME = "member_name"
  SORT_ROW_LOCATION = "row_location"
  SORT_SALE_CONFIRMATION = "sale_confirmation_status"
  SORT_SELLER_NAME = "seller"
  SORT_SERVICE_ORDER_NAME = "service_order_name"
  SORT_SERVICE_ORDER_STATUS = "service_order_status"
  SORT_SERVICE_ORDER_UPDATED_DATE = "service_order_updated_date"
  SORT_VEHICLE_TYPE = "vehicle_type"
  SORT_NAME_OF_MODEL = "sort_name_of_model"
  SORT_NAME_OF_MAKE = "sort_name_of_make"
  SORT_BY_SOURCE = "source"
  SORT_BY_SUBHAULER = "subhauler"
  # Keys to denote special lot filtering options
  FILTER_ASSIGNED_TO_AUCTION = "assigned_to_auction"
  FILTER_SETTLEMENT_COMPLETE = "sold_lot_yard_left_date_present"

  # Possible values for 'keys'
  KEYS_YES = "YES"
  KEYS_NO = "NO"
  KEYS_NA = "NA"
  KEYS_UNKNOWN = "UNKNOWN"
  KEYS_VALUES = [ KEYS_YES, KEYS_NO, KEYS_UNKNOWN, KEYS_NA ]
  KEYS_YES_NO_NA = [ KEYS_YES, KEYS_NO, KEYS_NA]

  # Possible values for 'pickup'
  PICKUP_YES = "YES"
  PICKUP_NO = "NO"
  PICKUP_OFFSITE = "OFFSITE"
  PICKUP_VALUES = [ PICKUP_YES, PICKUP_NO, PICKUP_OFFSITE ]

  # Possible values for 'towable'
  TOWABLE_YES = "YES"
  TOWABLE_NO = "NO"
  TOWABLE_UNKNOWN = "UNKNOWN"
  TOWABLE_VALUES = [ TOWABLE_YES, TOWABLE_NO, TOWABLE_UNKNOWN ]


  FILTER_SETTLED_STILL_IN_YARD = "sold_lot_wtg_to_leave_yard"
  FILTER_WTG_FOR_SALE_CONFIRATION = "wtg_for_sale_confirmation"
  

  # CSV report constants
  AWAITING_SALE_DOCS = "awaiting_sale_docs"
  RECENT_VEHICLES = "recent"
  READY_FOR_AUCTION = "ready_for_auction"
  READY_FOR_SELLER_BILLING = "ready_for_seller_billing"
  SERVICE_ORDER_CSV = "service_orders"
  WAITING_FOR_BUYER_CHARGE_CONFIRMATION = "wtg_for_buyer_charge_confirmation"
  WAITING_TO_CLEAR_PICKUP = "wtg_to_clear_pickup"
  WAITING_FOR_DRIVER_DISPATCH = "wtg_for_driver_dispatch"
  WAITING_FOR_INVENTORY = "wtg_for_inventory"
  WAITING_FOR_SALE_CONFIRMATION = "wtg_for_sale_confirmation"
  WAITING_FOR_SETTLEMENT_CONFIRMATION = "wtg_for_settlement_confirmation"
  WAITING_FOR_TRIP_CONFIRMATION = "wtg_for_trip_confirmation"
  WAITING_FOR_TITLE = "wtg_for_title"

  # Euronorm field options Euro 1, Euro 2, ... , Euro 6
  EURONORM_OPTIONS = (1..6).map { |num| "Euro #{num}" }
  # Special characters are not allowed with VIN and Verify VIN input boxes.
  VALID_VIN_REGEX = /^[a-zA-Z0-9]*$/
  # Custom Make/Model/Trim should not contain # % < >
  VALID_MAKE_MODEL_TRIM = /^[^#%<>;]*$/
  #VAT Section field options
  VAT_SECTION_OPTIONS_SPAIN = ["R.E.B.U", "General"]
  VAT_SECTION_OPTIONS = ["§25a", "§12", "§5"]
  def self.vat_section_option
    if Employee.current.present? && Employee.current.operating_country.present? && Employee.current.operating_country.code == "ES"
      VAT_SECTION_OPTIONS_SPAIN 
    else
      VAT_SECTION_OPTIONS
    end
  end

  #Settlement Model field options
  #SETTLEMENT_MODEL_OPTIONS = ["Standard(Insurance)", "Standard(Non-Insurance)", "Vermittler"]
  #SETTLEMENT_MODEL = ["standard_insurance", "standard_non_insurance", "vermittler"]
  SETTLEMENT_MODEL_INSURANCE = "standard_insurance"
  SETTLEMENT_MODEL_NONINSURANCE = "standard_non_insurance"
  SETTLEMENT_MODEL_VERMITTLER = "vermittler"
  SETTLEMENT_MODEL_STANDARD = "standard"

  SETTLEMENT_MODELS  = [SETTLEMENT_MODEL_STANDARD, SETTLEMENT_MODEL_INSURANCE, SETTLEMENT_MODEL_NONINSURANCE, SETTLEMENT_MODEL_VERMITTLER]



  # Not stored in the database, but used as a flag to indicate when the
  # vehicle (lot) should be transitioned as a "sell now" sale.
  attr_accessor :sell_now

  # Use this to store the timestamp/lock version of the model
  attr_accessor :last_updated_at

  # Not stored in the database, but used as a flag to indicate that validations
  # should be bypassed because of a relist.
  attr_accessor :bypass_validations_because_of_relist
  #Needs to skip validation at the time of lot discrepancy approval.
  attr_accessor :skip_advance_charge_paid
  attr_accessor :custom_changes


  after_commit :send_to_copart
  before_save :add_attribute_changed_notes, :set_calculated_odometer_brand, 
              :upcase_vin, :update_sort_name_columns#, :set_valid_make_model

  #before_save :check_timestamp, :unless => :new_record?

  # Model relationships
  has_one :advance_charge, dependent: :destroy
  has_one :auction_datum, dependent: :destroy
  has_one :make, through: :model
  
  has_many :addresses, as: :addressable, dependent: :destroy
  has_many :bid_histories, dependent: :destroy
  has_many :documents, as: :documentable, dependent: :destroy
  # has_many :images, as: :imageable, dependent: :destroy
  has_many :member_charges
  has_many :notes, as: :notable, dependent: :destroy
  has_many :payment_received_details
  has_many :seller_charges, dependent: :destroy
  has_many :service_orders, dependent: :destroy
  has_many :trip_infos, dependent: :destroy
  has_one :api_error, -> { where(active: true).select("api_error_base_id, api_error_base_type, active, description, id") }, as: :api_error_base, dependent: :destroy
 
  # belongs_to yard and facility? Yes! =]
  # It's a matter of context, the YARD refers to
  # the Copart place of business responsible for this
  # vehicle (lot). Whereas the FACILITY is the physical
  # location of the vehicle (lot).
  belongs_to :abnormal_close_type
  belongs_to :adjuster, counter_cache: true
  belongs_to :btba_type
  # calculate from actual odometer_hour - we called usage 
  belongs_to :calculated_odometer_brand, class_name: "OdomBrand", foreign_key: "calculated_odometer_brand_id"
  belongs_to :color
  belongs_to :engine_output_unit, class_name: "Unit", foreign_key: "engine_output_unit_id"
  belongs_to :odometer_unit, class_name: "Unit", foreign_key: "odometer_unit_id" 
  belongs_to :documented_odometer_brand, class_name: "OdomBrand", foreign_key: "documented_odometer_brand_id"
  belongs_to :drive_train_type
  belongs_to :facility
  belongs_to :fuel_type
  belongs_to :hold_type
  belongs_to :insured
  belongs_to :lane
  belongs_to :loss_type
  belongs_to :member
  belongs_to :model
  belongs_to :trim
  belongs_to :original_doc_country, class_name: "Country", foreign_key: "original_doc_country_id"
  belongs_to :original_doc_type, class_name: "TitleType", foreign_key: "original_doc_type_id"
  belongs_to :original_odometer_brand, class_name: "OdomBrand", foreign_key: "original_odometer_brand_id"
  belongs_to :owner
  belongs_to :ownership_transfer_type
  belongs_to :pickup_location, class_name: "Facility", foreign_key: "pickup_location_id"
  belongs_to :primary_damage_type, class_name: "DamageType", foreign_key: "primary_damage_type_id"
  belongs_to :run_condition
  belongs_to :sale_confirmation_status
  belongs_to :sale_doc_country, class_name: "Country", foreign_key: "sale_doc_country_id"
  belongs_to :sale_doc_type, class_name: "TitleType", foreign_key: "sale_doc_type_id"
  belongs_to :secondary_damage_type, class_name: "DamageType", foreign_key: "secondary_damage_type_id"
  # belongs_to_activeresource :seller, counter_cache: true
  belongs_to :seller, counter_cache: true
  belongs_to :subhauler
  belongs_to :transmission_type
  belongs_to :vehicle_type
  belongs_to :yard
  belongs_to :yard_row, class_name: "YardRow", foreign_key: "yard_row_id"
  belongs_to :original_odometer_unit, class_name: "Unit", foreign_key: "original_odometer_unit_id"
  belongs_to :documented_odometer_unit, class_name: "Unit", foreign_key: "documented_odometer_unit_id"  
  belongs_to :weight_unit, class_name: "Unit", foreign_key: "weight_unit_id"  
  belongs_to :length_unit, class_name: "Unit", foreign_key: "length_unit_id"  


  # If we may edit/create it through the lot edit page
  # (not a pop up, like seller, but a form in-line, like pick up)
  # it should be declared here so we may pass the data on
  # to the classes for setting/validation.
  accepts_nested_attributes_for :adjuster, :advance_charge, :auction_datum, :facility, :hold_type, :insured,
                                :owner, :pickup_location, :trip_infos

  accepts_nested_attributes_for :service_orders, allow_destroy: true, reject_if: proc { |attributes| attributes['name'].blank? }


  # Valley day shun
  #   remember to update the I18n (language) yml files when
  #   adding, removing, or updating validations.
  validates :hold_for_pickup_date, datetime: true
  validates :sale_hold_action_date, datetime: true
  validates :first_registration_date, datetime: true
  validates :left_yard_date, datetime: true
  validates :sale_doc_given_to_buyer_date, datetime: true
  validates :additional_info, length: 2..4000, unless: "self.additional_info.blank?"
  validates :adjuster, presence: true
  validates :advance_charge_paid, inclusion: { in: [ true, false ] },
            if: ("!self.ok_pay_charge.blank? && self.pickup_required? && self.in_or_after_state?(:wtg_for_trip_confirmation) && " +
                 "!self.cancellation_pending? && !self.canceled? && !self.owner_retain_canceled? && !self.skip_advance_charge_paid == true")
  validates :btba_type, presence: true
  validates :buy_now, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 99999999.99 }, unless: "self.buy_now.blank?"
  validates :claim_ref_num, presence: true, length: { within: 2..50 }
  validates :color, presence: true,
            if: "!self.homeowner_group? && self.in_or_after_state?(:wtg_for_title) && !self.cancellation_pending? && !self.owner_retain_canceled? && !self.canceled?"
  validates :co2_emission, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 999999999, only_integer: true }, if: "self.co2_emission.present?"
  validates :custom_make, presence: true, if: "self.custom_make_enabled.present?"
  validates :custom_model, presence: true, if: "self.custom_model_enabled.present?"
  validates :cylinders, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 999999999, only_integer: true }, unless: "self.cylinders.blank?"
  validates :date_of_loss,datetime: true, presence: true, if: "self.seller_type_insurance?"
  validates :delivered_on_date, presence: true, if: "!self.pickup_required? && !self.offsite? && self.wtg_for_title?"
  validates :delivered_on_date,datetime: true
  validates :documented_odometer_hour, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 9999999 }, unless: "self.documented_odometer_hour.blank?"
  validates :estimated_cost_of_repair, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 99999999.99 }, unless: "self.estimated_cost_of_repair.blank?"
  validates :has_engine, inclusion: { in: [ true, false ] },
            if: "self.in_or_after_state?(:wtg_for_title) && !self.cancellation_pending? && !self.owner_retain_canceled? && !self.canceled?"
  validates :has_transmission, inclusion: { in: [ true, false ] },
            if: "self.in_or_after_state?(:wtg_for_title) && !self.cancellation_pending? && !self.owner_retain_canceled? && !self.canceled?"
  validates :high_bid_amount, presence: true, if: "self.in_or_after_state?(:wtg_for_buyer_charge_confirmation) && !self.cancellation_pending? && !self.owner_retain_canceled? && !self.canceled?"
  validates :high_bid_amount, numericality: { greater_than: 0, less_than_or_equal_to: 99999999.99 }, if: "self.high_bid_amount.present? && self.in_or_after_state?(:wtg_for_buyer_charge_confirmation) && !self.cancellation_pending? && !self.owner_retain_canceled? && !self.canceled?" 
  validates :hold_for_pickup_reason, presence: true, if: "self.hold_for_pickup?"
  validates :horsepower, numericality: { greater_than: 0, less_than_or_equal_to: 999999999, only_integer: true }, if: "self.horsepower.present?"
  validates :inventory_info_readable, inclusion: { in: [ true, false ] },
                                      if: "self.in_or_after_state?(:wtg_for_title) && !self.cancellation_pending? && !self.owner_retain_canceled? && !self.homeowner_group? && !self.canceled?"
  
  validates :item_num, presence: true, if: "self.auction_datum && self.auction_datum.auction_date && self.lot_awarded_from != 'cobalt'"

  validates :item_num, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 9999 },
                       if: "self.item_num.present?"
  
  validates :insured, presence: true, if: "self.seller.present? && self.seller.insurance_company?"
  validates :loss_type, presence: true
  validates :member_id, presence: true, if: "self.in_or_after_state?(:wtg_for_buyer_charge_confirmation) && !self.cancellation_pending? && !self.owner_retain_canceled? && !self.canceled?"
  validates :min_bid_reserve, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 99999999.99 }, unless: "self.min_bid_reserve.blank?"
  validates_absence_of :min_bid_reserve, if: "(self.btba_type.present? && self.btba_type.code == \"#{BtbaType::CODE_YES}\") && !self.cancellation_pending? && !self.canceled?"
  validates :model, presence: true, if: "!self.custom_model_enabled.present?"
  # Make/Model/Trim validations
  validates :custom_make, presence: true, if: "self.custom_make_enabled.present?"
  validates :custom_make, format: { with: VALID_MAKE_MODEL_TRIM, message: I18n.t("models.vehicle.errors.custom_make"), multiline: true},
                                  unless: "self.custom_make.blank?"
  validates :custom_make, length: { within: 1..55, message: I18n.t("models.vehicle.errors.custom_make") },
                                  unless: "self.custom_make.blank?"

  validates :custom_model, presence: true, if: "self.custom_model_enabled.present?"
  validates :custom_model, format: { with: VALID_MAKE_MODEL_TRIM, message: I18n.t("models.vehicle.errors.custom_model"), multiline: true},
                                  unless: "self.custom_model.blank?"
  validates :custom_model, length: { within: 1..100, message: I18n.t("models.vehicle.errors.custom_model") },
                                  unless: "self.custom_model.blank?"

  validates :custom_trim, format: { with: VALID_MAKE_MODEL_TRIM, message: I18n.t("models.vehicle.errors.custom_trim"), multiline: true},
                                  unless: "self.custom_trim.blank?"
  validates :custom_trim, length: { within: 1..100, message: I18n.t("models.vehicle.errors.custom_trim") },
                                  unless: "self.custom_trim.blank?"
  validates :license_plate_num, length: { maximum: 20 }, unless: "self.license_plate_num.blank?"
  validates :ok_pay_charge, inclusion: { in: [ true, false ] }, if: :should_validate_ok_pay_charge?
  validates :original_doc_country, presence: true,
            if: ("self.in_or_after_state?(:ready_for_auction) && self.ownership_transfer_type.present? " +
                 "&& self.ownership_transfer_type.apply_for_new_doc? && !self.homeowner_group?")
  validates :original_doc_state, format: { with: /(^[\p{L} \.'\-\d]+$)/,
                                           message: [ I18n.t("controllers.vehicle.error.invalid_character") ] },
                                 unless: "self.original_doc_state.blank?"
  validates :original_doc_type, presence: true,
            if: ("self.in_or_after_state?(:ready_for_auction) && self.ownership_transfer_type.present? " +
                 "&& self.ownership_transfer_type.apply_for_new_doc? && !self.homeowner_group?")
  validates :original_odometer_hour, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 9999999 }, unless: "self.original_odometer_hour.blank?"
  validates :owner, presence: true, if: "self.seller.present? && self.seller.insurance_company?"
  validates :ownership_transfer_type, presence: true,
            if: "self.in_or_after_state?(:ready_for_auction) && !self.cancellation_pending? && !self.owner_retain_canceled? && !self.homeowner_group? && !self.canceled?"
  validates :pickup, inclusion: { in: PICKUP_VALUES }

  validates :pickup_date, datetime: true
  validates :pickup_date, presence: true,
            if: "self.pickup_required? && self.in_or_after_state?(:wtg_for_trip_confirmation) && !self.cancellation_pending? && !self.owner_retain_canceled? && !self.canceled?"
  validates :pre_accident_value, presence: true,
                                 numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 99999999.99 },
                                 unless: "self.pre_accident_value.blank?"
  validates :primary_damage_type, presence: true, if: "self.in_or_after_state?(:wtg_for_title) && !self.cancellation_pending? && !self.owner_retain_canceled? && !self.canceled?"
  validates :promised_pickup_date, datetime: true, presence: true, if: "self.pickup_required? && !self.cancellation_pending? && !self.owner_retain_canceled? && !self.canceled?"
  validates :received_employee_name, presence: true, if: "self.in_or_after_state?(:wtg_for_title) && !self.cancellation_pending? && !self.offsite? && !self.owner_retain_canceled? && !self.canceled?"
  validates :residual_value, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 99999999.99 }, unless: "self.residual_value.blank?"
  validates :purchase_price, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 99999999.99 }, unless: "self.purchase_price.blank?"
  validates :run_condition, presence: true, if: "self.in_or_after_state?(:wtg_for_title) && !self.cancellation_pending? && !self.owner_retain_canceled? && !self.homeowner_group? && !self.canceled?"
  validates :sale_action_approved_by, presence: true,
            if: "!self.cancellation_pending? && !self.owner_retain_canceled? && !self.bypass_validations_because_of_relist && self.in_or_after_state?(:wtg_for_buyer_charge_confirmation) && self.sale_confirmation_need_approval? && !self.canceled?"
  validates :sale_confirmation_status, presence: true,
            if: "self.in_or_after_state?(:wtg_for_buyer_charge_confirmation) && !self.cancellation_pending? && !self.owner_retain_canceled? && !self.canceled?"
  validates :sale_doc_application_date, datetime: true, presence: true,
            if: ("self.in_or_after_state?(:ready_for_auction) && self.ownership_transfer_type.present? " +
                 "&& self.ownership_transfer_type.apply_for_new_doc? && !self.homeowner_group?")
  validates :sale_doc_at_copart_date, datetime: true
  validates :sale_doc_at_copart_date, presence: true,
            if: ("!self.homeowner_group? && self.ownership_transfer_type.present? &&" +
                 "((self.in_or_after_state?(:ready_for_auction) && (self.ownership_transfer_type.apply_for_new_doc? || self.ownership_transfer_type.sell_on_doc_received?)) || "+
                 " (self.in_or_after_state?(:ready_for_seller_billing) && self.ownership_transfer_type.sell_on_doc_pending?))")
  validates :sale_doc_country, presence: true,
            if: ("self.in_or_after_state?(:ready_for_auction) && !self.homeowner_group? && self.ownership_transfer_type.present? && " +
                 "(self.ownership_transfer_type.apply_for_new_doc? || self.ownership_transfer_type.sell_on_doc_received? || self.ownership_transfer_type.sell_on_doc_pending?)")
  validates :sale_doc_state, format: { with: /(^[\p{L} \.'\-\d]+$)/,
                                       message: [ I18n.t("controllers.vehicle.error.invalid_character") ] },
            if: "!self.sale_doc_state.blank? && !self.cancellation_pending? && !self.owner_retain_canceled?"
  validates :sale_hold_action_date, datetime: true, absence: true, if: "self.auction_datum.present? && self.auction_datum.auction_date.present?"
  validates :sale_hold_comment, presence: true, if: "self.hold_for_sale?"
  validates :seller, presence: true
  validates :towable, inclusion: { in: TOWABLE_VALUES }
  validates :usage, presence: true, if: "self.inventory_info_readable?"
  validates :usage, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 9999999 },
                    unless: "self.usage.blank? && (self.inventory_info_readable.nil? || self.inventory_info_readable == false)"
  validates :vat_applicable, inclusion: { in: [ true, false ] }
  validates :vehicle_description, presence: true, length: { within: 0..200 }, if: :homeowner_group?
  validates :vehicle_type, presence: true
  validates :vin_serial_num, length: { maximum: 17 }, unless: "self.vin_serial_num.blank?"
  validates :vin_serial_num, presence: true, if: "self.in_or_after_state?(:wtg_for_title) && !self.cancellation_pending? && !self.owner_retain_canceled? && !self.homeowner_group? && !self.canceled?"
  validates :verify_vehicle_identification_num, format: { with: VALID_VIN_REGEX, multiline: true}, unless: "self.verify_vehicle_identification_num.blank?"
  validates :yard, presence: true
  validates :year, inclusion: { in: 1900..(Time.zone.now.year + 2) }, numericality: true, unless: :homeowner_group?
  validates :year_of_manufacture, inclusion: { in: 1900..Time.zone.now.year }, numericality: true, unless: "self.homeowner_group? || self.year_of_manufacture.blank?"
  validates :date_claim_reported, datetime: true
  
  # Custom validations
  validate :validate_auction_datum # Auction data validation
  validate :validate_cubic_capacity
  validate :validate_custom_make
  #validate :validate_custom_model
  #validate :validate_custom_trim
  validate :validate_daily_storage_dates
  validate :validate_date_claim_reported
  validate :validate_dates_cannot_be_in_the_past, unless: "self.bypass_validations_because_of_relist"
  validate :validate_dates_cannot_be_in_the_future, unless: "self.bypass_validations_because_of_relist"
  validate :validate_image_present_for_auction # Can't have auction date with no images
  validate :validate_item_num # Item number should be unique per auction
  validate :validate_keys_values # validate in multiple conditions
  validate :validate_make_code
  validate :validate_offsite_facility # Offsite facility validation
  validate :validate_pickup_location # Pickup location validation
  validate :validate_registration_certificate_num, if: "!self.cancellation_pending? && !self.owner_retain_canceled?" # Registration certificate number validation
  validate :validate_sale_doc_state, if: "self.in_or_after_state?(:ready_for_auction) && !self.cancellation_pending? && !self.owner_retain_canceled?" #Sale document State
  validate :validate_registration_num
  validate :validate_sale_doc_type # Sale document type validation
  validate :validate_scheduled_pickup_date_cannot_be_in_the_past
  validate :validate_secondary_damage_type
  validate :validate_subhauler_present # Subhauler validation
  validate :validate_unique_vin_serial_num, unless: "self.bypass_validations_because_of_relist" # VIN should be unique when compared to open lots for this lot's country
  validate :validate_verify_vehicle_identification_num # VIN verify field validation
  validate :validate_member_charges_amount
  validate :validate_seller_charges_amount
  validate :validate_member_paid
  validate :validate_storage_thru_date
  validate :validate_storage_from_date
  validate :validate_vat_section
  validate :validate_settlement_model
  validate :validate_yard_row_location ,if: "self.in_or_after_state?(:wtg_for_title)"
  validate :validate_sale_doc_at_copart_date
  validate :validate_vin_serial_num
  validate :validate_gross_vehicle_weight
  validate :validate_vehicle_length
  

  ####################
  # Custom validations
  ####################

  def validate_gross_vehicle_weight
    if self.gross_vehicle_weight.present?
      if !self.gross_vehicle_weight.match(/^[0-9,.]+$/).present?
        self.errors.add(:gross_vehicle_weight, I18n.t("models.vehicle.errors.gross_vehicle_weight_range"))
      elsif (self.gross_vehicle_weight.to_i < 1 || self.gross_vehicle_weight.to_i > 999999.99)
        self.errors.add(:gross_vehicle_weight, I18n.t("models.vehicle.errors.gross_vehicle_weight_range"))
      end
    end
  end

  def validate_vehicle_length
    if self.vehicle_length.present?
      if !self.vehicle_length.match(/^[0-9,.]+$/).present?
        self.errors.add(:vehicle_length, I18n.t("models.vehicle.errors.vehicle_length_range"))
      elsif (self.vehicle_length.to_i < 1 || self.vehicle_length.to_i > 999999.99)
        self.errors.add(:vehicle_length, I18n.t("models.vehicle.errors.vehicle_length_range"))
      end
    end
  end

  def validate_yard_row_location   
    if !self.yard_row_id.present? && !self.cancellation_pending? && !self.offsite? && !self.owner_retain_canceled? && !self.canceled?
      self.errors.add(:yard_row, I18n.t("models.vehicle.errors.required"))
    end
  end

  def validate_vat_section   
    country_code = self.get_country_code
    
    if (country_code == "DE" || country_code == "ES") && !self.vat_section.present? && !self.cancellation_pending? && !self.owner_retain_canceled? && !self.canceled?
      self.errors.add(:vat_section, I18n.t("models.vehicle.errors.required"))
    end

  end

  def validate_settlement_model   
    country_code = self.get_country_code
    
    if (country_code == "DE" || country_code == "ES") && !self.settlement_model.present? && !self.cancellation_pending? && !self.owner_retain_canceled? && !self.canceled?
      self.errors.add(:settlement_model, I18n.t("models.vehicle.errors.required"))
    end

  end 

  def validate_cubic_capacity
    self.errors.delete(:cubic_capacity)
    # must be present if in or after wtg_for_title
    if self.cubic_capacity.nil?
      if self.automobile_group? && self.in_or_after_state?(:wtg_for_title) && !self.cancellation_pending? && !self.owner_retain_canceled? && self.automobile_group? && !self.canceled?
        self.errors.add(:cubic_capacity, I18n.t("activerecord.errors.models.vehicle.attributes.cubic_capacity.blank"))
      end
    # if present, must not be longer than 6 digits
    elsif self.cubic_capacity.to_s.length > 6
      self.errors.add(:cubic_capacity, I18n.t("activerecord.errors.models.vehicle.attributes.cubic_capacity.too_long"))
    end
  end

  def validate_registration_num
    country_id = 
      if Employee.current.present?
        Employee.current.operating_country_id
      elsif self.facility.present?
        self.facility.country_id
      else
        nil
      end

    if !country_id.nil?
      country = Country.find(country_id)
      country_code = country.code
    end
    
    if country_code == "IN" && !homeowner_group? && !self.cancellation_pending? && !self.owner_retain_canceled? && !self.canceled?
      if self.in_or_after_state?(:ready_for_auction) && !self.vehicle_registration_num.present?
        self.errors.add(:vehicle_registration_num, I18n.t("models.vehicle.errors.required"))
      end
      if !registration_num_valid?(self.vehicle_registration_num)
        self.errors.add(:vehicle_registration_num, I18n.t("models.vehicle.errors.invalid"))
      end
    end
  end


  def validate_auction_datum
    if self.auction_datum.present? && self.auction_datum.auction_date.present? && self.hold_for_sale?
      self.errors.add(:"auction_datum.auction_date", I18n.t("activerecord.errors.models.auction_datum.attributes.auction_date.present_with_sale_hold"))
    end

    if self.auction_datum.present? && self.auction_datum.auction_date.present? && self.has_approved_service_orders?
      self.errors.add(:"auction_datum.auction_date", I18n.t("models.vehicle.errors.service_order_must_be_completed"))
    end

    # validate if can assign date to auction or not when submit 
    auction_date_values = self.auction_datum.present? ? self.auction_datum.auction_date_change : []
    if self.ready_for_auction? && !auction_date_values.blank? &&
       auction_date_values[0].blank? && is_valid_date(auction_date_values[1], "%d.%m.%Y") && 
       self.service_orders.joins(:service_order_details).where("service_order_details.status = ? AND service_orders.priority = ?",
                                                               ServiceOrder::SO_STATUS_APPROVED,
                                                               ServiceOrder::SO_PRIORITY_HIGH).count > 0
      self.errors.add(:"auction_datum.auction_date", I18n.t("models.vehicle.errors.service_order_must_be_completed"))
    end
  end


  def validate_advance_charges
    if self.advance_charge.present? && !self.owner_retain_canceled? && !self.canceled?
      self.advance_charge.validate_payments(:wtg_for_trip_confirmation)
      
      # Not sure why we have to manually add the "advance_charge." prefix to any
      # advance charge errors here when we don't seem to have to do it for any
      # other later state transitions. This makes it work, but further investigation
      # should be done.
      self.advance_charge.errors.each do |error, msg|
        self.errors.add(:"advance_charge.#{error.to_s}", msg)
      end

      # Add an error if OK to pay charges is 'Yes' but no advance charges exist (they're all zero).
      if self.ok_pay_charge? && (self.advance_charge.nil? || self.advance_charge.all_charges_zero?)
        self.errors.add(:ok_pay_charge, I18n.t("activerecord.errors.models.vehicle.attributes.ok_pay_charge.total_charges_zero"))
      end
    end
  end

  # Validate input for custom make
  def validate_custom_make
    employee = Employee.current
    country_id =
        if employee.present? && employee.operating_country_id.present?
          employee.operating_country_id
        elsif self.facility.present?
          self.facility.country_id
        else
          nil
        end
    country = Country.find(country_id) if country_id.present?
    if self.custom_make_enabled? && self.custom_make.present?
      # Add errors if make is already available for current country
      if country.present? && country.makes.where("LOWER(name) = ?", self.custom_make.strip.downcase).present? && self.vehicle_type.makes.where("LOWER(name) = ?", self.custom_make.strip.downcase).present?
        self.errors.add(:custom_make, I18n.t("activerecord.errors.models.vehicle.attributes.custom_make_exists"))
      end
    end
  end

  # Validate input for custom model
  def validate_custom_model
    employee = Employee.current
    country_id =
        if employee.present? && employee.operating_country_id.present?
          employee.operating_country_id
        elsif self.facility.present?
          self.facility.country_id
        else
          nil
        end
    country = Country.find(country_id) if country_id.present?
    if self.custom_model_enabled? && self.custom_model.present?
      # Add errors if model is already available for current country
      if country.present? && country.models.where("LOWER(name) = ? and vehicle_type_id = ?", self.custom_model.strip.downcase, self.vehicle_type_id).present?
        self.errors.add(:custom_model, I18n.t("activerecord.errors.models.vehicle.attributes.custom_model_exists"))
      end
    end
  end

  # Validate input for custom model
  def validate_custom_trim
    employee = Employee.current
    country_id =
        if employee.present? && employee.operating_country_id.present?
          employee.operating_country_id
        elsif self.facility.present?
          self.facility.country_id
        else
          nil
        end
    country = Country.find(country_id) if country_id.present?
    if self.custom_trim_enabled? && self.custom_trim.present? && !self.custom_model_enabled?
      # Add errors if model is already available for current company
      if country.present? && country.trims.where("LOWER(name) = ? and model_id = ?", self.custom_trim.strip.downcase, self.model.id).present?
        self.errors.add(:custom_trim, I18n.t("activerecord.errors.models.vehicle.attributes.custom_trim_exists"))
      end
    end
  end  

  def validate_daily_storage_dates
    if self.pickup_required? && self.advance_charge.present?
      daily_storage = self.advance_charge.storage_daily
      if daily_storage
        storage_from_date = self.advance_charge.storage_from_date
        if storage_from_date.present? && self.advance_charge.storage_thru_date && (storage_from_date > self.advance_charge.storage_thru_date)
          self.errors.add(:storage_from_date, I18n.t("activerecord.errors.models.vehicle.attributes.storage_from_date.before_storage_to_date"))
        end
      end
    end
  end


  def validate_image_present_for_auction
    if self.ready_for_auction? &&
       self.auction_datum.present? && 
       self.auction_datum.auction_date.present? &&
       self.images.empty? #Add Errors
      self.errors.add(:images, I18n.t("controllers.vehicle.error.image_missing"))
    end
  end


  def validate_item_num
    if self.auction_datum.present? && 
       self.yard.present? &&
       self.auction_datum.sale_time.present? &&
       self.item_num.present?
      # our lot is in an auction with a number, so let's check it
      lot_count = Vehicle.yard(self.yard.id)
                         .sale_time(self.auction_datum.sale_time)
                         .where("item_num = ? and lot_num != ?", self.item_num, self.lot_num).count
      self.errors.add(:item_num, I18n.t("controllers.vehicle.error.item_num_unique")) if lot_count > 0

      # vehicle_list.each do |vehicle|
      #   if vehicle.id != self.id && 
      #      vehicle.item_num == self.item_num
      #     # this isn't our lot, but the number is the same, add error
      #     self.errors.add(:item_num, I18n.t("controllers.vehicle.error.item_num_unique"))
      #     break
      #   end
      # end
    end
  end


  def validate_make_code
    # If the make is the 'Unknown' make do not allow transition
    if self.in_or_after_state?(:wtg_for_title) && self.model.present? && self.model.make.present?
      if self.model.make.code == Make::UNKNOWN_MAKE_CODE
        self.errors.add(:make, I18n.t("controllers.vehicle.transition_failures.known_make_required"))
      end
    end
  end


  def validate_offsite_facility
    if self.offsite? && self.facility.nil?
      self.errors.add(:offsite_facility, I18n.t("models.vehicle.errors.required"))
    end
  end


  def validate_pickup_location
    if self.pickup_required? && self.pickup_location.nil?
      self.errors.add(:pickup_location, I18n.t("models.vehicle.errors.required"))
    end
  end


  def validate_keys_values
    if !self.cancellation_pending? && !self.owner_retain_canceled? && !self.canceled?
      if self.in_or_after_state?(:wtg_for_title) && self.keys == KEYS_UNKNOWN
        self.errors.add(:keys, I18n.t("models.vehicle.errors.cannot_select_unknown"))
      elsif self.in_or_after_state?(:wtg_for_title) && !(KEYS_YES_NO_NA.include? self.keys)
        self.errors.add(:keys, I18n.t("models.vehicle.errors.required"))
      elsif !(KEYS_VALUES.include? self.keys)
        self.errors.add(:keys, I18n.t("models.vehicle.errors.required"))
      end
    end
  end


  def validate_registration_certificate_num
    
    if self.in_or_after_state?(:ready_for_auction) && !self.homeowner_group? && self.ownership_transfer_type.present?
      if self.ownership_transfer_type.apply_for_new_doc?
        if self.registration_certificate_num.blank?
          self.errors.add(:registration_certificate_num, I18n.t("models.vehicle.errors.required"))
        end
      elsif self.ownership_transfer_type.sell_on_doc_received? || self.ownership_transfer_type.sell_on_doc_pending?
        if self.sale_doc_at_copart_date.present? && self.registration_certificate_num.blank?
          self.errors.add(:registration_certificate_num, I18n.t("models.vehicle.errors.required"))
        end
      end
    end  
    if self.facility.present? && self.facility.country.code == 'IN' && self.in_or_after_state?(:ready_for_auction)
      if self.registration_certificate_num.blank?
        self.errors.add(:registration_certificate_num, I18n.t("models.vehicle.errors.required"))  
      end  
    end
  end

  def validate_sale_doc_state
    if self.facility.present? && self.facility.country.code == 'IN' && self.ownership_transfer_type.present? && self.sale_doc_state.blank?
      self.errors.add(:sale_doc_state, I18n.t("models.vehicle.errors.required"))  
    end
  end     


  def validate_sale_doc_type
    if self.in_or_after_state?(:ready_for_auction)
      if self.homeowner_group?
        if self.sale_doc_type.nil?
          self.errors.add(:sale_doc_type, I18n.t("models.vehicle.errors.required"))
        end
      else
        if self.sale_doc_type.nil? && self.ownership_transfer_type.present? &&
           (self.ownership_transfer_type.apply_for_new_doc? || self.ownership_transfer_type.sell_on_doc_received? || self.ownership_transfer_type.sell_on_doc_pending?)
          self.errors.add(:sale_doc_type, I18n.t("models.vehicle.errors.required"))
        end
      end
    end
  end


  def validate_secondary_damage_type
    if self.secondary_damage_type.present? && self.primary_damage_type.present? &&
       (self.secondary_damage_type.code == self.primary_damage_type.code)
      self.errors.add(:secondary_damage_type,
                      I18n.t("activerecord.errors.models.damage_type.attributes.code.same_primary_and_secondary_damage_types"))
    end
  end


  def validate_subhauler_present
    if ((self.in_or_after_state?(:wtg_for_driver_dispatch) && self.pickup_date?) || (self.in_or_after_state?(:wtg_for_trip_confirmation))) && self.subhauler.nil? && !self.cancellation_pending? && !self.owner_retain_canceled? && self.pickup_required? && !self.canceled?
      self.errors.add(:subhauler, I18n.t("activerecord.errors.models.subhauler.attributes.name.blank"))
    end
  end


  def validate_unique_vin_serial_num
    if self.vin_serial_num.present?
      country_id = 
        if Employee.current.present?
          Employee.current.operating_country_id
        elsif self.yard.present? && self.yard.facility.present?
          self.yard.facility.country_id
        else
          nil
        end
      vehicles_with_dup_vin =
        if self.persisted?
          Vehicle.not_closed
                 .not_canceled
                 .country(country_id)
                 .where("vehicles.vin_serial_num = ? AND vehicles.id != ?", self.vin_serial_num, self.id)
        else
          Vehicle.not_closed.not_canceled.country(country_id).where("vehicles.vin_serial_num = ?", self.vin_serial_num)
        end
      if !vehicles_with_dup_vin.empty?
        self.errors.add(:vin_serial_num, I18n.t("models.vehicle.errors.vin_unique"))
      end
    end
  end


  def validate_verify_vehicle_identification_num
    if self.in_or_after_state?(:ready_for_auction) && !self.cancellation_pending? &&
       !self.owner_retain_canceled? && !self.homeowner_group? && !self.canceled?
      if self.verify_vehicle_identification_num.blank?
        self.errors.add(:verify_vehicle_identification_num, I18n.t("models.vehicle.errors.required"))
      elsif self.verify_vehicle_identification_num.casecmp(self.vin_serial_num) != 0
        self.errors.add(:verify_vehicle_identification_num, I18n.t("models.vehicle.errors.id_mismatch"))
      end
    end
  end


  def validate_scheduled_pickup_date_cannot_be_in_the_past
    # only for scheduled trip date
    if self.pickup_required? && self.id? && self.in_or_after_state?(:wtg_for_driver_dispatch) && self.pickup_date.present? && self.pickup_date_changed? && self.pickup_date < Date.today
      self.errors.add(:pickup_date, I18n.t("models.vehicle.errors.date_cannot_be_past"))
    end
  end

 
  # validated after driver_dispatch or after
  def validate_dates_cannot_be_in_the_past
    if self.promised_pickup_date.present? && self.promised_pickup_date_changed? && (self.promised_pickup_date.in_time_zone < Date.today.in_time_zone) && self.in_or_before_state?(:wtg_for_trip_confirmation)
      self.errors.add(:promised_pickup_date, I18n.t("models.vehicle.errors.date_cannot_be_past"))
    end
    if self.hold_for_pickup_date.present? && self.hold_for_pickup_date_changed? && self.hold_for_pickup_date < Date.today
      self.errors.add(:hold_for_pickup_date, I18n.t("models.vehicle.errors.date_cannot_be_past"))
    end
    if self.sale_hold_action_date.present? && self.sale_hold_action_date_changed? && self.sale_hold_action_date < Date.today
      self.errors.add(:sale_hold_action_date, I18n.t("models.vehicle.errors.date_cannot_be_past"))
    end 
  end


  def validate_dates_cannot_be_in_the_future
    trip_info = self.trip_infos.present? ? self.trip_infos.first : nil
    if !self.pickup_required? && self.delivered_on_date.present? && self.delivered_on_date_changed? && self.delivered_on_date > Date.today
      self.errors.add(:delivered_on_date, I18n.t("models.vehicle.errors.date_cannot_be_future"))
    end

    if self.left_yard_date.present? && self.left_yard_date_changed? && (self.left_yard_date > Date.today)
      self.errors.add(:left_yard_date, I18n.t("models.vehicle.errors.date_cannot_be_future"))
    end

    if self.date_of_loss.present? && self.date_of_loss_changed? && self.date_of_loss > Date.today
      self.errors.add(:date_of_loss, I18n.t("models.vehicle.errors.date_cannot_be_future"))
    end

    if self.date_claim_reported.present? && self.date_claim_reported_changed? && self.date_claim_reported > Date.today
      self.errors.add(:date_claim_reported, I18n.t("models.vehicle.errors.date_cannot_be_future"))
    end

    if self.first_registration_date.present? && self.first_registration_date_changed? && self.first_registration_date > Date.today
      self.errors.add(:first_registration_date, I18n.t("models.vehicle.errors.date_cannot_be_future"))
    end

    if self.sale_doc_at_copart_date.present? && self.sale_doc_at_copart_date_changed? && self.sale_doc_at_copart_date > Date.today
      self.errors.add(:sale_doc_at_copart_date, I18n.t("models.vehicle.errors.date_cannot_be_future"))
    end
    if self.pickup_required? && (self.aasm.from_state.to_s != "wtg_for_driver_dispatch" && self.wtg_for_trip_confirmation?) && trip_info.present? && trip_info.trip_date.present? && trip_info.trip_date > Date.today
      self.errors.add("trip_infos.trip_date", I18n.t("models.vehicle.errors.date_cannot_be_future"))
    end
  end


  def validate_date_claim_reported
    if self.date_of_loss.present? && self.date_claim_reported.present? && self.seller_type_insurance? && self.date_of_loss > self.date_claim_reported
      self.errors.add(:date_claim_reported, I18n.t("models.vehicle.errors.date_claim_reported_constraint"))
    end
  end


  # validate can assign auciton_date depending on if there are open service_orders
  def validate_can_assign_auction_date
    if self.ready_for_auction? && 
      (self.auction_datum.blank? || (self.auction_datum.present? && self.auction_datum.auction_date.blank? )) &&
      self.service_orders.joins(:service_order_details).where("service_order_details.status=? AND service_orders.priority=?", ServiceOrder::SO_STATUS_APPROVED, ServiceOrder::SO_PRIORITY_HIGH).count > 0
        self.errors.add(:"auction_datum.auction_date", I18n.t("models.vehicle.errors.service_order_must_be_completed"))
    end
  end

  def validate_member_charges_amount
    self.member_charges.each_with_index do |ch, i|
      if ch.charge_amount < 0 || ch.charge_amount > 999999999.99
        self.errors.add(:"member_charges_#{i}", I18n.t("models.vehicle.errors.charge_invalid"))
      end
    end
  end

  def validate_seller_charges_amount
    self.seller_charges.each_with_index do |ch, i|
      if ch.charge_amount < 0 || ch.charge_amount > 999999999.99
        self.errors.add(:"seller_charges_#{i}", I18n.t("models.vehicle.errors.charge_invalid"))
      end
    end
  end

  def validate_member_paid
   if self.wtg_for_settlement_confirmation? && self.member_id.present? && !self.owner_retain_canceled? && self.member_paid.nil? && !self.canceled?
      self.errors.add(:member_paid, I18n.t('views.vehicle.seller_billing.buyer_paid_transition_error'))
   end
  end

  def validate_storage_thru_date
    if(self.pickup_required? && !self.ok_pay_charge.blank? && self.advance_charge.storage_daily? && self.advance_charge.storage_thru_date.blank? && self.in_or_after_state?(:wtg_for_trip_confirmation) && !self.cancellation_pending? && !self.owner_retain_canceled? && !self.canceled?)
      self.errors.add(:storage_thru_date, I18n.t("activerecord.errors.models.vehicle.attributes.storage_thru_date.blank"))
    elsif(!self.pickup_required? && !self.ok_pay_charge.blank? && self.advance_charge.storage_daily? && self.advance_charge.storage_thru_date.blank? && self.in_or_after_state?(:wtg_for_title) && !self.cancellation_pending? && !self.owner_retain_canceled? && !self.canceled?)
      self.errors.add(:storage_thru_date, I18n.t("activerecord.errors.models.vehicle.attributes.storage_thru_date.blank"))
    end
  end

  def validate_storage_from_date    
    if(!self.ok_pay_charge.blank? && self.advance_charge.storage_daily? && self.advance_charge.storage_from_date.blank?)
      self.errors.add(:storage_from_date, I18n.t("activerecord.errors.models.vehicle.attributes.storage_from_date.blank"))
    end
  end

  def validate_sale_doc_at_copart_date
    if self.sale_doc_at_copart_date.present? && self.sale_doc_at_copart_date < self.assignment_date
      self.errors.add(:sale_doc_at_copart_date, I18n.t("models.vehicle.errors.date_cannot_be_earlier_assignment_date"))
    end
  end

  def validate_vin_serial_num
    unless VALID_VIN_REGEX.match self.vin_serial_num
      self.errors.add(:vin_serial_num, I18n.t("models.vehicle.errors.invalid_vin"))
    end
  end

  def handle_conflicts(last_updated_at)
    if last_updated_at.present?
      last_updated_at_long = Time.parse(last_updated_at).to_i
      updated_at_long = self.updated_at.to_i
      logger.info(" handle_conflicts, last_upated_at in long -> #{Time.parse(last_updated_at).to_i}, updated_at -> #{updated_at_long}")
      if last_updated_at_long < updated_at_long
        self.errors.add(:update_conflict, I18n.t("views.shared.record_locking.update_conflict"))
      end
    end
  end


  ###########################
  # End of custom validations
  ###########################
  scope :active_lot_states, -> { for_employee(Employee.current).where("state != 'closed'").select("distinct state").map(&:state) }
  scope :auction_date, -> (auction_date) {
    joins(:auction_datum).where("auction_data.auction_date = ?", auction_date).references(:auction_data).order(:item_num) unless auction_date.blank?
  }
  scope :sale_time, -> (sale_time) {
    joins(:auction_datum).where("auction_data.sale_time = ?", sale_time) unless sale_time.blank?
  }
  scope :buyer_invoices_needed, -> { where("vehicles.state = 'wtg_for_settlement_confirmation' AND vehicles.buyer_billing_complete = 0 AND vehicles.member_id IS NOT NULL") }
  scope :country, -> (country_id) {
    joins(yard: :facility).where("facilities.country_id = ?", country_id).references(:vehicles) unless country_id.nil?
  }
  scope :edited_by_employee, -> (employee) {
    joins(:notes).where("notes.created_by_id = ?", employee.id).references(:notes).uniq unless employee.nil?
  }
  scope :facility, -> (facility_id) { where("vehicles.facility_id = ?", facility_id).references(:vehicles) unless facility_id.nil? }
  scope :for_employee, -> (employee) {
    joins(yard: :employees).where("employees.id = ?", employee.id).references(:employees) unless employee.nil?
  }
  scope :has_service_order, -> { joins(:service_orders).uniq }
  scope :not_canceled, -> { where("vehicles.state != ?", "canceled").references(:vehicles) }
  scope :not_closed, -> { where("vehicles.state != ?", "closed").references(:vehicles) }
  scope :pending_lots, -> {where(custom_make_model_approved: false)} # Scope to get lots that having status pending
  scope :seller, -> (seller_id) { where("vehicles.seller_id = ?", seller_id).references(:vehicles) unless seller_id.nil? }
  scope :member, -> (member_id) { where("vehicles.member_id = ?", member_id).references(:vehicles) unless member_id.nil? }
  scope :seller_invoices_needed, -> { where(state: :wtg_for_settlement_confirmation, seller_billing_complete: false) }
  scope :state, -> (state) do
    if state.nil? || !Vehicle.aasm.states.any? { |s| s.name.to_s == state }
      # Special case handling for conditional filtering
      if state == FILTER_WTG_FOR_SALE_CONFIRATION
        where(state: 'ready_for_auction', sale_confirmed: true)
      elsif state == FILTER_SETTLED_STILL_IN_YARD
        where(state: 'wtg_to_leave_yard', sale_confirmed: true, left_yard_date: nil)
      elsif state == FILTER_SETTLEMENT_COMPLETE
        where("(vehicles.state = ?) AND (vehicles.sale_confirmed = ?) AND (vehicles.left_yard_date IS NOT NULL)", "wtg_to_leave_yard", true).references(:vehicles)
      elsif state == FILTER_ASSIGNED_TO_AUCTION
        joins(:auction_datum).where("vehicles.state = ? AND auction_data.auction_date IS NOT NULL", 'ready_for_auction').references(:vehicles)
      else
        not_canceled.not_closed
      end
    else
      where(state: state)
    end
  end
  scope :updated_after, -> (updated_after_datetime) { where("vehicles.updated_at > ?", updated_after_datetime).references(:vehicles) }
  scope :yard, -> (yard_id) { where("vehicles.yard_id = ?", yard_id).references(:vehicles) unless yard_id.nil? }
  scope :order_for_auction_page, -> (should_apply) {
    joins("LEFT OUTER JOIN auction_data ON vehicles.id = auction_data.vehicle_id").order("auction_data.auction_date, vehicles.item_num") if should_apply
  }
  scope :ordered_by, -> (column_name, direction, applying_auction_order, state_as_string = nil) do
    sort_order = (direction == SORT_DESCENDING) ? "DESC" : "ASC"
    if applying_auction_order
      # Other sorting (auction page initial load) is being applied
    elsif column_name.nil? || !Vehicle.column_names.any? { |name| name == column_name }
      # Special case handling for nested sort (i.e. vehicle.model.name when column is model)
      # Adjuster Name
      if column_name == SORT_ADJUSTER_NAME
        joins(:adjuster).order("adjusters.name #{sort_order}, vehicles.id")
      # Approaching Auction (locked lots)
      elsif column_name == SORT_APPROACHING_AUCTION
        joins("LEFT OUTER JOIN auction_data as auction_data3 ON vehicles.id = auction_data3.vehicle_id").order("-auction_data3.auction_date #{sort_order}, vehicles.id")
      # Auction Date
      elsif column_name == SORT_AUCTION_DATE
        joins("LEFT OUTER JOIN auction_data as auction_data3 ON vehicles.id = auction_data3.vehicle_id and auction_data3.auction_date is not null").order("auction_data3.auction_date #{sort_order}, vehicles.id")
      # Color
      elsif column_name == SORT_COLOR_NAME
        joins("LEFT OUTER JOIN colors ON colors.id = vehicles.color_id").order("colors.description #{sort_order}, vehicles.id")
        #order("#{column_name} #{sort_ord er}, vehicles.id")
      # Hold (pickup or sale)
      elsif column_name == SORT_HOLD
        order_by_hold_column state_as_string ,"#{sort_order}"
      # Hold Date
      elsif column_name == SORT_HOLD_DATE
        order_by_follow_up_date state_as_string , "#{sort_order}"
        # Hold Reason
      elsif column_name == SORT_HOLD_REASON
        order("vehicles.sale_hold_comment #{sort_order}, vehicles.hold_for_pickup_reason #{sort_order}, vehicles.id")
      # Location Name
      elsif column_name == SORT_LOCATION_NAME
        joins(:facility).order("facilities_vehicles.name #{sort_order}, vehicles.id")
      # Facility address City
      elsif column_name == SORT_ADDRESS_CITY
        joins(facility: :address).order("addresses.city #{sort_order}, vehicles.id")
      # Facility address State
      elsif column_name == SORT_ADDRESS_STATE
        joins("LEFT OUTER JOIN facilities fc ON vehicles.facility_id = fc.id
          LEFT OUTER JOIN addresses ON vehicles.facility_id = addresses.addressable_id AND addresses.addressable_type = 'Facility'
          LEFT OUTER JOIN states ON addresses.state_id = states.id").order("states.name #{sort_order}, vehicles.id")
      elsif column_name == SORT_ADDRESS_ZIP
        joins(facility: :address).order("addresses.zip #{sort_order}, vehicles.id")
      elsif column_name == SORT_MEMBER_NAME
        # TODO joins("LEFT OUTER JOIN members on vehicles.member_id = members.id").order("members.display_name #{sort_order}, vehicles.id")
      # Row Location
      elsif column_name == SORT_ROW_LOCATION
        includes(:yard_row).order("yard_rows.row_code #{sort_order}, vehicles.id")
      # Sale confirmation status
      elsif column_name == SORT_SALE_CONFIRMATION
        joins(:sale_confirmation_status).order("sale_confirmation_statuses.code #{sort_order}, vehicles.id")
      # Seller Name
      elsif column_name == SORT_SELLER_NAME
        joins(:seller).order("sellers.name #{sort_order}, vehicles.id")
      #Subhauler name
      elsif column_name == SORT_BY_SUBHAULER
        joins("LEFT OUTER JOIN subhaulers ON subhaulers.id = vehicles.subhauler_id").order("subhaulers.provider_name #{sort_order}, vehicles.id")
      # service order name 
      elsif column_name == SORT_SERVICE_ORDER_NAME
        joins(:service_orders).order("service_orders.name #{sort_order}, vehicles.id")
      # service order status 
      elsif column_name == SORT_SERVICE_ORDER_STATUS
        joins(service_orders: :service_order_details).order("service_order_details.status #{sort_order}, vehicles.id")
      # service order status updated date
      elsif column_name == SORT_SERVICE_ORDER_UPDATED_DATE
        joins(:service_orders).order("service_orders.status_updated_date #{sort_order}, vehicles.id")
      # Vehicle Type
      elsif column_name == SORT_VEHICLE_TYPE
        joins(:vehicle_type).order("vehicle_types.description #{sort_order}, vehicles.id")
      elsif column_name == SORT_BY_SOURCE
        order("vehicles.lot_creation_from #{sort_order}, vehicles.id")  
      else
        order(:id)
      end
    elsif column_name == SORT_NAME_OF_MODEL
      #joins(:model).order("models.name #{sort_order}, vehicles.id")
      order("#{column_name.gsub(/^[^0-9a-zA-Z]+$/, " ")} #{sort_order}, vehicles.id")
      #joins("LEFT OUTER JOIN models ON models.id = vehicles.model_id").order("models.name #{sort_order}, vehicles.id")
    elsif column_name == SORT_NAME_OF_MAKE
      #joins(:make).order("makes.name #{sort_order}, vehicles.id")
      order("#{column_name.gsub(/^[^0-9a-zA-Z]+$/, " ")} #{sort_order}, vehicles.id")
      #joins("LEFT OUTER JOIN models ON vehicles.model_id = models.id
        #LEFT OUTER JOIN makes ON models.make_id = makes.id").order("makes.name #{sort_order}, vehicles.id")
    else
      order("#{column_name} #{sort_order}, vehicles.id")
    end
  end

  SOLR_FIELDS = [
    "claim_ref_num",
    "license_plate_num",
    "lot_num",
    "vehicle_registration_num",
    "vin_serial_num",
    "year",
    "model",
    "make_model_description",
    "seller_name",
    "adjuster_name"
  ]

  # Search set up
  searchable do
    # actual fields
    text :claim_ref_num
    text :license_plate_num
    text :lot_num
    text :vehicle_registration_num
    text :vin_serial_num
    text :year
    text :model
    integer :yard_id
    integer :country_id

    # helper methods
    text :make_model_description
    text :seller_name
    text :adjuster_name
  end
  
  #################
  # Search Helpers
  ###############
  def get_country_code
     country_id = 
      if Employee.current.present?
        Employee.current.operating_country_id
      elsif self.facility.present?
        self.facility.country_id
      else
        nil
      end

    if !country_id.nil?
      country = Country.find(country_id)
      country_code = country.code
    end
  end

  def country_id
    (self.yard.present? && self.yard.facility.present?) ? self.yard.facility.country_id : 0
  end

  def adjuster_name
    s = (self.adjuster.present? && self.adjuster.contact.present?) ?
        "#{self.adjuster.contact_name}" :
        ""
    s.gsub(Searchable::ILLEGAL_SOLR_CHARACTERS_REGEXP, "")
  end

  def buyer_name
    buyer_full_name = self.member.present? ? self.member.full_name : ""
    buyer_full_name.gsub(Searchable::ILLEGAL_SOLR_CHARACTERS_REGEXP, "")
  end

  def insured_name
    insured_full_name = (self.insured.present? && self.insured.contact.present?) ?
        "#{self.insured.contact.first_name} #{self.insured.contact.last_name}" :
        ""
    insured_full_name.gsub(Searchable::ILLEGAL_SOLR_CHARACTERS_REGEXP, "")
  end

  def make_model_description
    make_model_name = ""
    color = self.color.present? ? "#{self.color.translate_code(self.color.code)}" : ""
    year = self.year.present? ? "#{self.year}" : ""
    
    make_model_name = if self.vehicle_type.present? && self.vehicle_type.vehicle_type_group.present?
      if self.model.present? && self.model.make.present? && self.custom_make_model_approved?
        model_with_trim_name = "#{self.model.name} #{self.trim.try(:name)}".rstrip
        "#{year} #{self.model.make.name}  #{model_with_trim_name} #{color}"
      # this condition can handle custom_make custom_model and custom_trim
      elsif self.custom_make_enabled? || self.custom_model_enabled?
        custom_model_with_trim_name = "#{self.custom_model} #{self.custom_trim}".rstrip
        "#{year} #{self.custom_make} #{custom_model_with_trim_name} #{color}"
      # special case to handle only for custom_trim
      elsif self.custom_trim_enabled?
        "#{year} #{self.custom_make} #{self.model.name} #{self.custom_trim} #{color}"
      else
        "#{year} #{color}"
      end
    else
      "#{year} #{color}"
    end

    make_model_name.gsub(Searchable::ILLEGAL_SOLR_CHARACTERS_REGEXP, "")
  end

  def owner_name
    owner_full_name = (self.owner.present? && self.owner.contact.present?) ?
        "#{self.owner.contact.first_name} #{self.owner.contact.last_name}" :
        ""
    owner_full_name.gsub(Searchable::ILLEGAL_SOLR_CHARACTERS_REGEXP, "")
  end

  def seller_name
    seller_full_name = self.seller.present? ? "#{self.seller.name}" : ""
    seller_full_name.gsub(Searchable::ILLEGAL_SOLR_CHARACTERS_REGEXP, "")
  end
  
  def facility_name
    facility_full_name = self.facility.present? ? "#{self.facility.name}" : ""
    facility_full_name.gsub(Searchable::ILLEGAL_SOLR_CHARACTERS_REGEXP, "")
  end
  
  #####################
  # END Search Helpers
  #####################

  # Validates the Registration Number for India
  def registration_num_valid?(registration_num)
    if (self.in_or_before_state?(:ready_for_auction) && registration_num.blank?) || self.state.nil?
      true
    else
      (registration_num.length >= 4) && (registration_num.length <= 10) && (registration_num =~ /(^[a-zA-Z0-9\s]+$)/)
    end
  end

  def update_auction_date(auction_date=nil)
    return if auction_date.blank? 
    timestamp = Time.at(auction_date.to_i / 1000) rescue nil 
    self.auction_datum.update_columns(auction_date: timestamp, sale_time: timestamp) if timestamp
  end
 
  def interaction_allowed_for_employee?(employee)
    return false if employee.nil?
    employee.yards.include?(self.yard) && (employee.operating_country_id == self.yard.facility.country_id || employee.operating_country_id == self.facility.country_id)
  end


  def set_copart_action_code_for_buyer
    # Do nothing if member not present, just a safety thing.
    return unless self.member_id.present?
    # If it's Sale Now we don't want to send any code
    # (we grab first because the default scope returns bid histories by descending id)
    last_bid = self.bid_histories.empty? ? BidHistory.new : self.bid_histories.first
    if self.lot_awarded_from == "cobalt"
      self.set_copart_action_code(app_config.copart_action_codes["lot_awarded_from"])
    elsif last_bid.bid_type.present? && 
       last_bid.bid_type.code == BidType::FIGS_SALE_NOW_CODE
      self.set_copart_action_code(app_config.copart_action_codes["no_action_required"])
      self.add_audit_note_with_content("setting copart action code to #{self.copart_action_code} to ensure we do not send a 'Sale Now' lot over.", Note::API_AUDIT_LOG_NOTE)
    # If it's not Sale Now and the high bidder is the current buyer...
    elsif self.current_buyer_also_high_bidder?
      self.set_copart_action_code(app_config.copart_action_codes["sale_confirmation_same_buyer_actions"])
    # Otherwise it's a different high bidder / buyer combo...
    else
      self.set_copart_action_code(app_config.copart_action_codes["sale_confirmation_different_buyer_actions"])
    end
  end

  ######################
  # Resque Job Helpers
  ###################

  def build_sap_je_zlot_hash(for_type)
    hash = zlot_invoice_hash
    hash[:FiDocSet] = jde_invoice_hashes_array(for_type, true, false, false, false)
    hash
  end

  def build_sap_je_zlot_advance_charges_hash(for_type, delta_only, no_charge_to_SAP)
    hash = zlot_invoice_hash
    hash[:FiDocSet] = jde_invoice_hashes_array(for_type, false, !no_charge_to_SAP, delta_only, false)  
    hash
  end

  # This, and the seller version, return an array
  # of hashes for invoice processing. They both call
  # the method jde_invoice_hashes_array(....)
  def jde_buyer_invoice_hashes_array
    jde_invoice_hashes_array('member')
  end

  # Look! It's the seller version.
  def jde_seller_invoice_hashes_array
    jde_invoice_hashes_array('seller')
  end

  # Ah, the work doth hither be done
  #
  # 'for_type'
  #   The type of JDE we're generating, it can be 'seller',
  #   'member', or 'vendor'.  Not providing it will return an 
  #   empty array with a single empty hash.
  #
  # 'include_regular_charges'
  #   Determines if we include the regular (not advance)
  #   charges.  Defaults to true.
  #
  # 'include_advance_charges'
  #   Determines if we include advance charges charges
  #   in the hash.  Defaults to true.
  #
  # 'with_indicator'
  #   Determines if we want the 'indicator' key in the
  #   hash, which is used for CSV file version for
  #   processing.  Defaults to true.
  #
  def jde_invoice_hashes_array(for_type=nil, include_regular_charges=true, include_advance_charges=true, delta_only=false, with_indicator=true)
    return [{}] if for_type.nil?
    hashes_array = []
    
    # What parameters were passed in you ask?
    logger.info("For type: #{for_type}")
    logger.info("Including regular charges: #{include_regular_charges}")
    logger.info("Including advance charges: #{include_advance_charges}")
    logger.info("Are advance charges for the delta only: #{delta_only}")
    logger.info("Including the end indicator: #{with_indicator}")
    
    # Set up the document type variables that apply and the uid to use
    # (based on the 'for_type' value)
    document_type_credit = ""
    document_type_invoice = ""
    line_item_posting_key_credit = ""
    line_item_posting_key_invoice = ""
    posting_key_credit = ""
    posting_key_invoice = ""
    ref_gl_account_uid = ""
    #   for member values
    if for_type.eql?('member')
      document_type_credit = "MC"
      document_type_invoice = "MI"
      line_item_posting_key_credit = "40"
      line_item_posting_key_invoice = "50"
      posting_key_credit = "11"
      posting_key_invoice = "01"
      ref_gl_account_uid = self.member_id.to_s if self.member_id.present?
    #   for seller values
    elsif for_type.eql?('seller')
      document_type_credit = "SC"
      document_type_invoice = "SI"
      line_item_posting_key_credit = "40"
      line_item_posting_key_invoice = "50"
      posting_key_credit = "11"
      posting_key_invoice = "01"
      ref_gl_account_uid = self.seller.seller_uid.to_s unless self.seller.nil?
    #   for vendor values
    elsif for_type.eql?('vendor')
      document_type_credit = "KG"
      document_type_invoice = "KR"
      line_item_posting_key_credit = "50"
      line_item_posting_key_invoice = "40"
      posting_key_credit = "21"
      posting_key_invoice = "31"
      # According to email from Nikki vendor uid to use is pickup location
      # (which means the tow provider uid is not referenced for this)
      ref_gl_account_uid = self.pickup_location.pickup_location_uid.to_s unless self.pickup_location.nil? || self.pickup_location.pickup_location_uid.nil?
    else
      logger.info("Returning [{}] for unknown type: #{for_type}")
      return [{}]
    end 

    # This is a hash with all of the fields desired,
    # with data filled in for the first record.
    # (thanks to that true being passed in)
    base_hash = base_jde_hash(true, with_indicator)
    
    # The next two values may change below if
    # total is negative, becoming SC, MC, or KG and 11 or 21
    base_hash[:documentType] = document_type_invoice # invoice code
    base_hash[:postingKey] = posting_key_invoice
    base_hash[:reference] = ref_gl_account_uid
    base_hash[:glAccount] = ref_gl_account_uid

    # SAP expects this base hash of data to only
    # be on the first record...
    hashes_array << base_hash

    # we need to keep track of the total
    total_charge = 0

    # these are the advance charges
    advance_charges = include_advance_charges ? self.advance_charge : nil

    # these are the non sale price charges
    charges = []
    charges_multiplier = 1 # 1 or -1 depending on the type this is for
    charges_for_seller = false
    if include_regular_charges
      if for_type.eql?('member')
        charges = self.member_charges 
      elsif for_type.eql?('seller')
        charges = self.seller_charges
        charges_multiplier = -1
        charges_for_seller = true
      end
    end

    # Add the sale price
    # (the amounts are subtracted from the total_charge
    #  for sellers [credit], added to the total for members [debit/invoice])
    #
    #   sale price line
    if include_regular_charges
      sale_price_hash = base_jde_hash(false, with_indicator)
      sale_amount = self.high_bid_amount.present? ? self.high_bid_amount : 0
      total_charge += sale_amount * charges_multiplier
      sale_price_hash[:amount] = sale_amount.to_s
      sale_price_hash[:postingKey] = charges_for_seller ? line_item_posting_key_credit : line_item_posting_key_invoice
      sale_price_hash[:glAccount] = "100000"
      sale_price_hash[:itemText] = "Sale Price"
      hashes_array << sale_price_hash
    end

    # we're adding advance charges!
    if advance_charges.present? && include_advance_charges
      total_advance_vat = 0
      # labor
      labor_amount = advance_charges.labor
      previous_labor_amount = advance_charges.previous_labor_charge
      labor_vat_amount = advance_charges.labor_vat
      previous_labor_vat_amount = advance_charges.previous_labor_vat_charge
      #   was 304016 (now 150991), changed per SAP, but I lack faith, so this comment is here.
      labor_hash = self.jde_advance_charge_hash(
                      labor_amount, 
                      previous_labor_amount,
                      labor_vat_amount, 
                      previous_labor_vat_amount,
                      delta_only, 
                      with_indicator,
                      "500022", 
                      "Labor", 
                      line_item_posting_key_credit, 
                      line_item_posting_key_invoice)
      if labor_hash.present?
        hashes_array << labor_hash
        # add or subtract the amount from the total
        amount_multiplier = labor_hash[:postingKey] == line_item_posting_key_invoice ? 1 : -1
        total_charge += labor_hash[:amount].to_f * amount_multiplier
        self.advance_charge.update_column(:previous_labor_charge, labor_amount)
      end
      # labor VAT
      if advance_charges.labor_vat.present? && advance_charges.labor_vat > 0
        total_advance_vat += advance_charges.labor_vat
        self.advance_charge.update_column(:previous_labor_vat_charge, labor_vat_amount)
      end

      # Miscellaneous
      additional_fee_amount = advance_charges.additional_fee
      previous_additional_fee_amount = advance_charges.previous_additional_fee_charge
      additional_fee_vat_amount = advance_charges.additional_fee_vat
      previous_additional_fee_vat_amount = advance_charges.previous_additional_fee_vat_charge
      #   was 304020 (now 150995), changed per SAP, but I lack faith, so this comment is here.
      misc_hash = self.jde_advance_charge_hash(
                      additional_fee_amount, 
                      previous_additional_fee_amount, 
                      additional_fee_vat_amount,
                      previous_additional_fee_vat_amount,
                      delta_only, 
                      with_indicator,
                      "500026",
                      "Miscellaneous", 
                      line_item_posting_key_credit, 
                      line_item_posting_key_invoice)
      if misc_hash.present?
        hashes_array << misc_hash
        # add or subtract the amount from the total
        amount_multiplier = misc_hash[:postingKey] == line_item_posting_key_invoice ? 1 : -1
        total_charge += misc_hash[:amount].to_f * amount_multiplier
        self.advance_charge.update_column(:previous_additional_fee_charge, additional_fee_amount)
      end
      # Miscellaneous VAT
      if advance_charges.additional_fee_vat.present? && advance_charges.additional_fee_vat > 0
        total_advance_vat += advance_charges.additional_fee_vat
        self.advance_charge.update_column(:previous_additional_fee_vat_charge, additional_fee_vat_amount)
      end

      # Storage
      storage_amount = advance_charges.storage_amount || 0
      if advance_charge.storage_daily? && 
         advance_charge.storage_from_date.present? &&
         advance_charge.storage_thru_date.present?
        days = (advance_charge.storage_thru_date - advance_charges.storage_from_date).to_i + 1
        storage_amount *= days unless days == 0
      end

      previous_storage_amount = advance_charges.previous_storage_charge
      storage_fee_vat_amount = advance_charges.storage_amount_vat
      if advance_charge.storage_daily? && 
           advance_charge.storage_from_date.present? &&
           advance_charge.storage_thru_date.present?
          days = (advance_charge.storage_thru_date - advance_charges.storage_from_date).to_i + 1
          storage_fee_vat_amount *= days unless days == 0
      end
      previous_storage_fee_vat_amount = advance_charges.previous_storage_vat_charge
      #   was 304015 (now 150990), changed per SAP, but I lack faith, so this comment is here.
      storage_hash = self.jde_advance_charge_hash(
                        storage_amount, 
                        previous_storage_amount, 
                        storage_fee_vat_amount,
                        previous_storage_fee_vat_amount,
                        delta_only, 
                        with_indicator,
                        "500021", 
                        "Storage", 
                        line_item_posting_key_credit, 
                        line_item_posting_key_invoice)
      if storage_hash.present?
        hashes_array << storage_hash
        # add or subtract the amount from the total
        amount_multiplier = storage_hash[:postingKey] == line_item_posting_key_invoice ? 1 : -1
        total_charge += storage_hash[:amount].to_f * amount_multiplier
        self.advance_charge.update_column(:previous_storage_charge, storage_amount)
      end
      # storage VAT
      if advance_charges.storage_amount_vat.present? && advance_charges.storage_amount_vat > 0
        amount = advance_charges.storage_amount_vat
        if advance_charge.storage_daily? && 
           advance_charge.storage_from_date.present? &&
           advance_charge.storage_thru_date.present?
          days = (advance_charge.storage_thru_date - advance_charges.storage_from_date).to_i + 1
          amount *= days unless days == 0
        end
        total_advance_vat += amount
        self.advance_charge.update_column(:previous_storage_vat_charge, amount)
      end
      # tear down estimate
      tear_down_estimate_amount = advance_charges.tear_down_estimate
      previous_tear_down_estimate_amount = advance_charges.previous_tear_down_estimate_charge
      tear_down_estimate_vat_amount = advance_charges.tear_down_estimate_vat
      previous_tear_down_estimate_vat_amount = advance_charges.previous_tear_down_estimate_vat_charge
      #   was 304018 (now 150993), changed per SAP, but I lack faith, so this comment is here.
      tear_down_hash = self.jde_advance_charge_hash(
                          tear_down_estimate_amount, 
                          previous_tear_down_estimate_amount,
                          tear_down_estimate_vat_amount,
                          previous_tear_down_estimate_vat_amount,
                          delta_only, 
                          with_indicator,
                          "500024", 
                          "Tear Down Estimate", 
                          line_item_posting_key_credit, 
                          line_item_posting_key_invoice)
      if tear_down_hash.present?
        hashes_array << tear_down_hash
        # add or subtract the amount from the total
        amount_multiplier = tear_down_hash[:postingKey] == line_item_posting_key_invoice ? 1 : -1
        total_charge += tear_down_hash[:amount].to_f * amount_multiplier
        self.advance_charge.update_column(:previous_tear_down_estimate_charge, tear_down_estimate_amount)
      end
      # tear down estimate VAT
      if advance_charges.tear_down_estimate_vat.present? && advance_charges.tear_down_estimate_vat > 0
        total_advance_vat += advance_charges.tear_down_estimate_vat
        self.advance_charge.update_column(:previous_tear_down_estimate_vat_charge, tear_down_estimate_vat_amount)
      end
      # towing
      towing_amount = advance_charges.towing
      previous_towing_amount = advance_charges.previous_towing_charge
      towing_vat_amount = advance_charges.towing_vat
      previous_towing_vat_amount = advance_charges.previous_towing_vat_charge
      #   was 304017 (now 150992), changed per SAP, but I lack faith, so this comment is here.
      towing_hash = self.jde_advance_charge_hash(
                        towing_amount, 
                        previous_towing_amount, 
                        towing_vat_amount,
                        previous_towing_vat_amount,
                        delta_only, 
                        with_indicator,
                        "500023", 
                        "Towing", 
                        line_item_posting_key_credit, 
                        line_item_posting_key_invoice)
      if towing_hash.present?
        hashes_array << towing_hash
        # add or subtract the amount from the total
        amount_multiplier = towing_hash[:postingKey] == line_item_posting_key_invoice ? 1 : -1
        total_charge += towing_hash[:amount].to_f * amount_multiplier
        self.advance_charge.update_column(:previous_towing_charge, towing_amount)
      end
      # towing VAT
      if advance_charges.towing_vat.present? && advance_charges.towing_vat > 0
        total_advance_vat += advance_charges.towing_vat
        self.advance_charge.update_column(:previous_towing_vat_charge, towing_vat_amount)
      end
      # yard gate
      yard_gate_amount = advance_charges.yard_gate
      previous_yard_gate_amount = advance_charges.previous_yard_gate_charge
      yard_gate_vat_amount = advance_charges.yard_gate_vat
      previous_yard_gate_vat_amount = advance_charges.previous_yard_gate_vat_charge
      #   was 304019 (now 150994), changed per SAP, but I lack faith, so this comment is here.
      yard_gate_hash = self.jde_advance_charge_hash(
                          yard_gate_amount, 
                          previous_yard_gate_amount, 
                          yard_gate_vat_amount,
                          previous_yard_gate_vat_amount,
                          delta_only, 
                          with_indicator,
                          "500025", 
                          "Facility Gate", 
                          line_item_posting_key_credit, 
                          line_item_posting_key_invoice)
      if yard_gate_hash.present?
        hashes_array << yard_gate_hash
        # add or subtract the amount from the total
        amount_multiplier = yard_gate_hash[:postingKey] == line_item_posting_key_invoice ? 1 : -1
        total_charge += yard_gate_hash[:amount].to_f * amount_multiplier
        self.advance_charge.update_column(:previous_yard_gate_charge, yard_gate_amount)
      end
      # yard gate VAT
      if advance_charges.yard_gate_vat.present? && advance_charges.yard_gate_vat > 0
        total_advance_vat += advance_charges.yard_gate_vat
        self.advance_charge.update_column(:previous_yard_gate_vat_charge, yard_gate_vat_amount)
      end
      # Ze Total VAT Por Advance Charges
      previous_total_advance_vat = advance_charges.previous_total_tax_charge.present? ?
                                        advance_charges.previous_total_tax_charge :
                                        0
      # Case for initial send, final send, and CSV files
      if !delta_only
        # nested this if to make the delta if/elsif stuff clearer
        if total_advance_vat > 0
          total_charge += total_advance_vat
          vat_hash = base_jde_hash(false, with_indicator)
          vat_hash[:amount] = total_advance_vat.to_s
          vat_hash[:postingKey] = line_item_posting_key_invoice
          vat_hash[:glAccount] = vat_gl_account
          vat_hash[:itemText] = "Advance Charges VAT"
          hashes_array << vat_hash
          self.advance_charge.update_column(:previous_total_tax_charge, total_advance_vat)
        end
      elsif previous_total_advance_vat - total_advance_vat != 0
        diff_amount = total_advance_vat - previous_total_advance_vat
        total_charge += diff_amount
        posting_key = line_item_posting_key_invoice
        if diff_amount < 0
          posting_key = line_item_posting_key_credit
          diff_amount *= -1
        end
        vat_hash = base_jde_hash(false, with_indicator)
        vat_hash[:amount] = diff_amount.to_s
        vat_hash[:postingKey] = posting_key
        vat_hash[:glAccount] = vat_gl_account
        vat_hash[:itemText] = "Advance Charges VAT"
        hashes_array << vat_hash
        self.advance_charge.update_column(:previous_total_tax_charge, total_advance_vat)
      end 
    end

    # we're adding charges!
    if charges.present? && !charges.empty? && include_regular_charges
      # alrighty, let's...
      charges.each do |charge|
        invoice_hash = base_jde_hash(false, with_indicator)
        # get some stuff
        gl_type = charge.gl_type.present? ? charge.gl_type : GlType.new
        # If GLType is empty, either due to the line above or
        # due to the system saving an incomplete charge let's
        # move to the next one
        next if gl_type.code.nil?
        # ignore gotten stuff and move to the next charge
        # if this charge is the VTS (VAT paid) charge as we
        # handle this above in "Tax on Purchase"
        next if gl_type.code == "VTS"
        # so we can set some stuff
        invoice_hash[:glAccount] = gl_type.sap_code
        invoice_hash[:itemText] = gl_type.description
        invoice_hash[:tax] = "" # this wants a code, but we just have an amount (added to amount below)
        # which leads to figuring out some stuff
        amount = charge.charge_amount.present? ? charge.charge_amount : 0
        total_charge += amount # will add total vat to this later
        # ... like, do we use 40 (debit [positive from copart view]) 
        # or 50 (credit [negative from copart view]) posting key?
        if amount < 0
          invoice_hash[:postingKey] = line_item_posting_key_credit
          amount *= -1
        else
          invoice_hash[:postingKey] = line_item_posting_key_invoice
        end
        invoice_hash[:amount] = amount.to_s
        # and we should probably add the stuff
        hashes_array << invoice_hash
      end
    end

    # If the total is negative we invoice posting variables
    # (and then multiply by -1 to remove the sign)
    if total_charge < 0
      hashes_array.first[:documentType] = document_type_credit
      hashes_array.first[:postingKey] = posting_key_credit
      total_charge *= -1
    end
    # then we set the total
    hashes_array.first[:amount] = total_charge.to_s

    # ... and they want the "indicator" value to
    # be "END" for the last record.
    if with_indicator
      hashes_array.last[:indicator] = "END"
    end

    # glorious
    hashes_array
  end

  def get_custom_changes(permitted_so_params)
    if permitted_so_params.present?
      previous_service_orders = self.service_orders.map(&:id).compact
      new_service_orders = permitted_so_params.collect{|so| so["id"]}.compact.reject{|a| a.blank?}
      previous_service_order_amounts =  self.service_orders.collect{|so| so.amount if so.id.present?}.compact
      new_service_order_amounts = permitted_so_params.collect{|so| so["amount"]}.compact
      self.custom_changes = {service_orders: [previous_service_orders, new_service_orders], service_order_amounts: [previous_service_order_amounts, new_service_order_amounts]} if previous_service_orders != new_service_orders
    end
  end

  def vat_gl_account
    operating_country_code = self.facility.country.code || "DE"
    # assuming country will be there else defaulty assiging to germany
    if (operating_country_code == "DE" || operating_country_code == "ES")
      "306210"
    elsif operating_country_code == "IN"
      "306130"
    end
  end


  def jde_advance_charge_hash(amount, previous_amount, vat, previous_vat, delta_only, with_indicator, gl_account, item_text, posting_key_credit, posting_key_invoice)
    charge_hash = {}
    amount = 0 if amount.nil?
    previous_amount = 0 if previous_amount.nil?
    vat = 0 if vat.nil?
    previous_vat = 0 if previous_vat.nil?

    # Case for initial send, final send, and CSV flows
    # (only set the charge hash key/value pairs if amount > 0)
    if !delta_only && amount > 0
      charge_hash = base_jde_hash(false, with_indicator)
      charge_hash[:amount] = amount.to_s
      charge_hash[:postingKey] = posting_key_invoice
      charge_hash[:glAccount] = gl_account
      charge_hash[:itemText] = item_text
    # Case for changes of charges between initial and final send
    elsif delta_only && amount - previous_amount != 0
      diff_amount = amount - previous_amount
      posting_key = posting_key_invoice
      if diff_amount < 0
        posting_key = posting_key_credit
        diff_amount *= -1
      end
      charge_hash = base_jde_hash(false, with_indicator)
      charge_hash[:amount] = diff_amount.to_s
      charge_hash[:postingKey] = posting_key
      charge_hash[:glAccount] = gl_account
      charge_hash[:itemText] = item_text
    end

    if !delta_only && vat > 0
      charge_hash[:tax] = vat.to_s
    elsif delta_only && vat - previous_vat != 0
      diff_vat = vat - previous_vat
      charge_hash[:tax] = diff_vat.to_s
    end

    charge_hash
  end

  # This is called from the resque outbound job
  def jde_service_order_hash_with_service_order(service_orders)
    return [{}] if service_orders.blank?
    
    # Includes the general information in the payload
    hash = zlot_invoice_hash
    hashes_array = []
    
    document_type_invoice = "SI"
    document_type_credit = "SC"
    line_item_posting_key_credit = "40"
    line_item_posting_key_invoice = "50"
    posting_key_credit = "11"
    posting_key_invoice = "01"
    ref_gl_account_uid = self.seller.seller_uid.to_s unless self.seller.nil?

    base_hash = base_jde_hash(true, false)
    # The next two values may change below if
    # total is negative, becoming SC and 11
    base_hash[:documentType] = document_type_invoice # invoice code
    base_hash[:postingKey] = posting_key_invoice
    base_hash[:reference] = ref_gl_account_uid
    base_hash[:glAccount] = ref_gl_account_uid
    # We include in the service order name
    #base_hash[:serviceOrderName] = service_order.name
    ##########################################################
    
    # SAP expects this base hash of data to only
    # be on the first record...
    hashes_array << base_hash    
    
    # we need to keep track of the total
    total_charge = 0

    # let's track the total VAT of the charges
    # (though currently there's no vat on service order charges)
    total_charges_vat = 0

    service_orders.each do |service_order|
      # Let us begin...
      invoice_hash = base_jde_hash(false, false)
      # get some stuff
      gl_type = service_order.gl_type
      # so we can set some stuff
      invoice_hash[:glAccount] = gl_type.sap_code
      # We need to add the service order name in the hashes_array
      #invoice_hash[:serviceOrderName] = service_order.name
      ###########################################################
      invoice_hash[:itemText] = gl_type.description
      invoice_hash[:tax] = "" # this wants a code which we don't have
      # which leads to figuring out some stuff
      amount = service_order.amount.present? ? service_order.amount : 0
      total_charge += amount
      # ... like, do we use 40 (debit [positive from copart view]) 
      # or 50 (credit [negative from copart view]) posting key?
      if amount < 0
        invoice_hash[:postingKey] = line_item_posting_key_credit
        amount *= -1
      else
        invoice_hash[:postingKey] = line_item_posting_key_invoice
      end
      invoice_hash[:amount] = amount.to_s

      ############################################################
      # We need to add the Service Order Contact and Comments

      invoice_hash.merge!(
        :doneBy => service_order.contact.present? ? service_order.contact : "",
        :comments => service_order.comments.present? ? service_order.comments : ""
      )

      # and we should probably add the stuff
      hashes_array << invoice_hash
    end
    
    # If the total is negative we invoice posting variables
    # (and then multiply by -1 to remove the sign)
    if total_charge < 0
      hashes_array.first[:documentType] = document_type_credit
      hashes_array.first[:postingKey] = posting_key_credit
      total_charge *= -1
    end
    # then we set the total
    hashes_array.first[:amount] = total_charge.to_s

    # The hashes_array is added to the hash sent to SAP
    hash[:FiDocSet] = hashes_array
    hash
  end

  def self.queue_buyer_invoice_email(email)
    Resque.enqueue(BuyerInvoicesJob, email, I18n.locale)
  end

  def self.queue_seller_invoice_email(email)
    Resque.enqueue(SellerInvoicesJob, email, I18n.locale)
  end

  def find_lot_note(notable_id,notable_type,system_note=0)
    Note.select("content").where(notable_id: notable_id, notable_type: notable_type,system_note: system_note).last
  end

  def remove_from_copart
    logger.info("Sending the DELETE request to copart for #{self.id}/#{self.lot_num}")
    Resque.enqueue(KillLotJob, self.id)
  end

  def send_advance_charges_to_sap(for_type, delta_only=false, no_charge_to_SAP=false)
    # Let's get our requester's email
    requesting_user_email = Employee.current ? Employee.current.email : COBALT_ADMIN_EMAIL[:figsoutbid]
    # Tell others what you have seen
    logger.info("Will send advance charges and zlot to SAP for type: #{for_type}")
    if delta_only
      logger.info("Charges will consist of the delta only.")
    end
    self.add_audit_note_with_content("Sending of advance charges w/ ZLOT (for: #{for_type}, delta only: #{delta_only}) triggered by #{requesting_user_email}", Note::SAP_AUDIT_LOG_NOTE)
    Resque.enqueue(OutboundSapAdvanceChargesJob, self.id, for_type, delta_only, no_charge_to_SAP)
  end

  def send_buyer_charges_to_sap
    # Let's get our requester's email
    requesting_user_email = Employee.current ? Employee.current.email : COBALT_ADMIN_EMAIL[:figsoutbid]
    # Tell others what you have seen
    logger.info("Will send buyer charges and zlot to SAP")
    self.add_audit_note_with_content("Sending of buyer charges w/ ZLOT triggered by #{requesting_user_email}", Note::SAP_AUDIT_LOG_NOTE)
    Resque.enqueue(OutboundSapBuyerChargesJob, self.id)
  end

  def send_seller_charges_to_sap
    # Let's get our requester's email
    requesting_user_email = Employee.current ? Employee.current.email : COBALT_ADMIN_EMAIL[:figsoutbid]
    # Tell others what you have seen
    logger.info("Will send seller charges and zlot to SAP")
    self.add_audit_note_with_content("Sending of seller charges w/ ZLOT triggered by #{requesting_user_email}", Note::SAP_AUDIT_LOG_NOTE)
    Resque.enqueue(OutboundSapSellerChargesJob, self.id)
  end

  def send_to_copart(delay_in_minutes=0)
    # Only try to send if...
    #  - ready for auction with an auction date assigned
    #  - some action is required by Aurora
    if (self.ready_for_auction? && self.auction_datum.present? && self.auction_datum.auction_date.present? && !self.pure_sell?) ||
        self.copart_action_code != 0
      # for unlocking lot, action code is set to -1
      if(self.copart_action_code == -1)
        self.copart_action_code = app_config.copart_action_codes["remove_from_auction"]
      end  
      logger.info("Will enqueue lot #{self.id}/#{self.lot_num} to oubound lot job in #{delay_in_minutes} minutes.")
      self.add_audit_note_with_content("Will enqueue to oubound lot job.", Note::API_AUDIT_LOG_NOTE)
      # Send the copart action code as a parameter so we get the code at the
      # time of the enqueue and not at the time of job execution.
      Resque.enqueue_in(delay_in_minutes.minutes, OutboundLotJob, self.id, self.copart_action_code)
      # If it's closed but doesn't have the code "8" we want a small 
      # delay here as this is a flow that sends out a post before this,
      # and we want to ensure that has time to occur, while also 
      # ensuring Copart had time to receive it (in the correct order)
      if self.closed? && self.copart_action_code != 8
        self.add_audit_note_with_content("Will enqueue to oubound lot job for transition to closed (status 8) in 2 minutes.", Note::API_AUDIT_LOG_NOTE)
        Resque.enqueue_in(2.minutes, OutboundLotJob, self.id, app_config.copart_action_codes["lot_closed_action"])
      end
      # Now let's reset the code back to "0" so any update to this lot
      # that occurs prior to the API post completing doesn't use the wrong code.
      self.update_column(:copart_action_code, app_config.copart_action_codes["no_action_required"])
      else
      logger.info("#{self.lot_num} Lot is a pure sale and we are not going to send JSON to web services per discussed on 03/16.")
      logger.info("Currently we are not sending lots for state: #{self.state} unless there's an action code.")
    end
  end

  def zlot_invoice_hash
    # This is ordered by the desired SAPFI order.
    z_hash = {
      "lotNumber" => "#{self.lot_num}",
      "lotDescription" => self.make_model_description,
      "VIN" => self.vin_serial_num,
      "referenceNumber" => self.claim_ref_num,
      "rowLocation" => self.yard_row.present? ? self.yard_row.row_code : "",
      "copartYardAssigned" => self.yard.present? ? "#{self.yard.yard_num}" : ""
    }

    # We add the vehicle_registration_num if the country code is "IN"
    if self.facility.present? && self.facility.country.present? && (self.facility.country.code == "IN")
      z_hash.merge!("registrationNumber" => self.vehicle_registration_num)
    end

    # We include locationName
    # Now we will handle the offsite location values
    # for ze hash...
    if self.facility.present? && self.facility.kind.present?
      if self.facility.kind == "commercial"
        location_name = self.facility.name
      else
        location_name = "RESIDENCE"
      end
    end

    z_hash.merge!(
      "locationName" => location_name
      )


    address = (self.facility.present? && self.facility.address.present?) ? self.facility.address : Address.new
    address.empty_string_nil_varchar_text_columns
    z_hash.merge!(
        "street" => address.line1,
        "address2" => address.line2,
        "city" => address.city,
        "state" => address.state.present? ? address.state.code : "",
        "postalCode" => address.zip,
        "country" => address.country.present? ? address.country.code : ""
      )
    # Ze hash is coming along nicely, yes?
    # Let's finish it off
    valid_through_date = self.free_storage_valid_thru_date.strftime("%Y%m%d")
    # Sale date is the auction date for lots that
    # went through auction, sale confirmed date for
    # sell now lots.
    sale_date =
      if self.auction_datum.present? && self.auction_datum.auction_date.present?
        self.yard.utc_sale_date_with_time_for_date(self.auction_datum.auction_date).strftime("%Y%m%d")
      elsif self.sale_confirmed_date.present?
        self.sale_confirmed_date.strftime("%Y%m%d")
      else
        ""
      end
    z_hash.merge!(
        "cubicCapacity" => self.cubic_capacity.present? ? "#{self.cubic_capacity}" : "0",
        "towable" => (self.towable.present? && self.towable == TOWABLE_YES) ? "Y" : "N",
        "validThrough" => valid_through_date,
        "vatEligible" => Vehicle.y_or_n_for_bool(self.vat_applicable),
        "residualValue" => self.residual_value.present? ? "#{self.residual_value.to_f}" : "0.00",
        "purchasePrice" => self.purchase_price.present? ? "#{self.purchase_price.to_f}" : "0.00",
        "saleDate" => sale_date,
        "status" => "",
        "tripDate" => (self.trip_infos.first.present? && self.trip_infos.first.trip_date.present?) ? self.trip_infos.first.trip_date.strftime("%Y%m%d") : "",
        "tripDistance" => self.trip_infos.first.present? ? "#{self.trip_infos.first.trip_distance.to_f}" : ""
      )
    #settlement = self.settlement_model.present? ? "#{self.settlement_model.gsub(/[^a-zA-Z0-9]/, " ").strip}" : ""
    settlement = self.settlement_model.present? ? "#{self.settlement_model}" : ""

    z_hash.merge!(
      "settlementModel" => settlement,
      )

    # This is to include the Tax Free Zone at the item level in the ZLOT API
    if self.facility.present? && self.facility.country.present?
      operating_country_cd = self.facility.country.code
    elsif self.yard.present? && self.yard.facility.present? && self.yard.facility.country.present?
      operating_country_cd = self.yard.facility.country.code
    end

    seller_uid = (self.seller.present? && self.seller.seller_uid.present? && operating_country_cd.present? && (operating_country_cd == "DE" || operating_country_cd == "ES")) ? "#{self.seller.seller_uid.to_s}" : ""

    member_uid = (self.member_id.present? && operating_country_cd.present? && (operating_country_cd == "DE" || operating_country_cd == "ES")) ? "#{self.member_id.to_s}" : ""

    owner_uid = (self.owner.present? && self.owner.owner_uid.present? && operating_country_cd.present? && (operating_country_cd == "DE" || operating_country_cd == "ES") && self.seller.present? && self.seller.seller_type.code == "I") ? "#{self.owner.owner_uid.to_s}" : ""
    
    z_hash.merge!(
      "sellerUid" => seller_uid,
      "memberUid" => member_uid,
      "ownerUid" => owner_uid
      )

    # This will add the new fields in ZLOT
    z_hash.merge!(
      "year" => self.year.present? ? self.year.to_s : "",
      "make" => (self.model.present? && self.model.make.present?) ? self.model.make.name : "",
      "model" => self.model.present? ? self.model.name : "",
      "trim" => self.trim.present? ? self.trim.name : "",
      "engineOutput" => self.horsepower.present? ? self.horsepower.to_s : "",
      "engineOutputUOM" => self.engine_output_unit.present? ? self.engine_output_unit.code : "",
      "co2Emission" => self.co2_emission.present? ? self.co2_emission.to_s : "",
      "euronorm" => self.euronorm.present? ? self.euronorm : "",
      "odometer" =>  self.usage.present? ? self.usage.to_s : "",
      "odometerUOM" => self.odometer_unit.present? ? self.odometer_unit.code : "",
      "firstregdate" => self.first_registration_date.present? ? self.first_registration_date.strftime("%Y%m%d") : "",
      "yearomanu" => self.year_of_manufacture.present? ? self.year_of_manufacture.to_s : "",
      "storageFdate" => (self.advance_charge.present? && self.advance_charge.storage_from_date.present?) ? self.advance_charge.storage_from_date.strftime("%Y%m%d") : "",
      "storageTdate" => (self.advance_charge.present? && self.advance_charge.storage_thru_date.present?) ? self.advance_charge.storage_thru_date.strftime("%Y%m%d") : "",
      "licensePlate" => self.license_plate_num.present? ? self.license_plate_num : ""
      )

    # Viola! Ze hash is complete. Enjoy.
    z_hash
  end
  #######################
  # END Resque Job Helpers
  #########################

  def free_storage_valid_thru_date
    sale_date =
      if self.auction_datum.present? && self.auction_datum.auction_date.present?
        self.yard.utc_sale_date_with_time_for_date(self.auction_datum.auction_date)
      elsif self.sale_confirmed_date.present?
        self.sale_confirmed_date
      else
        DateTime.now
      end
    # No bid history at all may be a data issue,
    # but as far as we're concerned here, it's 
    # 3 business days.
    if self.bid_histories.empty?
      self.three_business_days_later_inclusive(sale_date)
    # Kiosk winners get 3 days
    elsif self.high_bid_is_kiosk?
      self.three_business_days_later_inclusive(sale_date)
    # Next scenarios depend on bid type existing
    elsif self.bid_histories.first.bid_type.present?
      bid_type_code = self.bid_histories.first.bid_type.code
      # Live Auction winners / prelim-bid winners / 
      # counter-bid (offline) / Buy Now winners / Sale Now 
      # winners get 7 days (counting sale_date).
      if bid_type_code == BidType::AURORA_LIVE_BID_CODE || 
         bid_type_code == BidType::AURORA_PRELIM_BID_CODE || 
         bid_type_code == BidType::AURORA_BUY_NOW_CODE || 
         bid_type_code == BidType::FIGS_SALE_NOW_CODE ||
         !self.current_buyer_also_high_bidder?
        sale_date + 6.days
      # Unknown code was received, per Karla they get 3
      # days.  (todo: important enough to email us so we know?)
      elsif bid_type_code.present?
        logger.info("Unknown bid type received, code is: #{bid_type_code}")
        self.three_business_days_later_inclusive(sale_date)
      # Code not present also gets the three (we should prevent
      # this scenario in the api, but you know, safety first)
      else
        logger.info("BidType.code not present on bid type of description: #{self.bid_histories.first.bid_type.description}")
        self.three_business_days_later_inclusive(sale_date)
      end
    # All other scenarios get 3 business days
    # (so incomplete data scenarios will get 3 days).
    else
      self.three_business_days_later_inclusive(sale_date)
    end
  end

  # Calculates 3 business days, including the
  # given date's current day if it's a weekday.
  def three_business_days_later_inclusive(date)
    return nil if date.nil?
    valid_thru_date = date
    # If it's a weekday count it, otherwise... don't.
    business_days_added = Vehicle.date_is_weekday?(valid_thru_date) ? 1 : 0
    while business_days_added < 3
      valid_thru_date += 1.days
      business_days_added += 1 if Vehicle.date_is_weekday?(valid_thru_date)
    end
    valid_thru_date
  end

  def set_abnormal_close_type_and_add_note(starting_state, employee=nil)
    starting_state = starting_state.to_sym rescue ""
    close_type =
      if starting_state == :wtg_to_clear_pickup
        self.service_orders.any? { |so| so.service_order_details.any?(&:complete?) } ?
          AbnormalCloseType.find_by_code("O") : # This is an owner/seller retained "cancel".
          AbnormalCloseType.find_by_code("C")   # This is a clean cancel.
      elsif [ :wtg_for_driver_dispatch, :wtg_for_trip_confirmation, :wtg_for_title, :wtg_for_sale_confirmation ].include?(starting_state) ||
            (starting_state == :ready_for_auction && (self.auction_datum.nil? || self.auction_datum.auction_date.nil?))
        AbnormalCloseType.find_by_code("O") # This is an owner/seller retained "cancel".
      else
        nil
      end
    if close_type.present?
      self.abnormal_close_type = close_type
      #close_type.vehicles << self
      if self.save && employee.present?
        self.add_note(Note::RECORD_UPDATE, NoteType::NOTE_TYPE_CODE_LOT,
                      "#{I18n.t('models.vehicle.note.lot_canceled')} #{close_type.code}",
                      employee, true)
      else
        logger.error("Failed to save the close type/lot association for lot #{self.id}/#{self.lot_num}")
      end
    end
  end

  # get the link to view lot
  def view_lot_link
    "#{app_config.urls['aurora_url_prefix']}/#{self.lot_num}"
  end

  def api_audit_link
    "#{app_config.urls['root_url']}#{Rails.application.routes.url_helpers.api_audit_vehicle_path(self)}"
  end

  # "Pure Sell" occurs when one of the following is true
  # (BTBA === Bid To Be Approved):
  #
  #   - BTBA Type is NO and no reserve is present
  #   - BTBA Type is NO and the high bid meets or exceeds
  #     the reserve price
  def pure_sell?(buy_it_now=false)
    if (self.btba_type.present? && self.btba_type.code == BtbaType::CODE_NO) && 
      (self.high_bid_amount.present? && self.high_bid_amount > 0) && 
      (self.min_bid_reserve.nil? || buy_it_now || (self.high_bid_amount >= self.min_bid_reserve))
      true
    else
      false
    end
  end

  def pickup_required?
    self.pickup == PICKUP_YES
  end


  def offsite?
    self.pickup == PICKUP_OFFSITE
  end

  def seller_type_insurance?
    self.seller.present? && 
      self.seller.seller_type.present? && 
      self.seller.seller_type.code == "I"
  end

  def homeowner_group?
    self.vehicle_type.present? && 
      self.vehicle_type.vehicle_type_group.present? &&
      self.vehicle_type.vehicle_type_group.code == "H"
  end

  def automobile_group?
    self.vehicle_type.present? && 
      self.vehicle_type.vehicle_type_group.present? &&
      self.vehicle_type.vehicle_type_group.code == "V" && !make_not_available# && !model_not_available
  end

  def make_not_available
    self.custom_make.present? && self.custom_make_enabled.present?
  end

  def model_not_available
    self.custom_model.present? && self.custom_model_enabled.present?
  end

  def marine_or_recreational_or_industrial_or_homeowner_group?
    self.vehicle_type.present? && 
      self.vehicle_type.vehicle_type_group.present? &&
      (self.vehicle_type.vehicle_type_group.code == "M" || 
       self.vehicle_type.vehicle_type_group.code == "E" ||
       self.vehicle_type.vehicle_type_group.code == "H")
  end

  def should_validate_ok_pay_charge?
    self.pickup_required? && 
      (self.state.blank? || self.wtg_to_clear_pickup? || self.wtg_for_driver_dispatch?)
  end

  def complete_service_orders
    service_orders.joins(:service_order_details).where("service_order_details.status = ?", ServiceOrder::SO_STATUS_COMPLETE)
  end

  def has_completed_service_orders?
    if self.service_orders.present?
      orders = self.service_orders.select { |order | order.service_order_details.first.status == ServiceOrder::SO_STATUS_COMPLETE }
      return true if orders.present? && orders.length > 0
    end
    false
  end

  def has_approved_service_orders?
    self.service_orders.select{|so| so.priority == ServiceOrder::SO_PRIORITY_HIGH }.map(&:service_order_details).find{|order| order.first.status == ServiceOrder::SO_STATUS_APPROVED }.present?
   
    #service_orders.joins(:service_order_details).where("service_orders.priority = ?", ServiceOrder::SO_PRIORITY_HIGH)
    #              .pluck("service_order_details.status").include?(ServiceOrder::SO_STATUS_APPROVED)
  end

  def may_edit?
    # Being created, why are you even checking this?
    return true if !self.persisted?
    # You're not ready for an auction. Do what you will.
    return true if !self.ready_for_auction?
    # No auction data?  Edit away.
    return true if self.auction_datum.nil?
    # Not assigned a date yet? Go for it.
    auction_date = self.auction_datum.auction_date
    return true if auction_date.nil?
    # How did you get this far with no yard?
    # Well, not my place to argue, all you.
    return true if self.yard.nil?
    # The yard doesn't know when it's selling...
    # so... sure?
    # get yard time-zone
    return true if self.yard.yard_sale_time.blank?
    # Not within 65 minutes of the start time, go for it.
    auction_time = self.yard.utc_sale_date_with_time_for_date(auction_date)
    now = Time.now.utc
    lot_lock_time = app_config.lot_lock_time.present? ? app_config.lot_lock_time.minutes : 65.minutes
    return true if now < (auction_time - lot_lock_time)
    # Hmmm, too bad.
    false
  end
  
  # The numbers (codes) are maintained in
  # application_configuration.yml.  They shoudn't
  # need to be changed frequently (if ever), but
  # if they do, go there.
  #
  # wtg_to_clear_pickup               10
  # wtg_to_clear_charges              15 #may go away
  # wtg_for_driver_dispatch           20
  # wtg_for_trip_confirmation         28
  # wtg_for_inventory                 30
  # wtg_for_title                     40
  # ready_for_auction                 50 #needs to confirm sell or set seller retained
  # wtg_for_buyer_charge_confirmation 68 #sale was confirmed in state 50
  # awaiting_sale_docs                69 #docs uploaded, transition action goes to 70
  # ready_for_seller_billing          70 #after charges entered (if applicable) goes to 82
  # wtg_for_settlement_confirmation   82 #manual confirmation goes to 98
  # wtg_to_leave_yard                 98 #nightly job transitions to 99 after lot left yard date is entered
  # closed                            99
  #
  # It is possible to enter the flow at one of two stages:
  #  - wtg_to_clear_pickup if pickup is required
  #  - wtg_for_inventory if the vehicle is already at a yard
  #
  # ready_for_auction will transition to
  # wtg_for_buyer_charge_confirmation if the lot sold
  #
  # wtg_to_leave_yard will be transitioned to by
  # settlement_complete if the lot sold
  #
  #AASM initialization
  aasm column: :state do
    # the pre-yard states
    state :wtg_to_clear_pickup
    #state :wtg_to_clear_charges
    state :wtg_for_driver_dispatch
    state :wtg_for_trip_confirmation

    # inventory thru auction
    state :wtg_for_inventory, initial: true #only starts at wtg_to_clear_pickup if pickup needed is indicated
    state :wtg_for_title # This is the 'ownership transfer' state.
    state :ready_for_auction

    # payment
    state :wtg_for_sale_confirmation # vehicle sold, also can transition from :wtg_for_title
    state :wtg_for_buyer_charge_confirmation #vehicle sold
    state :awaiting_sale_docs #when buyer charges are confirmed
    state :ready_for_seller_billing #when docs received
    state :wtg_for_settlement_confirmation #when all charges are accurate

    # hooray
    state :wtg_to_leave_yard # after wtg_for_settlement_confirmation
    state :closed # nightly job changes wtg_to_leave_yard records with a left_yard_date to closed
    state :canceled

    event :wait_to_clear_pickup do
      error do |e|
        logger.error("error in AASM for vehicle #{self.id}, event wait_to_clear_pickup failed:\n#{e}")
      end

      transitions to: :wtg_to_clear_pickup,
                  guard: :allowed_to_wait_to_clear_pickup?
    end

    event :wait_for_driver_dispatch do
      error do |e|
        logger.error("error in AASM for vehicle #{self.id}, event wait_for_driver_dispatch failed:\n#{e}")
      end

      transitions from: :wtg_to_clear_pickup,
                  to: :wtg_for_driver_dispatch,
                  guard: :allowed_to_wait_for_driver_dispatch?
    end

    event :wait_for_trip_confirmation do
      error do |e|
        logger.error("error in AASM for vehicle #{self.id}, event wait_for_trip_confirmation failed:\n#{e}")
      end

      transitions from: :wtg_for_driver_dispatch, 
                  to: :wtg_for_trip_confirmation,
                  guard: :allowed_to_wait_for_trip_confirmation?
    end

    # the vehicle is entered and present, a person will physically verify
    # the data at this state before it is ready to wiat for the title.
    #
    # this is the initial state when no pick up is needed, in which case
    # this event is not fired.
    event :wait_for_inventory do
      error do |e|
        logger.error("error in AASM for vehicle #{self.id}, event wait_for_inventory failed:\n#{e}")
      end

      transitions from: [ :wtg_for_trip_confirmation, :wtg_to_clear_pickup, :wtg_for_driver_dispatch ],
                  to: :wtg_for_inventory,
                  guard: :allowed_to_wait_for_inventory?
    end

    event :wait_for_title do
      error do |e|
        logger.error("error in AASM for vehicle #{self.id}, event wait_for_title failed:\n#{e}")
      end

      transitions from: :wtg_for_inventory,
                  to: :wtg_for_title,
                  guard: :allowed_to_wait_for_title?
    end

    # ready to be shown in frontend auction
    event :prepare_for_auction do
      error do |e|
        logger.error("error in AASM for vehicle #{self.id}, event prepare_for_auction failed:\n#{e}")
      end

      transitions from: [ :wtg_for_title, :wtg_for_sale_confirmation, :wtg_for_settlement_confirmation ],
                  to: :ready_for_auction,
                  guard: :allowed_to_prepare_for_auction?
    end

    # Sale confirmation the vehicle has sold
    event :wait_for_sale_confirmation do
      error do |e|
        logger.error("error in AASM for vehicle #{self.id}, event wtg_for_sale_confirmation failed:\n#{e}")
      end

      transitions from: [ :ready_for_auction, :wtg_for_title ],
                  to: :wtg_for_sale_confirmation,
                  guard: :allowed_to_wait_for_sale_confirmation?
    end

    # the vehicle has sold
    event :wait_for_buyer_charge_confirmation do
      error do |e|
        logger.error("error in AASM for vehicle #{self.id}, event wtg_for_buyer_charge_confirmation failed:\n#{e}")
      end

      transitions from: [ :ready_for_auction, :wtg_for_sale_confirmation ],
                  to: :wtg_for_buyer_charge_confirmation,
                  guard: :allowed_to_wait_for_buyer_charge_confirmation?
    end

    event :wait_for_sale_docs do
      error do |e|
        logger.error("error in AASM for vehicle #{self.id}, event awaiting_sale_docs failed:\n#{e}")
      end

      transitions from: :wtg_for_buyer_charge_confirmation, 
                  to: :awaiting_sale_docs,
                  guard: :allowed_to_wait_for_sale_docs?
    end

    event :prepare_for_seller_billing do
      error do |e|
        logger.error("error in AASM for vehicle #{self.id}, event ready_for_seller_billing failed:\n#{e}")
      end

      transitions from: [ :awaiting_sale_docs, :wtg_for_buyer_charge_confirmation], 
                  to: :ready_for_seller_billing,
                  guard: :allowed_to_be_ready_for_seller_billing?
    end

    event :wait_for_settlement_confirmation do
      error do |e|
        logger.error("error in AASM for vehicle #{self.id}, event wait_for_settlement_confirmation failed:\n#{e}")
      end

      transitions from: :ready_for_seller_billing, 
                  to: :wtg_for_settlement_confirmation,
                  guard: :allowed_to_wait_for_settlement_confirmation?
    end
    
    # hooray! lifecylce complete.
    event :close do
      error do |e|
        logger.error("error in AASM for vehicle #{self.id}, event close failed:\n#{e}")
      end

      transitions from: [ :wtg_for_settlement_confirmation ],
                  to: :closed,
                  guard: :allowed_to_close?
    end

    # When a vehicle lot is canceled, it goes to either cancelled or seller billing.
    event :cancel do
      error do |e|
        logger.error("error in AASM for vehicle #{self.id}, event cancel failed:\n#{e}")
      end

      transitions from: :wtg_to_clear_pickup, 
                  to: :canceled, guard: :allowed_to_cancel_with_service_orders?

      transitions from: [ :wtg_to_clear_pickup, :wtg_for_driver_dispatch, :wtg_for_trip_confirmation,
                          :wtg_for_title, :ready_for_auction, :wtg_for_sale_confirmation ],
                  to: :ready_for_seller_billing,
                  guard: :allowed_to_cancel?
    end
  end

  ###################
  # Instance Methods
  #################

  # AASM Gaurds
  #
  # Guards allow you to ensure the object has the data required before
  # transitioning to a state. This is useful as validation methods with
  # a lot of exceptions based on object state can become unclear.
  # A guard must return true or false.

  def allowed_to_wait_to_clear_pickup?
    true # Currently, transition is always allowed.
  end

  def allowed_to_wait_for_driver_dispatch?
    logger.info("Will determine if lot is allowed_to_wait_for_driver_dispatch")
    # Pickup hold will not allow transition.
    if self.hold_for_pickup?
      self.errors.add(:hold_for_pickup_date, I18n.t("controllers.vehicle.transition_failures.pickup_hold_exists"))
    end

    # Disallow if error messages exist
    !(self.errors.messages.present? && (self.errors.messages.length > 0))
  end

  def allowed_to_wait_for_trip_confirmation?
    # Pickup hold will not allow transition.
    if self.hold_for_pickup?
      self.errors.add(:hold_for_pickup_date, I18n.t("controllers.vehicle.transition_failures.pickup_hold_exists"))
    end
    self.validate_scheduled_pickup_date_cannot_be_in_the_past

    # Disallow if error messages exist
    !(self.errors.messages.present? && (self.errors.messages.length > 0))
  end

  def allowed_to_wait_for_inventory?
    trip_info = self.trip_infos.present? ? self.trip_infos.first : nil
    if self.pickup_required? && (trip_info.nil? || trip_info.trip_distance.nil?)
      self.errors.add("trip_infos.trip_distance", I18n.t("views.shared.required"))
    end

    # if self.pickup_required? && !self.pickup_date?
    #   self.errors.add("pickup_date", I18n.t("views.shared.required"))
    # end

    if self.pickup_required? && (trip_info.nil? || trip_info.trip_date.nil? || !trip_info.trip_date.present?)
      self.errors.add("trip_infos.trip_date", I18n.t("views.shared.required"))
    end

    if self.pickup_required? && trip_info.present? && trip_info.trip_date.present? && trip_info.trip_date > Date.today
      self.errors.add("trip_infos.trip_date", I18n.t("models.vehicle.errors.date_cannot_be_future"))
    end



    # Pickup hold will not allow transition.
    if self.hold_for_pickup?
      self.errors.add(:hold_for_pickup_date, I18n.t("controllers.vehicle.transition_failures.pickup_hold_exists"))
    end

    self.validate_advance_charges    

    # Validate storage_thru_date before transition
    if(!self.ok_pay_charge.blank? && self.advance_charge.storage_daily? && !self.cancellation_pending? && !self.owner_retain_canceled? && !self.canceled?)
      if(self.advance_charge.storage_thru_date.blank?)
        self.errors.add(:storage_thru_date, I18n.t("activerecord.errors.models.vehicle.attributes.storage_thru_date.blank"))
      elsif(self.in_or_after_state?(:wtg_for_trip_confirmation) && self.pickup_date.present? && self.advance_charge.storage_thru_date > self.pickup_date)
        self.errors.add(:storage_thru_date, I18n.t("activerecord.errors.models.vehicle.attributes.storage_thru_date.later_than_trip_date"))
      end
    end

    !(self.errors.messages.present? && (self.errors.messages.length > 0))
  end

  def allowed_to_wait_for_title?
    # Disallow if error messages exist and the lot having unapproved make and model
    unless self.custom_make_model_approved?
      self.errors.add(:unapproved_lot, I18n.t("activerecord.errors.models.vehicle.attributes.unapproved_lot.message"))
    end
    !(self.errors.messages.present? && (self.errors.messages.length > 0)) && self.custom_make_model_approved?
  end

  def allowed_to_prepare_for_auction?
    # Add errors if trying to transition from ownership transfer with
    # a sale_doc copart_code of 'XX'
    if self.wtg_for_title?
      if self.sale_doc_type.present? && (self.sale_doc_type.copart_code == 'XX')
        self.errors.add(:sale_doc_type, I18n.t("activerecord.errors.models.vehicle.attributes.sale_doc_type.inclusion"))
      end
    end

    # Disallow if error messages exist or there is a sale hold present.
    !(self.errors.messages.present? && (self.errors.messages.length > 0))
  end

  def allowed_to_wait_for_sale_confirmation?
    if self.persisted? && self.sell_now && (self.wtg_for_title? || self.ready_for_auction?)
      # Sale hold will not allow transition.
      if self.hold_for_sale?
        self.errors.add(:sale_hold_exists_error, I18n.t("controllers.vehicle.transition_failures.sale_hold_exists"))
      end
      # service order of high priority and approved must be complete
      if self.service_orders.joins(:service_order_details).where("service_order_details.status = ? AND service_orders.priority = ?", ServiceOrder::SO_STATUS_APPROVED, ServiceOrder::SO_PRIORITY_HIGH).count > 0
        self.errors.add(:"auction_datum.auction_date", I18n.t("models.vehicle.errors.service_order_must_be_completed"))
      end
      # Add errors if trying to transition from ownership transfer with
      # a sale_doc copart_code of 'XX'
      if self.wtg_for_title?
        if self.sale_doc_type.present? && self.sale_doc_type.copart_code == 'XX'
          self.errors.add(:sale_doc_type, I18n.t("activerecord.errors.models.vehicle.attributes.sale_doc_type.inclusion"))
        end
      end
      !(self.errors.messages.present? && self.errors.messages.length > 0)
    elsif self.persisted? && self.wtg_for_title? && !self.sell_now
      false
    else
      true
    end
  end

  def allowed_to_wait_for_buyer_charge_confirmation?
    !(self.errors.messages.present? && self.errors.messages.length > 0)
  end

  def allowed_to_wait_for_sale_docs?
    # Sale docs present, don't allow lot to enter this stage (skip it)
    if self.sale_doc_at_copart_date.present?
      self.errors.add(:wait_for_sale_docs, I18n.t("models.vehicle.errors.sale_doc_at_copart_date_present_error"))
      return false
    end
    return false if self.sale_doc_at_copart_date.present?
    !(self.errors.messages.present? && self.errors.messages.length > 0)
  end

  def allowed_to_be_ready_for_seller_billing?
    !(self.errors.messages.present? && self.errors.messages.length > 0)
  end

  def allowed_to_wait_for_settlement_confirmation?
    !(self.errors.messages.present? && self.errors.messages.length > 0)
  end

  def allowed_to_close?
    # They need to say 'yes' to Member Invoice Complete

    # Only check these validations if the transition to close is not part of a
    # relist operation.
    if !self.bypass_validations_because_of_relist && !self.relisted?
      # They need to say 'yes' to Seller Invoice Complete
      if !self.seller_billing_complete?
        self.errors.add(:seller_billing_complete, I18n.t("views.vehicle._settlement_confirmation.seller_invoice_transition_error"))
      end

      # Is a member present?
      if self.member_id.present? && !self.owner_retain_canceled? && !self.canceled?
        # They need to say 'yes' to Member Paid
        if !self.member_paid?
          self.errors.add(:member_paid, I18n.t("views.vehicle._settlement_confirmation.buyer_must_pay"))
        end

        # The member should have the sale docs
        if self.sale_doc_given_to_buyer_date.nil?
          self.errors.add(:sale_doc_given_to_buyer_date, I18n.t("models.vehicle.errors.required"))
        end
      end

      # They need to enter a lot left yard date
      if self.left_yard_date.nil?
        self.errors.add(:left_yard_date, I18n.t("models.vehicle.errors.required"))
      end

      if self.sale_doc_at_copart_date.nil? && self.ownership_transfer_type.present? && self.ownership_transfer_type.awaiting_ownership_docs?
        self.errors.add(:sale_doc_at_copart_date, I18n.t("models.vehicle.errors.required"))
      end
    end

    # How'd we do?
    self.errors.empty?
  end

  def allowed_to_cancel?
    # Lot cannot be canceled if it is in the 'Auction Lots' state with an auction date set.
    if self.ready_for_auction? && self.auction_datum.present? && self.auction_datum.auction_date.present?
      self.errors.add(:cannot_cancel_with_auction_date_set,
                      I18n.t("controllers.vehicle.transition_failures.cancel_with_auction_date_set"))
      false
    else
      true
    end
  end


  def allowed_to_cancel_with_service_orders?
    if self.wtg_to_clear_pickup? && self.has_completed_service_orders?
      self.errors.add(:cannot_cancel_with_completed_service_orders,
                      I18n.t("controllers.vehicle.transition_failures.cancel_with_service_orders"))
      false
    else
      true
    end
  end

  # Other Stuff

  # Methods to determine which partials should be shown on the vehicle
  # form page
  def show_wait_to_clear_pickup_form?
    self.persisted?
  end

  def show_wait_for_driver_dispatch_form?
    self.pickup_required? && !self.wtg_to_clear_pickup?
  end

  # reading this it seems like persisted? should be pickup_required?
  def show_wait_for_trip_confirmation_form?
    self.persisted? && !self.wtg_to_clear_pickup? && !self.wtg_for_driver_dispatch?
  end

  def show_wait_for_inventory_form?
    self.persisted? && 
      !self.wtg_to_clear_pickup? && 
      !self.wtg_for_driver_dispatch? && 
      !self.wtg_for_trip_confirmation?
  end

  def show_wait_for_title_form?
    show_wait_for_inventory_form? && !self.wtg_for_inventory?
  end

  def show_ready_for_auction_form?
    show_wait_for_title_form? && !self.wtg_for_title?
  end

  def show_wait_for_sale_confirmation_form?
    show_ready_for_auction_form? && !self.ready_for_auction?
  end

  def show_wait_for_buyer_charge_form?
    logger.info ("entering show_wait_for_buyer_charge_form")
    show_wait_for_sale_confirmation_form? && !self.wtg_for_sale_confirmation?
  end

  def show_ready_for_seller_billing_form?
    logger.info ("entering show_ready_for_seller_billing_form")
    show_wait_for_buyer_charge_form? && !self.wtg_for_buyer_charge_confirmation? && !self.awaiting_sale_docs?
  end

  def show_wait_for_settlement_confirmation_form?
    self.wtg_for_settlement_confirmation? || self.closed?
  end
   

  # Move the vehicle to the next state (the AASM guards will validate the actual transition).
  def transition(state_change_event=nil)
    if state_change_event.present?
      if self.public_send("may_#{state_change_event}?")
        self.public_send("#{state_change_event}")
      end
    else
      if self.state.blank?
        self.wait_to_clear_pickup
      elsif self.wtg_to_clear_pickup? && self.may_wait_for_driver_dispatch?
        self.wait_for_driver_dispatch
      elsif self.wtg_for_driver_dispatch? && self.may_wait_for_trip_confirmation?
        self.wait_for_trip_confirmation
      elsif self.wtg_for_trip_confirmation? && self.may_wait_for_inventory?
        self.wait_for_inventory
      elsif self.wtg_for_inventory? && self.may_wait_for_title?
        self.wait_for_title
      elsif self.wtg_for_title? && self.may_prepare_for_auction?
        self.prepare_for_auction
      elsif self.ready_for_auction? && self.may_wait_for_sale_confirmation?
        self.wait_for_sale_confirmation
      elsif self.wtg_for_sale_confirmation? && self.may_wait_for_buyer_charge_confirmation?
        self.wait_for_buyer_charge_confirmation
      elsif self.may_wait_for_sale_docs?
        self.wait_for_sale_docs
      elsif (self.awaiting_sale_docs? || self.wtg_for_buyer_charge_confirmation?) && self.may_prepare_for_seller_billing?
        self.prepare_for_seller_billing
      elsif self.ready_for_seller_billing? && self.may_wait_for_settlement_confirmation?
        self.wait_for_settlement_confirmation
      elsif self.may_close?
        self.close
      end
    end

    self.state_changed?
  end

  def may_wait_for_sale_docs?
    self.wtg_for_buyer_charge_confirmation? && self.ownership_transfer_type.present? && self.ownership_transfer_type.sell_on_doc_pending?
  end


  def add_business_note(sub_type, note_body_text, employee)
    self.add_note(sub_type, NoteType::NOTE_TYPE_CODE_LOT,
                  note_body_text, employee, true)
  end


  def sale_confirmation_need_approval?
    bid_type_code = self.get_high_bid_bid_type_code
    reserve = self.min_bid_reserve.present? ? self.min_bid_reserve.to_f : 0
    high_bid = self.high_bid_amount.present? ? self.high_bid_amount.to_f : 0
    (bid_type_code != "I") && (high_bid < reserve) && (high_bid >= 0)
  end


  def process_sale_confirmation_notes(data_hash, employee)
    if data_hash[:sale_action_approved_by].present?
      formatted_high_bid_amount = self.currency_symbol.present? ?
                                  number_to_currency(data_hash[:high_bid_amount], precision: 2, unit: self.currency_symbol) :
                                  number_to_currency(data_hash[:high_bid_amount], precision: 2)
      self.add_note(Note::RECORD_UPDATE, NoteType::NOTE_TYPE_CODE_LOT,
                    I18n.t("controllers.vehicle.notes.sale_confirmed",
                           approved_by: data_hash[:sale_action_approved_by],
                           high_bid_amount: formatted_high_bid_amount),
                    employee, true)
    end
  end

  def horsepower_unit
    horsepower_unit = ""
    country_code = self.get_country_code
    if country_code == "IN"
      horsepower_unit = "hp"
    else
      horsepower_unit = "kW"
    end
    horsepower_unit
  end

  def calculate_buyer_fee_for_display(high_bid_amount, country)
    buyer_fees = BuyerFeeSchedule.get_fee_schedules(self.vehicle_type, MemberCharge::BUYER_FEE, country)
    high_bid_amount_value = BigDecimal.new (high_bid_amount)

    display_buyer_fee = 0.0
    if buyer_fees.present?
      buyer_fees.each do |fee|
        if (high_bid_amount_value >= fee.sale_price_range_lower) && (high_bid_amount_value <= fee.sale_price_range_upper)
          display_buyer_fee = fee.use_percent ? fee.percent * high_bid_amount_value : fee.max_fee
        end
      end
    end
    mask_field(:high_bid_amount, self, {custom_field: true, value: display_buyer_fee})
  end

  def get_buyer_total_fees
    total = 0.0
    self.member_charges.each do |ch|
      total += ch.charge_amount.to_f
    end

    mask_field(:total_member_charges_amount, self, {custom_field: true, value: total + self.high_bid_amount.to_f})
  end

  # For situations when we need to know if the Member/Buyer
  # associated to the record is the same member as the high
  # bidder in bid history.
  def current_buyer_also_high_bidder?
    # No bid history is sell now, which is essentially 'true'
    # as the buyer didn't cahnge
    return true if self.bid_histories.empty?
    # Let's get our high bidder's id
    high_bidder_id = self.bid_histories.first.member_id
    # Well... are they the same?
    high_bidder_id == self.member_id
  end


  # Get high_bid's bid_type
  def get_high_bid_bid_type_code
    bid_type_code = ""
    if !self.bid_histories.blank? && self.member_id.present?
      for bid_history in self.bid_histories
        if (self.high_bid_amount == bid_history.bid_amount) && (self.member_id == bid_history.member_id)
          bid_type = BidType.find_by_id(bid_history.bid_type_id)
          bid_type_code = bid_type.code if bid_type
          break
        end
      end
    end
    bid_type_code
  end


  # Is bid source kiosk?
  def high_bid_is_kiosk?
    return false if self.bid_histories.blank? || !self.member_id.present?
    last_bid = self.bid_histories.first
    last_bid.bid_amount == self.high_bid_amount &&
      last_bid.member_id == self.member_id &&
      ( last_bid.bid_source_code == BidHistory::BID_SOURCE_BID_BUTLER_KIOSK_DIFFERENT_YARD ||
        last_bid.bid_source_code == BidHistory::BID_SOURCE_BID_BUTLER_KIOSK_SAME_YARD ||
        last_bid.bid_source_code == BidHistory::BID_SOURCE_KIOSK_DIFFERENT_YARD ||
        last_bid.bid_source_code == BidHistory::BID_SOURCE_KIOSK_SAME_YARD )
  end

  # Is our high bid a buy now (Copart buy now) bid?
  def high_bid_is_copart_buy_now?
    get_high_bid_bid_type_code == BidType::AURORA_BUY_NOW_CODE
  end


  def state_display_text
    Vehicle.text_for_state(self.state)
  end


  def self.text_for_state(state_as_string=nil)
    return "" if state_as_string.nil?
    # We're using the same text found in the site nav
    I18n.t("controllers.application.nav.#{state_as_string}")
  end


  def set_copart_action_code(action_code)
    self.copart_action_code = action_code
    self.add_audit_note_with_content("setting copart action code to #{action_code} (#{Vehicle.display_for_copart_action_code(action_code)}).", Note::API_AUDIT_LOG_NOTE)
  end


  # A helper to get a reader friendly version of copart action
  # code for use in the api audit pages
  def self.display_for_copart_action_code(action_code)
    case action_code
    when app_config.copart_action_codes["no_action_required"]
      "no special action required"
    when app_config.copart_action_codes["remove_from_auction"]
      "remove from auction"
    when app_config.copart_action_codes["keep_auction_and_prelim_bids"]
      "keep auction and prelim bids"
    when app_config.copart_action_codes["keep_auction_remove_prelim_bids"]
      "keep auction but remove prelim bids"
    when app_config.copart_action_codes["figs_is_rerunning"]
      "Cobalt user initiated rerun"
    when app_config.copart_action_codes["post_auction_cancel_actions"]
      "Cobalt user canceled lot after auction"
    when app_config.copart_action_codes["sale_confirmation_same_buyer_actions"]
      "sale confirmed with high bidder winning"
    when app_config.copart_action_codes["sale_confirmation_different_buyer_actions"]
      "sale confirmed with non-high bidder winning"
    when app_config.copart_action_codes["lot_closed_action"]
      "Cobalt user has closed lot"
    when app_config.copart_action_codes["lot_paid_actions"]
      "lot has been paid for"
    else
      ""
    end
  end

  def self.display_text_for_settlement_model(settlement_model=nil)
    case settlement_model
      when SETTLEMENT_MODEL_INSURANCE then I18n.t("views.vehicle.new.settlement_model_options.standard_insurance")
      when SETTLEMENT_MODEL_NONINSURANCE then I18n.t("views.vehicle.new.settlement_model_options.standard_non_insurance")
      when SETTLEMENT_MODEL_VERMITTLER then I18n.t("views.vehicle.new.settlement_model_options.vermittler")
      when SETTLEMENT_MODEL_STANDARD then I18n.t("views.vehicle.new.settlement_model_options.standard")
    else
      ""
    end
  end

  def self.settlement_models_for_spain
    SETTLEMENT_MODELS.select {|model| model.downcase == 'standard' }
  end

  def self.settlement_models_hash
    country_code = Employee.current.operating_country.code if Employee.current.present? && Employee.current.operating_country.present?
    settlement_models = if !country_code.nil? && country_code.downcase == 'es'
       settlement_models_for_spain
    else
      SETTLEMENT_MODELS.reject { |model| model.downcase == "standard" }
    end
    settlement_models.collect {|model| {type: model, display_text: display_text_for_settlement_model(model)} }
      .sort_by {|hash| hash[:display_text]}
  end




  def search_results(options={})
    main_hash = {
      id: self.id,
      year: self.year,
      lot_num: mask_field(:lot_num, self),
      state: self.state,
      state_display_text: mask_field(:state_display_text, self),
      hold_for_pickup: self.hold_for_pickup,
      hold_for_pickup_date: mask_field(:hold_for_pickup_date, self),
      hold_for_pickup_reason: mask_field(:hold_for_pickup_reason, self),
      hold_for_sale: self.hold_for_sale?,
      hold_type: mask_field(:hold_type, self),
      assignment_date: mask_field(:assignment_date,self),
      model: self.model.as_json(lot_state: self.state, include_make: "yes", klass_name: self.class.name),
      custom_make: self.custom_make.present? ? self.custom_make : nil,
      custom_model: self.custom_model.present? ? self.custom_model : nil,
      facility: self.facility.as_json(include_basic: "yes", klass_name: self.class.name, lot_state: self.state),
      seller: self.seller.as_json(lot_state: self.state, klass_name: self.class.name),
      vehicle_type: self.vehicle_type.search_results(field_name: :vehicle_type_id, lot_state: self.state, klass_name: self.class.name)
    }
  end

  # TODO: needs to be refactored, several duplicate db calls that need to be eliminated
  # CUSTOM definition of the JSON response fields
  # Doing this allows for proper nesting of related objects (like 'address' or 'contact' here),
  # as well as allow us to determine what to show in the public API.
  def as_json(options={})
    # The stuff we know we always want to return
    main_hash = {
      id: self.id,
      state: self.state,
      state_display_text: mask_field(:state_display_text, self),
      lot_num: mask_field(:lot_num, self),
      model: self.model.as_json(lot_state: self.state, include_make: "yes", klass_name: self.class.name), # Vehicle's model is always desired, hence it's not below.
      custom: self.custom,
      custom_make: mask_field(:custom_make, self),
      custom_model: mask_field(:custom_model, self),
      custom_trim: mask_field(:custom_trim, self),
      custom_make_enabled: self.custom_make_enabled,
      custom_model_enabled: self.custom_model_enabled,
      custom_trim_enabled: self.custom_trim_enabled,
      year: mask_field(:year, self),
      high_bid_amount: mask_field(:high_bid_amount, self, options.merge(is_fee: true)),
      min_bid_reserve: mask_field(:min_bid_reserve, self, options.merge(is_fee: true)),
      buy_now: mask_field(:buy_now, self, options.merge(is_fee: true)),
      year_of_manufacture: mask_field(:year_of_manufacture, self),
      hold_for_pickup: self.hold_for_pickup,
      hold_for_pickup_date: mask_field(:hold_for_pickup_date, self),
      hold_for_pickup_reason: mask_field(:hold_for_pickup_reason, self),
      hold_for_sale: self.hold_for_sale?,
      hold_type: mask_field(:hold_type, self),
      item_num: mask_field(:item_num, self),
      assignment_date: mask_field(:assignment_date, self),
      sale_hold_action_date: mask_field(:sale_hold_action_date, self),
      sale_hold_comment: mask_field(:sale_hold_comment, self),
      last_updated_at: self.updated_at
    }
    
    include_all = (options && (options[:include_all] == 'yes'))

    if options && !options.has_key?(:include_basic)
      main_hash.merge!({
        lot_creation_from: self.lot_creation_from,
        additional_info: mask_field(:additional_info, self),
        advance_charge_paid: self.advance_charge_paid,
        body_style: mask_field(:body_style, self), 
        buy_it_now_eligible: mask_field(:buy_it_now_eligible, self),
        buyer_billing_complete: self.buyer_billing_complete,
        claim_ref_num: mask_field(:claim_ref_num, self),
        created_at: mask_field(:created_at, self),
        cubic_capacity: mask_field(:cubic_capacity, self),
        cylinders: mask_field(:cylinders,self),
        co2_emission: mask_field(:co2_emission, self),
        date_claim_reported: mask_field(:date_claim_reported, self),
        date_of_loss: mask_field(:date_of_loss, self),
        delivered_on_date: mask_field(:delivered_on_date, self),
        documented_odometer_hour: mask_field(:documented_odometer_hour, self),
        editable: self.may_edit?,
        engine: mask_field(:engine, self),
        estimated_cost_of_repair: mask_field(:estimated_cost_of_repair, self, options.merge(is_fee: true)),
        euronorm: mask_field(:euronorm, self),
        first_registration_date: mask_field(:first_registration_date, self),
        gross_vehicle_weight: mask_field(:gross_vehicle_weight, self),
        has_engine: self.has_engine,
        has_transmission: self.has_transmission,
        horsepower: mask_field(:horsepower, self),
        insurance: mask_field(:insurance, self),
        inventory_info_readable: self.inventory_info_readable,
        keys: self.keys,
        left_yard_date: mask_field(:left_yard_date, self),
        license_plate_num: mask_field(:license_plate_num, self),
        member_award_date: mask_field(:member_award_date, self),
        member_paid: mask_field(:member_paid, self),
        trim: self.trim.as_json,
        total_member_charges_amount: mask_field(:total_member_charges_amount, self),
        total_seller_charges_amount: mask_field(:total_seller_charges_amount, self),
        grand_total_seller_charges_amount: mask_field(:grand_total_seller_charges_amount, self),
        number_of_reruns: mask_field(:number_of_reruns, self),
        ok_pay_charge: self.ok_pay_charge,
        offsite: self.offsite?,
        original_odometer_hour: mask_field(:original_odometer_hour, self),
        original_doc_received_date: mask_field(:original_doc_received_date, self),
        original_doc_state: mask_field(:original_doc_state, self),
        owner_retain_canceled: owner_retain_canceled?,
        pickup: self.pickup,
        pickup_date: mask_field(:pickup_date, self),
        pickup_required: self.pickup_required?,
        pre_accident_value: mask_field(:pre_accident_value, self, options.merge(is_fee: true)),
        promised_pickup_date: mask_field(:promised_pickup_date, self),
        received_employee_name: mask_field(:received_employee_name, self),
        received_date: mask_field(:received_date, self),
        registration_certificate_num: mask_field(:registration_certificate_num, self),
        relisted: self.relisted?,
        residual_value: mask_field(:residual_value, self, options.merge(is_fee: true)),
        purchase_price: mask_field(:purchase_price, self, options.merge(is_fee: true)),
        sale_action_approved_by: mask_field(:sale_action_approved_by, self),
        sale_doc_application_date: mask_field(:sale_doc_application_date, self),
        sale_doc_at_copart_date: mask_field(:sale_doc_at_copart_date, self),
        sale_doc_given_to_buyer_date: mask_field(:sale_doc_given_to_buyer_date, self),
        sale_doc_state: mask_field(:sale_doc_state, self),
        seller_billing_complete: self.seller_billing_complete,
        settlement_model: mask_field(:settlement_model, self, {custom_field: true, value: self.settlement_model}),
        settlement_model_display_text: mask_field(:settlement_model, self, {custom_field: true, value: Vehicle.display_text_for_settlement_model(self.settlement_model)}),
       # settlement_models: SETTLEMENT_MODEL_OPTIONS, # necessary for AngularJS
        towable: self.towable,
        updated_at: mask_field(:updated_at, self),
        usage: mask_field(:usage, self),
        vat_section: mask_field(:vat_section, self),
        vat_applicable: self.vat_applicable,
        vehicle_registration_num: mask_field(:vehicle_registration_num, self),
        vehicle_description: mask_field(:vehicle_description, self),
        vehicle_length: mask_field(:vehicle_length, self),
        verify_vehicle_identification_num: mask_field(:verify_vehicle_identification_num, self),
        vin_serial_num: mask_field(:vin_serial_num, self)
      })
    end

    if include_all || (options && options[:include_api_error] == 'yes')
      main_hash.merge!(api_error: self.api_error.as_json)
    end

    if options && !options.has_key?(:exclude_unwanted_keys)
      main_hash.merge!(btba_type: self.btba_type.as_json) # Merge BTBA if required
      main_hash.merge!(high_bid_is_copart_buy_now: self.high_bid_is_copart_buy_now?)
    end

    # Only include associated models when needed to avoid performance hits
    if include_all || (options && (options[:include_abnormal_close_type] == 'yes'))
      main_hash.merge!(abnormal_close_type: self.abnormal_close_type.as_json)
    end

    if include_all || (options && (options[:include_addresses] == 'yes'))
      main_hash.merge!(addresses: self.addresses.as_json(include_all: 'yes'))
    end

    if include_all || (options && (options[:include_adjuster] == 'yes'))
      main_hash.merge!(adjuster: self.adjuster.as_json(include_all: 'yes'))
    end

    if include_all || (options && (options[:include_advance_charge] == 'yes'))
      main_hash.merge!(advance_charge: self.advance_charge.as_json)
    end

    if include_all || (options && (options[:include_auction_datum] == 'yes'))
      main_hash.merge!(auction_datum: self.auction_datum.as_json)
    end

    # if include_all || (options && (options[:include_bid_histories] == 'yes'))
    #   main_hash.merge!(bid_histories: self.bid_histories.as_json)
    # end

    if include_all || (options && (options[:include_calculated_odometer_brand] == 'yes'))
      main_hash.merge!(calculated_odometer_brand: self.calculated_odometer_brand.as_json(brand: :calculated_odometer_brand_id,lot_state: self.state, klass_name: self.class.name))
    end

    if include_all || (options && (options[:include_color] == 'yes'))
      main_hash.merge!(color: self.color.as_json(lot_state: self.state, klass_name: self.class.name))
    end

    if include_all || (options && (options[:include_documents] == 'yes'))
      main_hash.merge!(documents: self.documents.as_json)
    end

    if include_all || (options && (options[:include_documented_odometer_brand] == 'yes'))
      main_hash.merge!(documented_odometer_brand: self.documented_odometer_brand.as_json(brand: :documented_odometer_brand_id,lot_state: self.state, klass_name: self.class.name))
    end

    if include_all || (options && (options[:include_drive_train_type] == 'yes'))
      main_hash.merge!(drive_train_type: self.drive_train_type.as_json(lot_state: self.state, klass_name: self.class.name))
    end

    if include_all || (options && (options[:include_facility] == 'yes'))
      main_hash.merge!(facility: self.facility.as_json(include_all: 'yes', klass_name: self.class.name, lot_state: self.state))
    elsif  include_all || (options && (options[:include_facility_compact] == 'yes'))
      main_hash.merge!(facility: self.facility.as_json(klass_name: self.class.name, lot_state: self.state))
    elsif include_all || (options && (options[:include_facility_with_address] == 'yes'))
      main_hash.merge!(facility: self.facility.as_json(include_address: 'yes', klass_name: self.class.name, lot_state: self.state))
    elsif options && options[:include_facility_basic] == "yes"
      main_hash.merge!(facility: self.facility.as_json(include_basic: "yes", klass_name: self.class.name, lot_state: self.state))
    end

    if include_all || (options && (options[:include_fuel_type] == 'yes'))
      main_hash.merge!(fuel_type: self.fuel_type.as_json)
    end

    if include_all || (options && (options[:include_hold_type] == 'yes'))
      main_hash.merge!(hold_type: self.hold_type.as_json)
    end

    # if options && (options[:include_images_light] == 'yes')
    #   main_hash.merge!(images: self.images.map { |img| { id: img.id } }).as_json
    # elsif options && (options[:include_images] == 'yes')
    #   main_hash.merge!(images: self.images.order(:image_sequence_num).as_json)
    # end

    if include_all || (options && (options[:include_insured] == 'yes'))
      main_hash.merge!(insured: self.insured.as_json(include_all: 'yes', lot_state: self.state))
    end

    if include_all || (options && (options[:include_loss_type] == 'yes'))
      main_hash.merge!(loss_type: self.loss_type.as_json(lot_state: self.state, klass_name: self.class.name))
    end

    if options && (options[:include_member_light] == 'yes')
      main_hash.merge!(member: self.member.cobalt_json) unless self.member.nil?
    elsif options && (options[:include_member] == 'yes')
      main_hash.merge!(member: self.member.cobalt_json) unless self.member.nil?
    elsif options && (options[:include_member_compact] == 'yes')
     main_hash.merge!(member: self.member.cobalt_json) unless self.member.nil? 
    end

    if include_all || (options && (options[:include_member_charges] == 'yes'))
      main_hash.merge!(member_charges: self.member_charges.as_json(include_all: 'yes'))
    end

    # We have the option to limit the number of vehicle notes returned
    # since there may be a lot of them.
    # if options && options[:include_last_n_user_notes].present?
    #   num_notes = options[:include_last_n_user_notes].to_i rescue 0
    #   if num_notes > 0
    #     main_hash.merge!(notes: self.notes.user_notes.limit(num_notes).as_json)
    #   end
    # elsif options && options[:include_last_n_notes].present?
    #   num_notes = options[:include_last_n_notes].to_i rescue 0
    #   if num_notes > 0
    #     main_hash.merge!(notes: self.notes.not_api_audit_notes.limit(num_notes).as_json)
    #   end
    # elsif options && (options[:include_notes] == 'yes')
    #   main_hash.merge!(notes: self.notes.not_api_audit_notes.as_json)
    # end

    if include_all || (options && (options[:include_original_doc_country] == 'yes'))
      main_hash.merge!(original_doc_country: self.original_doc_country.as_json(field_name: :original_doc_country_id, lot_state: self.state, klass_name: self.class.name, include_states: "yes"))
    end

    if include_all || (options && (options[:include_original_doc_type] == 'yes'))
      main_hash.merge!(original_doc_type: self.original_doc_type.as_json(doc_type: :original_doc_type_id, lot_state: self.state, klass_name: self.class.name))
    end

    if include_all || (options && (options[:include_original_odometer_brand] == 'yes'))
      main_hash.merge!(original_odometer_brand: self.original_odometer_brand.as_json(brand: :original_odometer_brand_id,lot_state: self.state, klass_name: self.class.name))
    end

    if include_all || (options && (options[:include_owner] == 'yes'))
      main_hash.merge!(owner: self.owner.as_json(include_all: 'yes', lot_state: self.state))
    end

    if include_all || (options && (options[:include_ownership_transfer_type] == 'yes'))
      main_hash.merge!(ownership_transfer_type: self.ownership_transfer_type.as_json(lot_state: self.state, klass_name: self.class.name))
    end

    if include_all || (options && (options[:include_pickup_location] == 'yes'))
      main_hash.merge!(pickup_location: self.pickup_location.as_json(include_all: 'yes', association_name: "pickup_location"))
    end

    if include_all || (options && (options[:include_primary_damage_type] == 'yes'))
      main_hash.merge!(primary_damage_type: self.primary_damage_type.as_json(damage_type: :primary_damage_type_id, lot_state: self.state, klass_name: self.class.name))
    end

    if include_all || (options && (options[:include_run_condition] == 'yes'))
      main_hash.merge!(run_condition: self.run_condition.as_json(lot_state: self.state, klass_name: self.class.name))
    end

    if include_all || (options && (options[:include_sale_confirmation_status] == 'yes'))
      main_hash.merge!(sale_confirmation_status: self.sale_confirmation_status.as_json(lot_state: self.state), klass_name: self.class.name)
    end

    if include_all || (options && (options[:include_sale_doc_country] == 'yes'))
      main_hash.merge!(sale_doc_country: self.sale_doc_country.as_json(field_name: :sale_doc_country_id, lot_state: self.state, klass_name: self.class.name, include_states: "yes"))
    end

    if include_all || (options && (options[:include_sale_doc_type] == 'yes'))
      main_hash.merge!(sale_doc_type: self.sale_doc_type.as_json(doc_type: :sale_doc_type_id, lot_state: self.state, klass_name: self.class.name))
    end

    if include_all || (options && (options[:include_secondary_damage_type] == 'yes'))
      main_hash.merge!(secondary_damage_type: self.secondary_damage_type.as_json(damage_type: :secondary_damage_type_id, lot_state: self.state, klass_name: self.class.name))
    end

    if options && (options[:include_seller_light] == 'yes')
      main_hash.merge!(seller: self.seller.as_json(include_contact: 'yes',
                                                   include_seller_company: 'yes',
                                                   include_service_orders: 'yes',
                                                   include_seller_type: 'yes', 
                                                   lot_state: self.state, 
                                                   klass_name: self.class.name))
    elsif include_all || (options && (options[:include_seller] == 'yes'))
      main_hash.merge!(seller: self.seller.as_json(include_all: 'yes', lot_state: self.state, klass_name: self.class.name))
    elsif include_all || (options && (options[:include_seller_compact] == 'yes'))
      main_hash.merge!(seller: self.seller.as_json(lot_state: self.state, klass_name: self.class.name))
    end

    if include_all || (options && (options[:include_seller_charges] == 'yes'))
      main_hash.merge!(seller_charges: self.seller_charges.as_json(include_gl_type: 'yes'))
    end

    # Only include service order when needed to avoid unnecessary performance hits
    if include_all || (options && (options[:include_service_orders] == "yes"))
      main_hash.merge!(service_orders: self.service_orders.as_json(include_all: 'yes'))
    elsif options && options[:service_orders_compact] == "yes"
      main_hash.merge!(service_orders: self.service_orders.as_json())
    end

    if options && (options[:include_service_orders_basic] == "yes")
      main_hash.merge!(service_orders: self.service_orders.as_json)
    end

    if include_all || (options && (options[:include_subhauler] == 'yes'))
      main_hash.merge!(subhauler: self.subhauler.as_json(include_subhauler_type: 'yes', lot_state: self.state, klass_name: self.class.name))
    end

    if include_all || (options && (options[:include_transmission_type] == 'yes'))
      main_hash.merge!(transmission_type: self.transmission_type.as_json(lot_state: self.state, klass_name: self.class.name))
    end
    # include trip_infos
    if include_all || (options && (options[:include_trip_infos] == 'yes'))
      main_hash.merge!(trip_infos: self.trip_infos.as_json(include_all: 'yes'))
    end

    if include_all || (options && (options[:include_vehicle_type] == 'yes'))
      main_hash.merge!(vehicle_type: self.vehicle_type.as_json(field_name: :vehicle_type_id, lot_state: self.state, klass_name: self.class.name))
    end

    if include_all || (options && (options[:include_yard] == 'yes'))
      main_hash.merge!(yard: self.yard.as_json(lot_state: self.state, klass_name: self.class.name, include_facility: 'yes', include_yard_facilities: 'yes', include_yard_rows: 'yes'))
    end

    if include_all || (options && (options[:include_yard_row] == 'yes'))
      main_hash.merge!(yard_row: self.yard_row.as_json(lot_state: self.state, klass_name: self.class.name))
    end

    if include_all || (options && (options[:include_engine_output_unit] == 'yes'))
      main_hash.merge!(engine_output_unit: get_unit_object(self.engine_output_unit))
    end

    if include_all || (options && (options[:include_odometer_unit] == 'yes'))
      main_hash.merge!(odometer_unit: get_unit_object(self.odometer_unit_id))
    end

    if include_all || (options && (options[:include_original_odometer_unit] == 'yes'))
      main_hash.merge!(original_odometer_unit: get_unit_object(self.original_odometer_unit_id))
    end

    if include_all || (options && (options[:include_documented_odometer_unit] == 'yes'))
      main_hash.merge!(documented_odometer_unit: get_unit_object(self.documented_odometer_unit_id))
    end

    if include_all || (options && (options[:include_weight_unit] == 'yes'))
      main_hash.merge!(weight_unit: get_unit_object(self.weight_unit_id))
    end

    if include_all || (options && (options[:include_length_unit] == 'yes'))
      main_hash.merge!(length_unit: get_unit_object(self.length_unit_id))
    end

    main_hash
  end

  # Get Unit
  def get_unit_object unit_id
    return nil if !unit_id
    Unit.find_by_id(unit_id).try(:as_json)
  end  

  # Get Unit
  def get_unit_code unit_id
    return "" if !unit_id
    unit = Unit.find_by_id(unit_id)
    unit.present? ? unit.code : ""
  end

  # Get company code from facility
  def company_code
    if self.yard.present? && self.yard.facility.present? && self.yard.facility.country.present?
      country = self.yard.facility.country
      "COPART#{country.code}".upcase
    else
      ""
    end
  end

  def confirm_sale!(buy_it_now=nil)
    awarded_date = (buy_it_now ? self.auction_datum.sale_time.utc : Time.now.utc) rescue Time.now.utc
    self.update_columns(sale_confirmed: true, sale_confirmed_date: awarded_date)
  end

  def as_copart_json
    # Build the Aurora style description
    lot_description = self.year.present? ? "#{self.year} " : ""
    lot_description += "#{self.model.make.name} #{self.model.name}"
    lot_description += " #{self.trim.try(:name) || self.custom_trim.to_s}"
    lot_description.rstrip!
    note = self.find_lot_note(self.id,'Vehicle')
    # Let us begin
    self.empty_string_nil_varchar_text_columns

    copart_hash = {
      lot: {
        additionalInfo: self.additional_info,
        adjusterKey: self.adjuster.present? ? "#{self.adjuster.id}" : "",
        auctionStatus: self.copart_action_code,
        bodyStyle: self.body_style,
        btbaCode: self.btba_type.present? ? self.btba_type.code : "",
        buyerNumber: self.member_id.present? ? "#{self.member_id}" : "0",
        buyItNowEligible: Vehicle.y_or_n_for_bool(self.buy_it_now_eligible),
        claimNumber: self.claim_ref_num,
        color: self.color.present? ? self.color.code : "",
        companyCode: self.company_code,
        conditionCode: self.run_condition.present? ? self.run_condition.code : "",
        creationUser: self.created_by[0...30],
        cubicCapacityUnit: self.cubic_capacity? ? "cc" : "",
        currencyCode: self.currency_code,
        co2EmissionUnit: self.co2_emission.present? ? "g/km" : "",
        damageType: self.primary_damage_type.present? ? self.primary_damage_type.code : "",
        description: lot_description,
        documentedOdometerBrand: self.documented_odometer_brand.present? ? self.documented_odometer_brand.code : "",
        odometerBrand: self.calculated_odometer_brand.present? ? self.calculated_odometer_brand.code : "",
        driveTrain: self.drive_train_type.present? ? self.drive_train_type.display_text : "",
        email: "",
        engine: Vehicle.y_or_n_for_bool(self.has_engine),
        engineDescription: self.engine,
        #euronorm: self.euronorm || "",
        facilityNumber: self.yard.present? ? "#{self.yard.yard_num}" : "",
        facilityName: self.yard.present? ? "#{self.yard.name}" : "",
        fuelType: self.fuel_type.present? ? self.fuel_type.code : "",
        fuelTypeDescription: self.fuel_type.present? ? self.fuel_type.display_text : "",
        holdComment: self.sale_hold_comment,
        holdForSale: Vehicle.y_or_n_for_bool(self.hold_for_sale),
        insured: self.insured_name,
        isRelisted: self.relisted,
        isCancelled: (self.owner_retain_canceled? || self.canceled?),
        itemTypeCode: self.vehicle_type.present? ? self.vehicle_type.code : "",
        keys: (self.keys.present? && self.keys == KEYS_YES) ? "Y" : "N",
        licensePlateNumber: self.license_plate_num,
        lossType: self.loss_type.present? ? self.loss_type.code : "",
        lotNumber: self.lot_num,
        lotAwardedFrom: self.lot_awarded_from.present? ? self.lot_awarded_from : "",
        lotStage: self.aasm_state_code || 0,
        lotState: self.state,
        modificationUser: self.last_updated_by[0...30],
        note: note.present? ? note.content : "",
        offsite: Vehicle.y_or_n_for_bool(self.offsite?),
        originalOdometerBrand: self.original_odometer_brand.present? ? self.original_odometer_brand.code : "",
        originalTitleCountry: Country.code_for_id(self.original_doc_country_id, true),
        originalTitleState: State.get_code(self.original_doc_state),
        ownerName: self.owner_name,
        pickupRequired: "", #Vehicle.y_or_n_for_bool(self.pickup_required?), #per Bledsoe we're going with empty string, hopefully eventually we can just pull this.
        #proQuoteValue: nil, #do not send until we have as it must be a number (primitive on copart side, nil is unacceptable)
        purchaseCode: self.member_paid? ? "Y" : "N",
        lotDocumentUrl: uploaded_document_url,
        receivedByEmployeeName: self.received_employee_name,
        runCondition: (self.run_condition.present? && self.run_condition.code == "D") ? "Y" : "N",
        secondaryDamageType: self.secondary_damage_type.present? ? self.secondary_damage_type.code : "",
        # We should send the SELLER_NUMBER instead of the SELLER_ID
        sellerNumber: "700004", #  Temporary harcoded untill functionality implemented in assigment entry----self.seller.present? ? "#{self.seller.seller_uid}" : "",
        sourceSystem: "Cobalt",
        titleCountryCode:  Country.code_for_id(self.sale_doc_country_id, true),
        titleGroupCode: "C", #hardcoded value provided by Vlad April 30th
        titlePendingCode: (self.ownership_transfer_type.present? && self.ownership_transfer_type.code == "P" ) ? "Y" : "N",
        titleStateCode: State.get_code(self.sale_doc_state),
        titleTypeCode: self.sale_doc_type.present? ? self.sale_doc_type.copart_code : "",
        titleDescription: self.sale_doc_type.present? ? self.sale_doc_type.description : "",
        towable: (self.towable.present? && self.towable == TOWABLE_YES) ? "Y" : "N", 
        transmission: Vehicle.y_or_n_for_bool(self.has_transmission),
        transmissionDescription: self.transmission_type.present? ? self.transmission_type.display_text : "",
        transmissionCode: self.transmission_type.present? ? self.transmission_type.code : "",
        vatApplicable: Vehicle.y_or_n_for_bool(self.vat_applicable),
        vin: self.vin_serial_num,
        wheelPlan: "", #we do not collect this data
        yardRow: self.yard_row.present? ? self.yard_row.row_code : "",
        primaryDamageType: (self.primary_damage_type.present? && self.primary_damage_type.description.present?) ? self.primary_damage_type.description : "",
        residualValue: self.residual_value.present? ? self.residual_value : 0,
        deliveredDate: self.delivered_on_date.present? ? self.delivered_on_date.strftime("%Y-%m-%d") : "",
        sellerName: self.seller.name,
        #
        lossDate: self.date_of_loss.present? ? self.date_of_loss.strftime("%Y-%m-%d") : "", 
        pickedupDate: self.pickup_date.present? ? self.pickup_date.strftime("%Y-%m-%d") : "",
        registrationNumber: self.license_plate_num,
        runnableFlag: (self.run_condition.present? && self.run_condition.description.present?) ? self.run_condition.description : "" ,
        transmissionType_code: (self.transmission_type.present? && self.transmission_type.code.present?) ? self.transmission_type.code : "",
        registrationCertificateNumber: self.registration_certificate_num,
        ownerCompanyName: (self.owner.present? && self.owner.company_name.present?) ?  self.owner.company_name : "",
        ownerVatId: (self.owner.present? && self.owner.vat_id.present?) ? self.owner.vat_id : 0,
        ownerAddressLine1: (self.owner.present? && self.owner.address.line1.present?) ? self.owner.address.line1 : "",
        ownerAddressLine2: (self.owner.present? && self.owner.address.line2.present?) ? self.owner.address.line2 : "",
        ownerAddressCity: (self.owner.present? && self.owner.address.city.present?) ? self.owner.address.city : "",
        ownerAddressStateTypeCode: (self.owner.present? && self.owner.address.state.code.present?) ? self.owner.address.state.code : "",
        ownerAddressStateTypeDescription: (self.owner.present? && self.owner.address.state.name.present?) ? self.owner.address.state.name : "",
        ownerAddressCountryTypeCode: (self.owner.present? && self.owner.address.country.code.present?) ? self.owner.address.country.code : "",
        ownerAddressCountryTypeDescription: (self.owner.present? && self.owner.address.country.name.present?) ? self.owner.address.country.name : "", 
        ownerAddressZip1: (self.owner.present? && self.owner.address.zip.present?) ? self.owner.address.zip : "",
        ownerContactPrimaryPhone: (self.owner.present? && self.owner.contact.primary_phone.present?) ? self.owner.contact.primary_phone : "",
        ownerContactPrimaryPhoneExt: (self.owner.present? && self.owner.contact.primary_phone_ext.present?) ? self.owner.contact.primary_phone_ext : "",
        ownerContactSecondaryPhone: (self.owner.present? && self.owner.contact.secondary_phone.present?) ? self.owner.contact.secondary_phone : "",
        ownerContactSecondaryPhoneEXT: (self.owner.present? && self.owner.contact.secondary_phone_ext.present?) ? self.owner.contact.secondary_phone_ext : "",
        insuredCompanyName: (self.insured.present? && self.insured.company_name.present?) ? self.insured.company_name : "",
        insuredVatId: (self.insured.present? && self.insured.vat_id.present?) ? self.insured.vat_id : "",
        insuredAddressLine1: (self.insured.present? && self.insured.address.line1.present?) ? self.insured.address.line1 : "",
        insuredAddressLine2: (self.insured.present? && self.insured.address.line2.present?) ? self.insured.address.line2 : "",
        insuredAddressCity: (self.insured.present? && self.insured.address.city.present?) ? self.insured.address.city : "",
        insuredAddressStateTypeCode: (self.insured.present? && self.insured.address.state.code.present?) ? self.insured.address.state.code : "",
        insuredAddressStateTypeDescription: (self.insured.present? && self.insured.address.state.name.present?) ? self.insured.address.state.name : "",
        insuredAddressCountryTypeCode: (self.insured.present? && self.insured.address.country.code.present?) ? self.insured.address.country.code : "",
        insuredAddressCountryTypeDescription: (self.insured.present? && self.insured.address.country.name.present?) ? self.insured.address.country.name : "",
        insuredAddressZip1: (self.insured.present? && self.insured.address.zip.present?) ? self.insured.address.zip : "",
        insuredContactPrimaryPhone: (self.insured.present? && self.insured.contact.present? && self.insured.contact.primary_phone.present?) ? self.insured.contact.primary_phone : "",
        insuredContactPrimaryPhoneExt: (self.insured.present? && self.insured.contact.present? && self.insured.contact.primary_phone_ext.present?) ? self.insured.contact.primary_phone_ext : "",
        insuredContactSecondaryPhone: (self.insured.present? && self.insured.contact.present? && self.insured.contact.secondary_phone.present?) ? self.insured.contact.secondary_phone : "",
        insuredContactSecondaryPhoneEXT: (self.insured.present? && self.insured.contact.present? && self.insured.contact.secondary_phone_ext.present?) ? self.insured.contact.secondary_phone_ext : "",
        adjusterFirstName: self.adjuster.contact.first_name.present? ? self.adjuster.contact.first_name : "",
        adjusterLastName: self.adjuster.contact.last_name.present? ? self.adjuster.contact.last_name : "",
        adjusterContactPrimaryPhone: self.adjuster.contact.primary_phone.present? ? self.adjuster.contact.primary_phone : "",
        adjusterContactPrimaryPhoneExt: self.adjuster.contact.primary_phone_ext.present? ? self.adjuster.contact.primary_phone_ext : "",
        adjusterContactSecondaryPhone: self.adjuster.contact.secondary_phone.present? ? self.adjuster.contact.secondary_phone : "",
        adjusterContactSecondaryPhoneExt: self.adjuster.contact.secondary_phone_ext.present? ? self.adjuster.contact.secondary_phone_ext : "",
        pickupLocationName: self.facility.name.present? ? self.facility.name : "",
        pickupLocationAddressLine1: self.facility.address.line1.present? ? self.facility.address.line1 : "",
        pickupLocationAddressLine2: self.facility.address.line2.present? ? self.facility.address.line2 : "",
        pickupLocationAddressCity: self.facility.address.city.present? ? self.facility.address.city : "" ,
        pickupLocationAddressStateTypeDesc: (self.facility.address.state.present? && self.facility.address.state.name.present?) ? self.facility.address.state.name : "" ,
        pickupLocationAddressStateTypeCode: (self.facility.address.state.present? && self.facility.address.state.code.present?) ? self.facility.address.state.code : "",
        pickupLocationAddressCountryTypeCode: self.facility.address.country.code.present? ? self.facility.address.country.code : "",
        pickupLocationAddressCountryTypeDescription: self.facility.address.country.name.present? ? self.facility.address.country.name : "" ,
        pickupLocationAaddressZip1: self.facility.address.zip.present? ? self.facility.address.zip : "",
        pickupLocationContactPrimaryPhone: self.facility.contact.primary_phone.present? ? self.facility.contact.primary_phone : "",
        pickupLocationContactPrimaryPhoneExt: self.facility.contact.primary_phone_ext.present? ? self.facility.contact.primary_phone_ext : "",
        pickupLocationContactSecondaryPhone: self.facility.contact.secondary_phone.present? ? self.facility.contact.secondary_phone : "",
        pickupLocationContactSecondaryPhoneExt: self.facility.contact.secondary_phone_ext.present? ? self.facility.contact.secondary_phone_ext : "",
        #
        pickupPromisedDate: self.promised_pickup_date.present? ? self.promised_pickup_date.strftime("%Y-%m-%d") : "",
        pickupTripConfirmationDate: (self.trip_infos.last.present? && self.trip_infos.last.trip_date.present?) ? self.trip_infos.last.trip_date.strftime("%Y-%m-%d") : "",

        titleOwnershipTransferTypeCode: (self.ownership_transfer_type.present? && self.ownership_transfer_type.code.present?) ? self.ownership_transfer_type.code : "",
        titleownershipTransferTypeDescription: (self.ownership_transfer_type.present? && self.ownership_transfer_type.description.present?) ? self.ownership_transfer_type.description : "" ,
        titleOriginalTitleTypeCode: (self.original_doc_type.present? && self.original_doc_type.code.present?) ? self.original_doc_type.code : "",
        titleOriginalTitleTypeDescription: (self.original_doc_type.present? && self.original_doc_type.description.present?) ? self.original_doc_type.description : "",
        #
        titleOriginalApplicationDate: self.sale_doc_application_date.present? ? self.sale_doc_application_date.strftime("%Y-%m-%d") : "",
        titleSaleDocumentAtCopartDate: self.sale_doc_at_copart_date.present? ? self.sale_doc_at_copart_date.strftime("%Y-%m-%d") : "",

        titleSaleDocumentBuyerDate: self.sale_doc_given_to_buyer_date.present? ? self.sale_doc_given_to_buyer_date.strftime("%Y-%m-%d") : "",
        auctionAuctionDate: (self.auction_datum.present? && self.auction_datum.auction_date.present?) ? self.auction_datum.auction_date.strftime("%Y-%m-%d") : "",
        pickupLocationLocationType: (self.pickup_location.present? && self.pickup_location.location_type.present?) ? self.pickup_location.location_type : "", #pickup.location.locationType.code
        #pickupLocationFacilityType: (self.pickup_location.present? && self.pickup_location.facility_type.present?) ? self.pickup_location.facility_type : "", #pickup.location.locationType.description
        btbaTypeDescription: (self.btba_type.present? && self.btba_type.description.present?) ? self.btba_type.description : "", #BTBA(reserveType).description
        odometerReadableFlagCode: self.inventory_info_readable? ? "YES" : "NO", #odometerReadableFlag.Code
        #
        holdForPickupDate: self.hold_for_pickup_date.present? ? self.hold_for_pickup_date.strftime("%Y-%m-%d") : "",
        vehiclesGroupCode: (self.vehicle_type.present? && self.vehicle_type.vehicle_type_group.present?) ? self.vehicle_type.vehicle_type_group.code : ""
      }
    }

    # Make/Model data
    copart_hash[:lot][:model] = self.model.present? ? self.model.model_uid : 0
    copart_hash[:lot][:make] = (self.model.present? && self.model.make.present?) ? 
                                  self.model.make.make_uid : 0
    copart_hash[:lot][:trim] = self.trim.present? ? self.trim.trim_uid : 0
                                                              
    # Euronorm data
    copart_hash[:lot][:euroName] = self.euronorm.present? ? self.euronorm : ""
    copart_hash[:lot][:euroCode] = self.euronorm.present? ? "E#{self.euronorm.gsub('Euro','').lstrip}" : ""
    # Vat Section 
    # copart_hash[:lot][:vat_section] = self.vat_section.present? ? self.vat_section : ""
    # if self.automobile_group?
    #   copart_hash[:lot][:make] = self.make_code
    #   copart_hash[:lot][:model] = self.model.present? ? self.model.name : ""
    # elsif self.homeowner_group?
    #   copart_hash[:lot][:make] = "HOME"
    #   copart_hash[:lot][:model] = "HOME"
    # else
    #   copart_hash[:lot][:make] = self.custom_make
    #   copart_hash[:lot][:model] = self.custom_model
    # end

    # If dates or numbers aren't present we cannot
    # send them as "" or nil in our json as they are
    # primitives on copart's side.  Furthermore, it
    # was decided that we will send 0 for nil numbers
    # (even though that's innacurate). Hence...

    # The order is alphabetical by copart lot hash key
    # so... copart_hash[:lot][:this_value_is_alpha]
    copart_hash[:lot][:acv] = self.pre_accident_value.present? ? self.pre_accident_value.to_f : 0
    
    if self.assignment_date.present?
      copart_hash[:lot][:assignmentDate] = Vehicle.milliseconds_since_epoch(self.assignment_date)
    end

    copart_hash[:lot][:bidAmount] = self.high_bid_amount.present? ? self.high_bid_amount.to_f : 0
    copart_hash[:lot][:buyItNowAmount] = self.buy_now.present? ? self.buy_now.to_f : 0

    # We have this now don't we? Through the yard?
    copart_hash[:lot][:carCount] = true ? 1 : 0

    if self.date_claim_reported.present?
      copart_hash[:lot][:claimDate] = Vehicle.milliseconds_since_epoch(self.date_claim_reported)
    end
    
    if self.co2_emission.present?
      copart_hash[:lot][:co2] = self.co2_emission.present? ? self.co2_emission : 0
    end

    if self.created_at.present?
      copart_hash[:lot][:creationTimestamp] = Vehicle.milliseconds_since_epoch(self.created_at)
    end

    copart_hash[:lot][:cylinders] = self.cylinders.present? ? "#{self.cylinders}" : ""
    copart_hash[:lot][:cubicCapacity] = self.cubic_capacity.present? ? self.cubic_capacity : 0
    copart_hash[:lot][:documentedOdometerHour] = self.documented_odometer_hour.present? ? self.documented_odometer_hour : 0
    
    if self.first_registration_date.present?
      copart_hash[:lot][:firstRegistrationDate] = Vehicle.milliseconds_since_epoch(self.first_registration_date)
    end

    copart_hash[:lot][:enginePower] = self.horsepower.present? ? self.horsepower : ""

    # Per Vlad (08/27/14) we will send paidDate value here as well
    # (paidDate can be seen below too)
    if self.member_award_date.present?
      copart_hash[:lot][:invoiceDate] = Vehicle.milliseconds_since_epoch(self.member_award_date)
    end
    copart_hash[:lot][:itemNumber] = self.item_num.present? ? self.item_num.to_s : ""
    copart_hash[:lot][:lotGVW] = self.gross_vehicle_weight.present? ? self.gross_vehicle_weight.to_f : nil
    copart_hash[:lot][:lotLength] = self.vehicle_length.present? ? self.vehicle_length.to_f : nil
    copart_hash[:lot][:lotStage] = self.aasm_state_code.present? ? self.aasm_state_code : 0
    copart_hash[:lot][:manufacturerYear] = self.year.present? ? self.year : 0
    copart_hash[:lot][:minimumBid] = self.min_bid_reserve.present? ? self.min_bid_reserve.to_f : 0
    
    if self.updated_at.present?
      copart_hash[:lot][:modificationTimestamp] = Vehicle.milliseconds_since_epoch(self.updated_at)
    end

    copart_hash[:lot][:odometer] = self.usage

    copart_hash[:lot][:odometerUnit] = get_unit_code(self.odometer_unit_id)
    copart_hash[:lot][:originalOdometerUnit] = get_unit_code(self.original_odometer_unit_id)
    copart_hash[:lot][:documentedOdometerUnit] = get_unit_code(self.documented_odometer_unit_id)
    copart_hash[:lot][:enginePowerUnit] = get_unit_code(self.engine_output_unit_id)
    copart_hash[:lot][:weightUnit] = get_unit_code(self.weight_unit_id)
    copart_hash[:lot][:lengthUnit] = get_unit_code(self.length_unit_id)

    if self.left_yard_date.present?
      copart_hash[:lot][:offlotDate] = Vehicle.milliseconds_since_epoch(self.left_yard_date)
    end

    copart_hash[:lot][:originalOdometerHour] = self.original_odometer_hour.present? ? self.original_odometer_hour : 0
    
    if self.member_award_date.present?
      copart_hash[:lot][:paidDate] = Vehicle.milliseconds_since_epoch(self.member_award_date)
    end

    copart_hash[:lot][:previousLotNumber] = self.previous_lot_num.present? ? self.previous_lot_num : 0
    copart_hash[:lot][:productionYear] = self.year_of_manufacture.present? ? self.year_of_manufacture : 0
    copart_hash[:lot][:repairCost] = self.estimated_cost_of_repair.present? ? self.estimated_cost_of_repair.to_f : 0

    if self.sale_confirmed.present?
      copart_hash[:lot][:awardedDate] = Vehicle.milliseconds_since_epoch(self.sale_confirmed_date)
    end
    
    if self.auction_datum.present? && self.auction_datum.sale_time.present?
      copart_hash[:lot][:auctionDate] = Vehicle.milliseconds_since_epoch(self.auction_datum.sale_time)
      copart_hash[:lot][:saleDateUTCOffset] = self.yard.utc_offset_in_hours
    end

    # Operating Country
    if Employee.current.present? && Employee.operating_country.present?
      operating_country_code = Employee.current.operating_country.code
    elsif self.yard.present? && self.yard.facility.present? && self.yard.facility.country.present?
      operating_country_code = self.yard.facility.country.code
    else
      operating_country_code = ""
    end

    copart_hash[:lot][:operatingCountry] = operating_country_code

    # License stuff
    copart_hash[:lock] = {
      licenseRuleList: "0000001843"
    }

    if self.yard.present? && self.yard.facility.present? && self.yard.facility.facility_type == "YARD" && self.yard.facility.country.present?
       if self.yard.facility.country.code == "DE"
         copart_hash[:lock] = {
          licenseRuleList: "0000001743"
         }
       else self.yard.facility.country.code == "IN"
         copart_hash[:lock] = {
          licenseRuleList: "0000001643"
         }
      end
      if self.yard.facility.country.code == "ES"
        copart_hash[:lock] = { licenseRuleList: "0000001943" }
      end
    end


    # Images!!!!
    if self.images.present?
      copart_hash[:images] = []
      self.images.each do |image|
        copart_hash[:images] << {
          imageAuxType: "P", #(P)icture?
          imageName: Image.copart_sized_name(image.image_attachment_file_name),
          imageType: "L", #(L)ot
          imageUrl: image.image_attachment.url(:copart_large),
          jpegType: "F", #(F)ull or (T)humb
          sequenceNumber: image.image_sequence_num
        }
        copart_hash[:images] << {
          imageAuxType: "P", #(P)icture?
          imageName: Image.copart_sized_name(image.image_attachment_file_name),
          imageType: "L", #(L)ot
          imageUrl: image.image_attachment.url(:copart_thumb),
          jpegType: "T", #(F)ull or (T)humb
          sequenceNumber: image.image_sequence_num
        }
      end
    end

    copart_hash
  end


  # Returns the currency symbol for the vehicle's yard or facility.
  def currency_symbol
    if self.yard.present?
      self.yard.facility.address.country.currency rescue ""
    elsif self.facility.present?
      self.facility.address.country.currency rescue ""
    else
      ""
    end
  end


  def currency_code
    self.yard.present? ? self.yard.currency_code : ""
  end


  def make_code
    (self.model.present? && self.model.make.present?) ? self.model.make.code : ""
  end


  def aasm_state_code
    app_config.lot_stages[self.state]
  end


  def uploaded_document_url
    doc_type = DocumentType.find_by_code("A001")
    self.documents.where(document_type_id: doc_type.id).first.try(:document_attachment).try(:url) || ""
  end

  # Updates the ids of this vehicle's associated models
  # to ensure they match what was inputed, or not inputted,
  # on the front-end.
  #
  # Each line is of the psuedo code format:
  #   self.<foo>_id = permitted_params[:<foo>_id] || nil
  #
  def update_associations(permitted_params)
    self.adjuster_id                  = permitted_params[:adjuster_id].present? ? permitted_params[:adjuster_id].to_i : nil
    self.color_id                     = permitted_params[:color_id].present? ? permitted_params[:color_id].to_i : nil
    self.drive_train_type_id          = permitted_params[:drive_train_type_id].present? ? permitted_params[:drive_train_type_id].to_i : nil
    self.engine_output_unit_id        = permitted_params[:engine_output_unit_id].present? ? permitted_params[:engine_output_unit_id].to_i : nil
    self.odometer_unit_id             = permitted_params[:odometer_unit_id].present? ? permitted_params[:odometer_unit_id].to_i : nil
    self.original_odometer_unit_id    = permitted_params[:original_odometer_unit_id].present? ? permitted_params[:original_odometer_unit_id].to_i : nil
    self.documented_odometer_unit_id  = permitted_params[:documented_odometer_unit_id].present? ? permitted_params[:documented_odometer_unit_id].to_i : nil    
    self.facility_id                  = permitted_params[:facility_id].present? ? permitted_params[:facility_id].to_i : nil
    self.fuel_type_id                 = permitted_params[:fuel_type_id].present? ? permitted_params[:fuel_type_id].to_i : nil
    self.lane_id                      = permitted_params[:lane_id].present? ? permitted_params[:lane_id].to_i : nil
    self.loss_type_id                 = permitted_params[:loss_type_id].present? ? permitted_params[:loss_type_id].to_i : nil
    self.member_id                    = permitted_params[:member_id].present? ? permitted_params[:member_id].to_i : nil
    self.model_id                     = permitted_params[:model_id].present? ? permitted_params[:model_id].to_i : nil
    self.trim_id                      = permitted_params[:trim_id].present? ? permitted_params[:trim_id].to_i : nil
    self.original_doc_country_id      = permitted_params[:original_doc_country_id].present? ? permitted_params[:original_doc_country_id].to_i : nil
    self.original_doc_type_id         = permitted_params[:original_doc_type_id].present? ? permitted_params[:original_doc_type_id].to_i : nil
    self.original_odometer_brand_id   = permitted_params[:original_odometer_brand_id].present? ? permitted_params[:original_odometer_brand_id].to_i : nil
    self.ownership_transfer_type_id   = permitted_params[:ownership_transfer_type_id].present? ? permitted_params[:ownership_transfer_type_id].to_i : nil
    self.pickup_location_id           = permitted_params[:pickup_location_id].present? ? permitted_params[:pickup_location_id].to_i : nil
    self.primary_damage_type_id       = permitted_params[:primary_damage_type_id].present? ? permitted_params[:primary_damage_type_id].to_i : nil
    self.run_condition_id             = permitted_params[:run_condition_id].present? ? permitted_params[:run_condition_id].to_i : nil
    self.sale_confirmation_status_id  = permitted_params[:sale_confirmation_status_id].present? ? permitted_params[:sale_confirmation_status_id].to_i : nil
    self.sale_doc_country_id          = permitted_params[:sale_doc_country_id].present? ? permitted_params[:sale_doc_country_id].to_i : nil
    self.sale_doc_type_id             = permitted_params[:sale_doc_type_id].present? ? permitted_params[:sale_doc_type_id].to_i : nil
    self.secondary_damage_type_id     = permitted_params[:secondary_damage_type_id].present? ? permitted_params[:secondary_damage_type_id].to_i : nil
    self.seller_id                    = permitted_params[:seller_id].present? ? permitted_params[:seller_id].to_i : nil
    self.sell_now                     = permitted_params[:sell_now]
    self.subhauler_id                 = permitted_params[:subhauler_id].present? ? permitted_params[:subhauler_id].to_i : nil
    self.transmission_type_id         = permitted_params[:transmission_type_id].present? ? permitted_params[:transmission_type_id].to_i : nil
    self.vehicle_type_id              = permitted_params[:vehicle_type_id].present? ? permitted_params[:vehicle_type_id].to_i : nil
    self.yard_id                      = permitted_params[:yard_id].present? ? permitted_params[:yard_id].to_i : nil
    self.yard_row_id                  = permitted_params[:yard_row_id].present? ? permitted_params[:yard_row_id].to_i : nil
  end


  # update distance management table for distance changes
  def persist_trip_info(params)
    return if (!self.wtg_for_trip_confirmation? && !self.wtg_for_inventory?) || params.blank? 
    if params.present? 
      params.each do |ti_attrs|
        if ti_attrs[:trip_type].present? && ti_attrs[:trip_type][:code] == "P" && ti_attrs[:trip_distance].present?
          TripInfo.persist_trip_info(params, self)
          # Because TripInfo updated the timestamp of self so we need to inform parent object
          # This is bad practice but the only solution with the current implementation
          self.updated_at = Vehicle.find(self.id).updated_at
          yard_facilities = YardFacility.for_yard_facility(self.yard.id,self.pickup_location_id);
          if !yard_facilities.empty?
            yard_facilities[0].update_attributes(:distance => ti_attrs[:trip_distance] )
          else
            yard_facility = YardFacility.new(yard_id: self.yard_id, facility_id: self.pickup_location_id, distance: ti_attrs[:trip_distance])
            yard_facility.save
          end
          break
        end
      end
    end
  end

  # update custom make model related flags
  def update_custom_make_model(permitted_params)
    if permitted_params[:custom_make_enabled].present? || permitted_params[:custom_model_enabled].present?
      self.custom_make_model_approved = false
      self.model = nil
      self.trim = nil
    elsif permitted_params[:custom_trim_enabled].present?
      self.custom_make_model_approved = false
      self.trim = nil
    else
      self.custom_make_model_approved = true
      self.custom_make_enabled = false
      self.custom_model_enabled = false
      self.custom_trim_enabled = false
      self.custom_make = nil
      self.custom_model = nil
      self.custom_trim = nil
    end
  end


  # Clone this vehicle instance for relisting, save it to the database,
  # and return the clone if successful.
  def generate_clone_for_relist(new_seller, include_images)
    is_copart_default_seller = (new_seller.present? && new_seller.copart_default?)
    employee_id = Employee.current.try(:id) rescue nil

    Vehicle.transaction do
      vehicle_copy = self.dup
      vehicle_copy.id = nil
      vehicle_copy.auction_datum.destroy if vehicle_copy.auction_datum.present?
      vehicle_copy.buyer_billing_complete = false
      vehicle_copy.copart_action_code = app_config.copart_action_codes["no_action_required"]
      vehicle_copy.item_num = nil
      vehicle_copy.member_award_date = nil
      vehicle_copy.member_charges.destroy_all unless vehicle_copy.member_charges.empty?
      vehicle_copy.member_paid = nil
      vehicle_copy.previous_lot_num = self.lot_num
      vehicle_copy.lot_num = nil # this is now stored in previous lot num
      vehicle_copy.sale_action_approved_by = nil
      vehicle_copy.sale_confirmed = false
      vehicle_copy.sale_confirmed_date = nil
      vehicle_copy.seller_billing_complete = false
      vehicle_copy.seller_id = new_seller.id if new_seller.present?
      vehicle_copy.seller_charges.destroy_all unless vehicle_copy.seller_charges.empty?
      cloned_vehicle = Vehicle.new(vehicle_copy.attributes)
      cloned_vehicle.number_of_reruns = 0 if is_copart_default_seller
      cloned_vehicle.bypass_validations_because_of_relist = true

      # Make deep copy of advance charges if they exist and the new seller is
      # NOT the Copart default seller.
      if self.advance_charge.present? && !is_copart_default_seller
        adv_charge_attributes = self.advance_charge.attributes
        adv_charge_attributes[:id] = nil
        cloned_vehicle.advance_charge = AdvanceCharge.new(adv_charge_attributes)
      else
        cloned_vehicle.ok_pay_charge = false
      end

      # Make deep copy of trip infos if they exist
      self.trip_infos.each do |ti|
        trip_info_attributes = ti.attributes
        trip_info_attributes[:id] = nil
        cloned_vehicle.trip_infos << TripInfo.new(trip_info_attributes)
      end

      # Make copy of service orders
      self.service_orders.each do |service_order|
        so_attributes = service_order.to_attributes
        cloned_vehicle.service_orders << ServiceOrder.new(so_attributes)
      end

      # Make a copy of images
      #if include_images then cloned_vehicle.images << self.images end

      # Make deep copies of documents
      # self.documents.each do |doc|
      #   # Need to get an authenticated URL since documents permissions are private.
      #   # s3 = AWS::S3.new(access_key_id: S3[:access_key_id], secret_access_key: S3[:secret_access_key])
      #   # bucket = doc.document_attachment.bucket_name
      #   path = doc.document_attachment.path
      #   # signed_object = s3.buckets[bucket].objects[path]
      #   # authenticated_url = signed_object.url_for(:get, expires: 5.minutes.from_now, secure: true).to_s
      #   new_doc = PrivateDocument.new(name: doc.name,
      #                          document_type_id: doc.document_type_id,
      #                          document_attachment: open(path),
      #                          document_attachment_file_name: doc.document_attachment_file_name,
      #                          document_attachment_content_type: doc.document_attachment_content_type,
      #                          document_attachment_file_size: doc.document_attachment_file_size)
      #   cloned_vehicle.documents << new_doc
      # end


      # Make deep copies of notes.
      self.notes.reverse_each { |note| cloned_vehicle.notes << note.dup }
      
      # Transition to state must happen before save! Prepaing lot for auction so that shall applicable only for auction state.
      # Member Paid validation will not come into picture if lot is in auction state - 03/31
      cloned_vehicle.transition(:prepare_for_auction)

      if cloned_vehicle.save
        logger.info "***Relist Lot #{cloned_vehicle.lot_num}: #{cloned_vehicle.state}"
        cloned_vehicle.reload
      else
        logger.error("Error cloning vehicle with id #{self.id}")
        logger.error("****Cloned vehicle errors found: #{cloned_vehicle.errors.messages}****")
        cloned_vehicle
      end
    end
  end


  # Check if the vehicle's current state is in or before the supplied state (test_state).
  def in_or_before_state?(test_state)
    return false if test_state.nil? || self.state.nil?
    test_state = test_state.to_sym
    my_state = self.state.to_sym

    # Get all the states that are in or before the state we want to check (test_state),
    # and then see if the vehicle's current state is in that list (well, technically in a lazy enumerable).
    Vehicle.aasm.states.reverse.lazy.drop_while { |state| state != test_state }.include?(my_state)
  end


  # Check if the vehicle's current state is in or after the supplied state (test_state).
  def in_or_after_state?(test_state)
    return false if test_state.nil? || self.state.nil?
    test_state = test_state.to_sym
    my_state = self.state.to_sym

    # Get all the states that are in and after the state we want to check (test_state),
    # and then see if the vehicle's current state is in that list (well, technically in a lazy enumerable).
    Vehicle.aasm.states.lazy.drop_while { |state| state != test_state }.include?(my_state)
  end

  # Check to see if vehicle was canceled with an owner/seller retain cancel (rather than a clean cancel).
  def owner_retain_canceled?
    self.abnormal_close_type.present? && self.abnormal_close_type.owner_retain_canceled?
  end


  # Check to see if vehicle has been transitioned to a cancelled state
  # (currently either "canceled" or "ready_for_seller_billing" from any
  #  state <= "wtg_for_sale_confirmation")
  def cancellation_pending?
    if self.state_changed?
      before_after_states = self.state_change.map { |st| st.nil? ? nil : st.to_sym }
      
      # It would be nice if Ruby could do pattern matching (like in Elixir and Scala).
      # We could sure use it here.
      if before_after_states[1] == :canceled
        true
      elsif (before_after_states[0] != :awaiting_sale_docs) && (before_after_states[1] == :ready_for_seller_billing)
        true
      else
        false
      end
    else
      false
    end
  end

  def sync_service_order_with_SAP
    # Send Completed Service Orders to SAP as a single request
    # First we will see whether there are any completed service orders that is not synked with SAP
    logger.info("Checking for Completed ServiceOrders that are not in sync with SAP for lot #{self.lot_num}")

    not_synked_completed_service_orders = ServiceOrder.joins(:service_order_details).
                                            where("service_order_details.status = ? and service_order_details.synked_with_sap = ?", ServiceOrder::SO_STATUS_COMPLETE, false).
                                            where("vehicle_id = ? and seller_id = ?", self.id, self.seller_id).
                                            where("so_type = ?", ServiceOrder::SO_ORDER)
                  
    # if any service orders not synked then sent to SAP
    if(not_synked_completed_service_orders.size > 0)
      # Let's get our requester's email
      requesting_user_email = Employee.current ? Employee.current.email : COBALT_ADMIN_EMAIL[:figsoutbid]
      # well alright then, let's send this over
      logger.info("Will send completed ServiceOrders to SAP for lot #{self.lot_num}")
      self.add_audit_note_with_content("Sending of completed ServiceOrder triggered by #{requesting_user_email}", Note::SAP_AUDIT_LOG_NOTE)
      
      ServiceOrderDetail.transaction do
        logger.info("Transaction for ServiceOrders Sync up to SAP started for lot #{self.lot_num}")
        sod_ids = not_synked_completed_service_orders.collect{|s| s.id }
        if sod_ids.size > 0
          logger.info("Service Order Detail Ids that are not in sync with SAP #{sod_ids.to_s} for lot #{self.lot_num}")
          ServiceOrderDetail.where(service_order_id: sod_ids).update_all(synked_with_sap: true)
          logger.info("Updating synked_with_sap to true for service order details ids #{sod_ids.to_s} for lot #{self.lot_num}")
          Resque.enqueue(OutboundSapServiceOrderJob, self.jde_service_order_hash_with_service_order(not_synked_completed_service_orders), self.id)
        end
      end

    else
      logger.info("There are no ServiceOrders with complete status and not in sync with SAP for lot #{self.lot_num}")
    end
  end
  
  private

    def base_jde_hash(with_known_data=false, with_indicator=true)
      # This is ordered in the desired way for
      # SAPFI communication. Please do not change
      # this order unless you know what you're doing.
      hash = {
        documentType: "",
        compCode: with_known_data ? self.yard.comp_code : "",
        currency: with_known_data ? self.yard.currency_code : "",
        postingDate: with_known_data ? Date.today.strftime("%Y%m%d") : "",
        reference: "",
        documentHeaderText: "", # an optional field that we don't currently (03/13/14) have UI for.
        documentDate: with_known_data ? Date.today.strftime("%Y%m%d") : "",
        postingKey: "", # Customer/Member/Seller invoice key
        glAccount: "",
        # Check the key and order in which SAP expects the serviceOrderName
        #serviceOrderName: "",
        ###################################################################
        costCenter: self.yard.present? ? "1#{yard.yard_num}" : "", #always this
        profitCenter: self.yard.present? ? "1#{yard.yard_num}" : "", #always this
        itemText: "",
        assignment: with_known_data ? "#{self.lot_num}" : "", # lot number
        intOrder: "",
        plant: "",
        tax: "",
        taxJurisdiction: "",
        amount: ""
      }

      # This is to include the Tax Free Zone at the item level in the ZLOT API
      if self.facility.present? && self.facility.country.present?
        operating_country_cd = self.facility.country.code
      elsif self.yard.present? && self.yard.facility.present? && self.yard.facility.country.present?
        operating_country_cd = self.yard.facility.country.code
      end

      if operating_country_cd.present? && (operating_country_cd  == "DE" || operating_country_cd == "ES")
        taxFreeZone = (self.yard_row.present? && self.yard_row.tax_free_zone.present? && self.yard_row.tax_free_zone == true) ? "Y" : "N"
      else
        taxFreeZone = ""
      end

      hash[:taxFreeZone] = taxFreeZone

      # This is to include VAT_SECTION and CUSTOM HANDLE
      hash[:VATSection] = self.vat_section.present? ? self.vat_section : ''
      # Checking for not "GERMANY"
      if operating_country_cd.present? && (operating_country_cd == "DE" || operating_country_cd == "ES")
        hash[:customHandle] = self.custom.present? ? 'Y' : 'N'
      else
        hash[:customHandle] = ""
      end
      hash[:indicator] = "" if with_indicator
      hash
    end


    # Add auto system notes when certain attributes change.
    def add_attribute_changed_notes
      if self.valid?
        # 'advance_charge_paid' attribute
        if self.advance_charge_paid_changed?
          charge_paid_note = self.advance_charge_paid? ?
                                I18n.t("views.pickup_order.advance_charges_paid").capitalize :
                                I18n.t("views.pickup_order.advance_charges_not_paid").capitalize
          self.add_note(Note::RECORD_UPDATE, NoteType::NOTE_TYPE_CODE_LOT, charge_paid_note, Employee.current, true)
        end

        # If any holds were added (pickup or sale holds), add the appropriate system note(s).
        if self.hold_for_pickup_changed? && !self.hold_for_pickup_change.any?(&:nil?)
          note_text =
            if self.hold_for_pickup?
              (I18n.t("controllers.vehicle.notes.pickup_hold_added_for") +
                " #{self.hold_for_pickup_date.strftime('%-d.%-m.%Y')}.<br/>" +
                I18n.t("controllers.vehicle.notes.reason") +
                ": #{self.hold_for_pickup_reason}")
            else
              I18n.t("controllers.vehicle.notes.pickup_hold_removed")
            end
          self.add_note(Note::RECORD_UPDATE, NoteType::NOTE_TYPE_CODE_LOT, note_text, Employee.current, true)
        end
        if self.hold_for_sale_changed? && !self.hold_for_sale_change.any?(&:nil?)
          note_text =
            if self.hold_for_sale?
              (I18n.t("controllers.vehicle.notes.sale_hold_added_for") +
                " #{self.sale_hold_action_date.strftime('%-d.%-m.%Y')}.<br/>" +
                I18n.t("controllers.vehicle.notes.reason") +
                ": #{self.sale_hold_comment}")
            else
              I18n.t("controllers.vehicle.notes.sale_hold_removed")
            end
          self.add_note(Note::RECORD_UPDATE, NoteType::NOTE_TYPE_CODE_LOT, note_text, Employee.current, true)
        end

        # If any holds (pickup or sale) are present and the hold date was changed, add a system note.
        if self.hold_for_pickup_date_changed? && !self.hold_for_pickup_date_change.any?(&:nil?)
          note_text =
            I18n.t("controllers.vehicle.notes.pickup_hold_date_changed",
                   original_date: self.hold_for_pickup_date_change[0].strftime("%-d.%-m.%Y"),
                   new_date: self.hold_for_pickup_date_change[1].strftime("%-d.%-m.%Y"))
          self.add_note(Note::RECORD_UPDATE, NoteType::NOTE_TYPE_CODE_LOT, note_text, Employee.current, true)
        end
        if self.sale_hold_action_date_changed? && !self.sale_hold_action_date_change.any?(&:nil?)
          note_text =
            I18n.t("controllers.vehicle.notes.sale_hold_date_changed",
                   original_date: self.sale_hold_action_date_change[0].strftime("%-d.%-m.%Y"),
                   new_date: self.sale_hold_action_date_change[1].strftime("%-d.%-m.%Y"))
          self.add_note(Note::RECORD_UPDATE, NoteType::NOTE_TYPE_CODE_LOT, note_text, Employee.current, true)
        end

        # Add a system note if the high bid amount has been changed.
        if self.high_bid_amount_changed?
          original_high_bid = (self.yard.present? && self.yard.facility.present? && self.yard.facility.address.present? && self.yard.facility.address.country.present?) ?
                               number_to_currency(self.high_bid_amount_change[0] || 0.0, precision: 2, unit: self.yard.facility.address.country.currency) :
                               number_to_currency(self.high_bid_amount_change[0] || 0.0, precision: 2)
          new_high_bid = (self.yard.present? && self.yard.facility.present? && self.yard.facility.address.present? && self.yard.facility.address.country.present?) ?
                          number_to_currency(self.high_bid_amount_change[1] || 0.0, precision: 2, unit: self.yard.facility.address.country.currency) :
                          number_to_currency(self.high_bid_amount_change[1] || 0.0, precision: 2)
          self.add_note(Note::RECORD_UPDATE, NoteType::NOTE_TYPE_CODE_LOT,
                        I18n.t("controllers.vehicle.notes.high_bid_amount_changed",
                               original_high_bid: original_high_bid, new_high_bid: new_high_bid),
                        Employee.current, true)
        end

        # Add a system note if the member has been changed.
        if self.member_id_changed?
=begin
          original_member = Member.find_by_id(self.member_id_change[0])
          new_member = Member.find_by_id(self.member_id_change[1])
          if original_member.present? && new_member.present?
            note_text = I18n.t("controllers.vehicle.notes.member_changed",
                               original_member: "<a href='#{member_path(original_member)}' target='_blank'>#{original_member.display_name} (##{original_member.member_uid})</a>",
                               new_member: "<a href='#{member_path(new_member)}' target='_blank'>#{new_member.display_name} (##{new_member.member_uid})</a>")
            self.add_note(Note::RECORD_UPDATE, NoteType::NOTE_TYPE_CODE_LOT, note_text, Employee.current, true)
          end
=end
        end
      end
    end

    def check_timestamp
      # On top of the last updated at parameter we also need to check against database value as rails allows you to override it from two different sessions
      Vehicle.where(id: self.id, updated_at: self.updated_at).count == 1
    end


    # Set calculated odometer brand to 'N' (Not Actual).
    def set_calculated_odometer_brand
      self.calculated_odometer_brand ||= OdomBrand.find_by_code('N')
    end


    def update_sort_name_columns
      if self.model.present?
        self.sort_name_of_model = self.model.name
        self.sort_name_of_make = self.model.make.name unless self.model.make.nil?
      else
        self.sort_name_of_model = self.custom_model
        self.sort_name_of_make = self.custom_make
      end
    end

    def self.vehicles_report_data(state, employee_id)
      vehicles_array = []
      vehicles = []

      current_employee = Employee.find_by_id(employee_id)
      country_id_desired = Country.find(Employee.find(employee_id).operating_country_id)
      vehicles =
        if state == RECENT_VEHICLES
          Vehicle.edited_by_employee(current_employee)
                 .not_canceled
                 .not_closed
                 .country(country_id_desired)
                 .where("vehicles.updated_at >= ?", Time.zone.now - 90.days)
        elsif state == SERVICE_ORDER_CSV
          Vehicle.for_employee(current_employee)
                 .has_service_order
                 .country(country_id_desired)
        elsif state.blank?
          Vehicle.for_employee(current_employee)
                 .not_canceled
                 .not_closed
                 .country(country_id_desired)
        else
          Vehicle.for_employee(current_employee)
                 .not_canceled
                 .not_closed
                 .country(country_id_desired)
                 .where(state: state)
        end

      vehicles.each do |vehicle|
        high_bid_amount = vehicle.high_bid_amount.present? ? "#{self.format_curency(vehicle.high_bid_amount, vehicle.currency_symbol)}" : ""
        min_bid_reserve = vehicle.min_bid_reserve.present? ? "#{self.format_curency(vehicle.min_bid_reserve, vehicle.currency_symbol)}" : ""
        buy_now = vehicle.buy_now.present? ? "#{self.format_curency(vehicle.buy_now, vehicle.currency_symbol)}" : ""
        vehicles_array <<
          if state == RECENT_VEHICLES
            { lot_number: vehicle.lot_num,
              year: vehicle.year,
              make: vehicle.model.present? ? vehicle.model.make.name : vehicle.custom_make,
              model: vehicle.model.present? ? vehicle.model.name : vehicle.custom_model,
              seller: vehicle.seller.name,
              location: vehicle.facility.present? ? vehicle.facility.name : "" ,
              assignment_date: vehicle.created_at.present? ? vehicle.created_at.strftime("%d.%m.%Y") : "",
              item_type: vehicle.vehicle_type.present? ? vehicle.vehicle_type.description : "",
              status: I18n.t("controllers.application.nav.#{vehicle.state}"),
              hold: "#{vehicle.hold_for_sale.present? ? "S" : ""} #{vehicle.hold_for_pickup.present? ? "P" : ""}",
              follow_up: vehicle.sale_hold_action_date.present? ? vehicle.sale_hold_action_date.strftime("%d.%m.%Y") : "",
              hold_reason: vehicle.hold_for_pickup_reason.present? && vehicle.sale_hold_comment.present? ? vehicle.sale_hold_comment : "#{vehicle.hold_for_pickup_reason}#{vehicle.sale_hold_comment}"
            } 
          elsif state == SERVICE_ORDER_CSV
            { lot_number: vehicle.lot_num,
              year: vehicle.year,
              make: vehicle.model.present? ? vehicle.model.make.name : vehicle.custom_make,
              model: vehicle.model.present? ? vehicle.model.name : vehicle.custom_model,
              seller: vehicle.seller.name,
              row: vehicle.yard_row.present? ? vehicle.yard_row.row_code : "",
              service_order: vehicle.service_orders.count > 1 ? "Multiple" : vehicle.service_orders.first.name,
              updated: vehicle.service_orders.count > 1 ? "Multiple" :  vehicle.service_orders.first.updated_at.strftime("%d.%m.%Y"),
              status: vehicle.service_orders.count > 1 ? "Multiple" : vehicle.service_orders.first.service_order_details.first.status
            }
          elsif state == WAITING_TO_CLEAR_PICKUP
            { lot_number: vehicle.lot_num,
              year: vehicle.year,
              make: vehicle.model.present? ? vehicle.model.make.name : vehicle.custom_make,
              model: vehicle.model.present? ? vehicle.model.name : vehicle.custom_model,
              seller: vehicle.seller.name,
              location: vehicle.facility.present? ? vehicle.facility.name : "" ,
              promised_trip: vehicle.promised_pickup_date.present? ? vehicle.promised_pickup_date.strftime("%d.%m.%Y") : "",
              lot_note: vehicle.notes.user_notes.first.present? ? "#{vehicle.notes.user_notes.first.created_at.localtime.strftime('%d.%m.%Y %H:%M')} - #{vehicle.notes.user_notes.first.content}" : "",
              created_by: vehicle.created_by,
              source: vehicle.lot_creation_from,
              hold: "#{vehicle.hold_for_pickup.present? ? "P" : ""}",
              follow_up: vehicle.hold_for_pickup_date.present? ? vehicle.hold_for_pickup_date.strftime("%d.%m.%Y") : "",
              hold_reason: vehicle.hold_for_pickup_reason.present? && vehicle.sale_hold_comment.present? ? vehicle.sale_hold_comment : "#{vehicle.hold_for_pickup_reason}#{vehicle.sale_hold_comment}"
            } 
          elsif state == WAITING_FOR_DRIVER_DISPATCH
            charges_paid =
              if vehicle.ok_pay_charge?
                vehicle.advance_charge_paid? ? I18n.t("views.shared.yes") : I18n.t("views.shared.no")
              else
                I18n.t("views.shared.na")
              end

            { lot_number: vehicle.lot_num,
              year: vehicle.year,
              make: vehicle.model.present? ? vehicle.model.make.name : vehicle.custom_make,
              model: vehicle.model.present? ? vehicle.model.name : vehicle.custom_model,
              location: vehicle.facility.present? ? vehicle.facility.name : "" ,
              city: (vehicle.facility.present? && vehicle.facility.address.present? && vehicle.facility.address.city.present?) ? vehicle.facility.address.city : "",
              zip: (vehicle.facility.present? && vehicle.facility.address.present? && vehicle.facility.address.zip.present?) ? vehicle.facility.address.zip : "",
              promised_trip: vehicle.promised_pickup_date.present? ? vehicle.promised_pickup_date.strftime("%d.%m.%Y") : "",
              hold: "#{vehicle.hold_for_sale.present? ? "S" : ""} #{vehicle.hold_for_pickup.present? ? "P" : ""}",
              charges_paid: charges_paid,
              ok_pay_charge: vehicle.ok_pay_charge,
              towable: vehicle.towable
            }
          elsif state == WAITING_FOR_TRIP_CONFIRMATION
            { lot_number: vehicle.lot_num,
              year: vehicle.year,
              make: vehicle.model.present? ? vehicle.model.make.name : vehicle.custom_make,
              model: vehicle.model.present? ? vehicle.model.name : vehicle.custom_model,
              seller: vehicle.seller.name,
              location: vehicle.facility.present? ? vehicle.facility.name : "" ,
              city: vehicle.facility.present? ? vehicle.facility.address.city : "",
              promised_trip: vehicle.promised_pickup_date.present? ? vehicle.promised_pickup_date.strftime("%d.%m.%Y") : "",
              tow_provider: vehicle.subhauler.present? ? vehicle.subhauler.provider_name : "",
              towable: vehicle.towable
            }
          elsif state == WAITING_FOR_INVENTORY
            { lot_number: vehicle.lot_num,
              year: vehicle.year,
              make: vehicle.model.present? ? vehicle.model.make.name : vehicle.custom_make,
              model: vehicle.model.present? ? vehicle.model.name : vehicle.custom_model,
              color: vehicle.color.present? ? vehicle.color.code : "",
              seller: vehicle.seller.name,
              promised_trip: vehicle.promised_pickup_date.present? ? vehicle.promised_pickup_date.strftime("%d.%m.%Y") : "",
              assignment_date: vehicle.assignment_date.present? ? vehicle.assignment_date.strftime("%d.%m.%Y") : "",
              tow_provider: vehicle.subhauler.present? ? vehicle.subhauler.provider_name : "",
              row: vehicle.yard_row.present? ? vehicle.yard_row.row_code : (vehicle.offsite? ? "Offsite" : ""),
              source: vehicle.lot_creation_from
            }  
          elsif state == WAITING_FOR_TITLE
            { lot_number: vehicle.lot_num,
              year: vehicle.year,
              make: vehicle.model.present? ? vehicle.model.make.name : vehicle.custom_make,
              model: vehicle.model.present? ? vehicle.model.name : vehicle.custom_model,
              seller: vehicle.seller.name,
              location: vehicle.facility.present? ? vehicle.facility.name : "" ,
              city: (vehicle.facility.present? && vehicle.facility.address.present? && vehicle.facility.address.city.present?) ? vehicle.facility.address.city : "", 
              state: (vehicle.facility.present? &&  vehicle.facility.address.present? && vehicle.facility.address.state.present? && vehicle.facility.address.state.code.present?) ? vehicle.facility.address.state.code : "",
              promised_trip: vehicle.promised_pickup_date.present? ? vehicle.promised_pickup_date.strftime("%d.%m.%Y") : "",
              assignment_date: vehicle.assignment_date.present? ? vehicle.assignment_date.strftime("%d.%m.%Y") : "",
              item_type: vehicle.vehicle_type.present? ? vehicle.vehicle_type.description : "",
              hold: "#{vehicle.hold_for_sale.present? ? "S" : ""} #{vehicle.hold_for_pickup.present? ? "P" : ""}",
              follow_up: vehicle.sale_hold_action_date.present? ? vehicle.sale_hold_action_date : "",
              hold_reason: vehicle.hold_for_pickup_reason.present? && vehicle.sale_hold_comment.present? ? vehicle.sale_hold_comment : "#{vehicle.hold_for_pickup_reason}#{vehicle.sale_hold_comment}"
            }
          elsif state == READY_FOR_AUCTION
            { lot_number: vehicle.lot_num,
              year: vehicle.year,
              make: vehicle.model.present? ? vehicle.model.make.name : vehicle.custom_make,
              model: vehicle.model.present? ? vehicle.model.name : vehicle.custom_model,
              seller: vehicle.seller.name,
              condition: (vehicle.run_condition.present? && vehicle.run_condition.description.present?) ? vehicle.run_condition.description : "",
              auction: vehicle.auction_datum.present? && vehicle.auction_datum.auction_date.present? ? vehicle.auction_datum.auction_date.strftime("%d.%m.%Y") : "",
              item_number: vehicle.item_num.present? ? vehicle.item_num : "",
              row: vehicle.yard_row.present? ? vehicle.yard_row.row_code : "",
              item_type: vehicle.vehicle_type.present? ? vehicle.vehicle_type.description : "",
              reserve: min_bid_reserve
            }
          elsif state == WAITING_FOR_SALE_CONFIRMATION
            member = vehicle.member
            { lot_number: vehicle.lot_num,
              year: vehicle.year,
              make: vehicle.model.present? ? vehicle.model.make.name : vehicle.custom_make,
              model: vehicle.model.present? ? vehicle.model.name : vehicle.custom_model,
              seller: vehicle.seller.name,
              auction: vehicle.auction_datum.present? && vehicle.auction_datum.auction_date.present? ? vehicle.auction_datum.auction_date.strftime("%d.%m.%Y") : "",
              high_bid: high_bid_amount,
              reserve: min_bid_reserve,
              high_bid_percentage: vehicle.min_bid_reserve.to_f > 0 ? (((vehicle.high_bid_amount.to_f) / (vehicle.min_bid_reserve.to_f)) * 100.00) : "",
              buy_it_now: buy_now,
              status: vehicle.sale_confirmation_status.present? ? vehicle.sale_confirmation_status.code : "",
              member: member.present? ? member.full_name : "",
              claim_ref_num: vehicle.claim_ref_num.present? ? vehicle.claim_ref_num : "",
              vehicle_registration_num: vehicle.vehicle_registration_num? ? vehicle.vehicle_registration_num : "",
              vin_serial_num: vehicle.vin_serial_num? ? vehicle.vin_serial_num : ""
            }
          elsif state == WAITING_FOR_BUYER_CHARGE_CONFIRMATION
            member = vehicle.member
            { lot_number: vehicle.lot_num,
              year: vehicle.year,
              make: vehicle.model.present? ? vehicle.model.make.name : vehicle.custom_make,
              model: vehicle.model.present? ? vehicle.model.name : vehicle.custom_model,
              color: vehicle.color.present? ? vehicle.color.code : "",
              seller: vehicle.seller.name,
              auction: vehicle.auction_datum.present? && vehicle.auction_datum.auction_date.present? ? vehicle.auction_datum.auction_date.strftime("%d.%m.%Y") : "",
              item_number: vehicle.item_num.present? ? vehicle.item_num : "",
              member: member.present? ? member.full_name : ""
            }
          elsif state == AWAITING_SALE_DOCS
            member = vehicle.member
            { lot_number: vehicle.lot_num,
              year: vehicle.year,
              make: vehicle.model.present? ? vehicle.model.make.name : vehicle.custom_make,
              model: vehicle.model.present? ? vehicle.model.name : vehicle.custom_model,
              color: vehicle.color.present? ? vehicle.color.code : "",
              seller: vehicle.seller.name,
              auction: vehicle.auction_datum.present? && vehicle.auction_datum.auction_date.present? ? vehicle.auction_datum.auction_date.strftime("%d.%m.%Y") : "",
              item_number: vehicle.item_num.present? ? vehicle.item_num : "",
              member: member.present? ? member.full_name : ""
            }
          elsif state == READY_FOR_SELLER_BILLING
            { lot_number: vehicle.lot_num,
              year: vehicle.year,
              make: vehicle.model.present? ? vehicle.model.make.name : vehicle.custom_make,
              model: vehicle.model.present? ? vehicle.model.name : vehicle.custom_model,
              color: vehicle.color.present? ? vehicle.color.code : "",
              seller: vehicle.seller.name,
              auction: vehicle.auction_datum.present? && vehicle.auction_datum.auction_date.present? ? vehicle.auction_datum.auction_date.strftime("%d.%m.%Y") : "",
              member_paid: vehicle.member_paid.present? ? "Y" : "N",
              item_number: vehicle.item_num.present? ? vehicle.item_num : ""
            }     
          elsif state == WAITING_FOR_SETTLEMENT_CONFIRMATION
            { lot_number: vehicle.lot_num,
              year: vehicle.year,
              make: vehicle.model.present? ? vehicle.model.make.name : vehicle.custom_make,
              model: vehicle.model.present? ? vehicle.model.name : vehicle.custom_model,
              seller: vehicle.seller.name,
              item_number: vehicle.item_num.present? ? vehicle.item_num : "",
              member_paid: vehicle.member_paid.present? ? "Y" : "N",
              seller_billing_complete: vehicle.seller_billing_complete.present? ? "Y" : "N",
              award_date: vehicle.member_award_date.present? ? vehicle.member_award_date.strftime("%d.%m.%Y") : "",
              left_facility: vehicle.left_yard_date.present? ? "Y" : "N",
              claim_ref_num: vehicle.claim_ref_num.present? ? vehicle.claim_ref_num : "",
              vehicle_registration_num: vehicle.vehicle_registration_num? ? vehicle.vehicle_registration_num : "",
              vin_serial_num: vehicle.vin_serial_num? ? vehicle.vin_serial_num : ""
            }
          else
            { lot_number: vehicle.lot_num,
              year: vehicle.year,
              make: vehicle.model.present? ? vehicle.model.make.name : vehicle.custom_make,
              model: vehicle.model.present? ? vehicle.model.name : vehicle.custom_model,
              seller: vehicle.seller.name,
              location: vehicle.facility.present? ? vehicle.facility.name : "",
              assignment_date: vehicle.created_at.present? ? vehicle.created_at.strftime("%d.%m.%Y") : "",
              item_type: vehicle.vehicle_type.present? ? vehicle.vehicle_type.description : "",
              status: I18n.t("controllers.application.nav.#{vehicle.state}"),
              hold: "#{vehicle.hold_for_sale.present? ? "S" : ""} #{vehicle.hold_for_pickup.present? ? "P" : ""}",
              follow_up: vehicle.sale_hold_action_date.present? ? vehicle.sale_hold_action_date.strftime("%d.%m.%Y") : "",
              hold_reason: vehicle.hold_for_pickup_reason.present? && vehicle.sale_hold_comment.present? ? vehicle.sale_hold_comment : "#{vehicle.hold_for_pickup_reason}#{vehicle.sale_hold_comment}",
              claim_ref_num: vehicle.claim_ref_num.present? ? vehicle.claim_ref_num : "",
              vehicle_registration_num: vehicle.vehicle_registration_num? ? vehicle.vehicle_registration_num : "",
              vin_serial_num: vehicle.vin_serial_num? ? vehicle.vin_serial_num : ""
            }
          end
      end
      vehicles_array
    end

    def self.queue_vehicles_report(email, locale, status, employee_id)
      Resque.enqueue(VehiclesJob, email, I18n.locale, status, employee_id)
    end 

    def self.order_by_hold_column state_as_string ,sort_order
      if state_as_string.present? && state_as_string == 'wtg_to_clear_pickup'
        order("vehicles.hold_for_pickup #{sort_order} ,vehicles.id")   
      else
        order("vehicles.hold_for_sale #{sort_order}, vehicles.hold_for_pickup #{sort_order},vehicles.id") 
      end 
    end 

    def address_country
      yard.address_country if yard.present?
    end

    def self.order_by_follow_up_date state_as_string , sort_order
      if state_as_string.present? && state_as_string  == 'wtg_to_clear_pickup'
        order("vehicles.hold_for_pickup_date #{sort_order},vehicles.id")   
      else
        order("vehicles.sale_hold_action_date #{sort_order}, vehicles.hold_for_pickup_date #{sort_order}, vehicles.id")
      end 
    end  
   
    # We need to overwrite number_to_currency to take care of formatting based on currency
    def self.format_curency(value, currency_symbol)
      cents_seperator = (currency_symbol == "€") ? "," : "."
      self.new.number_to_currency(value, unit: currency_symbol, delimiter: "", separator: cents_seperator, precision: 2)
    end

    def self.is_requesting_for_post_auction_stage?(state)
      ["wtg_for_sale_confirmation", "wtg_for_buyer_charge_confirmation", "awaiting_sale_docs", "ready_for_seller_billing", "wtg_for_settlement_confirmation"].include?(state)
    end

    private

      def upcase_vin
        if self.vin_serial_num.present?
          self.vin_serial_num.upcase!
        end
        if self.verify_vehicle_identification_num.present?
          self.verify_vehicle_identification_num.upcase!
        end
      end

end
