class CreateBuildings < ActiveRecord::Migration[5.1]
  def change
    create_table :buildings do |t|
      t.belongs_to :user, foreign_key: true
      t.string   "county"
	    t.string   "area"
	    t.string   "city"
	    t.string   "folio"
	    t.string   "street"
	    t.string   "compass_point"
	    t.string   "street_name"
	    t.string   "state"
	    t.string   "zip"
	    t.string   "zip4"
	    t.string   "unit"
	    t.string   "legal"
	    t.string   "zoning"
	    t.string   "geographical"
	    t.string   "municip_code"
	    t.string   "township"
	    t.string   "section"
	    t.string   "subdivision"
	    t.string   "parcel"
	    t.string   "map_coordinates"
	    t.string   "elementary_school"
	    t.string   "middle_school"
	    t.string   "senior_high_school"
	    t.string   "subdivision_name"
	    t.string   "development_name"
	    t.string   "model_name_in_mls"
	    t.integer  "user_id"
	    t.datetime "created_at",                null: false
	    t.datetime "updated_at",                null: false
	    t.string   "year_built"
	    t.string   "year_built_description"
	    t.string   "stories"
	    t.string   "convert_beds"
	    t.string   "garage_spaces"
	    t.string   "garage_description"
	    t.string   "carport_spaces"
	    t.string   "carport_description"
	    t.boolean  "waterfront"
	    t.string   "waterfront_frontage"
	    t.string   "approx_lot_size"
	    t.string   "lotsf"
	    t.boolean  "pool"
	    t.string   "pool_dimensions"
	    t.boolean  "spa"
	    t.string   "lot_description"
	    t.string   "waterfront_desc"
	    t.string   "parking_restrictions"
	    t.string   "pool_description"
	    t.string   "water_access"
	    t.string   "construction"
	    t.string   "design"
	    t.string   "roof_description"
	    t.text     "remarks"
	    t.text     "directions"
	    t.text     "broker_remarks"
	    t.text     "internet_remarks"
	    t.boolean  "pets_allowed"
	    t.boolean  "cable_available"
	    t.string   "pet_restrictions"
	    t.string   "furn_annual_rent"
	    t.string   "furn_seasonal_rent"
	    t.string   "furn_off_rent"
	    t.string   "unfurn_annual_rent"
	    t.string   "unfurn_seasonal_rent"
	    t.string   "unfurn_off_rent"
	    t.string   "min_days_to_lease"
	    t.string   "leases_per_year"
	    t.string   "application_fee"
	    t.string   "move_in_cost"
	    t.boolean  "renewable"
	    t.boolean  "additional_moving_cost"
	    t.string   "sewer_description"
	    t.string   "water"
	    t.string   "housing_older_persons_act"
	    t.string   "rs_jan"
	    t.string   "rs_feb"
	    t.string   "rs_march"
	    t.string   "rs_april"
	    t.string   "rs_may"
	    t.string   "rs_june"
	    t.string   "rs_july"
	    t.string   "rs_aug"
	    t.string   "rs_sept"
	    t.string   "rs_oct"
	    t.string   "rs_nov"
	    t.string   "rs_dec"
	    t.string   "list_agent_mls_id"
	    t.string   "list_agent_alt_phone"
	    t.string   "co_list_agent_mls_id"
	    t.boolean  "internet"
	    t.boolean  "avm"
	    t.boolean  "blogging"
	    t.boolean  "address_on_internet"
	    t.string   "owners_name"
	    t.string   "owners_phone"
	    t.boolean  "variable_dual_rate"
	    t.boolean  "owner_agent"
	    t.string   "occupancy_information"
	    t.boolean  "lender_approval"
	    t.string   "compensation_trans_broker"
	    t.string   "compensation_buyers_agent"
	    t.string   "compensation_non_rep"
	    t.string   "renewal_commission"
	    t.string   "agent_url"
	    t.string   "virtual_tour"
	    t.string   "photo_instructions"
	    t.string   "status"
	    t.string   "list_type"
      t.timestamps
    end
  end
end
