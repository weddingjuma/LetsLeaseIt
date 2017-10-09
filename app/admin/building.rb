ActiveAdmin.register Building do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
  permit_params :user_id,:county,:area,:city,:folio,:street,:compass_point,:street_name,:state,:zip,:zip4,:unit,:legal,:zoning,:geographical,:municip_code,:township,:section,:subdivision,:parcel,:map_coordinates,:elementary_school,:middle_school,:senior_high_school,:subdivision_name,:development_name,:model_name_in_mls,:year_built,:year_built_description,:stories,:convert_beds,:garage_spaces,:garage_description,:carport_spaces,:carport_description,:waterfront,:waterfront_frontage,:approx_lot_size,:lotsf,:pool,:pool_dimensions,:spa,:lot_description,:waterfront_desc,:parking_restrictions,:pool_description,:water_access,:construction,:design,:roof_description,:remarks,:directions,:broker_remarks,:internet_remarks,:pets_allowed,:cable_available,:pet_restrictions,:furn_annual_rent,:furn_seasonal_rent,:furn_off_rent,:unfurn_annual_rent,:unfurn_seasonal_rent,:unfurn_off_rent,:min_days_to_lease,:leases_per_year,:application_fee,:move_in_cost,:renewable,:additional_moving_cost,:sewer_description,:water,:housing_older_persons_act,:rs_jan,:rs_feb,:rs_march,:rs_april,:rs_may,:rs_june,:rs_july,:rs_aug,:rs_sept,:rs_oct,:rs_nov,:rs_dec,:list_agent_mls_id,:list_agent_alt_phone,:co_list_agent_mls_id,:internet,:avm,:blogging,:address_on_internet,:owners_name,:owners_phone,:variable_dual_rate,:owner_agent,:occupancy_information,:lender_approval,:compensation_trans_broker,:compensation_buyers_agent,:compensation_non_rep,:renewal_commission,:agent_url,:virtual_tour,:photo_instructions,:status,:list_type, additional_room_ids: [], amenity_ids: [], approval_ids: [], construction_ids: [], cooling_description_ids: [], design_ids: [], dining_area_ids: [], equipment_ids: [], exterior_feature_ids: [], floor_ids: [], heat_ids: [],  interior_feature_ids: [], leasing_term_ids: [], lot_description_ids: [], misc_ids: [], parking_restriction_ids: [], pet_restriction_ids: [], pool_description_ids: [], rental_dep_incl_ids: [], rental_pay_inc_ids: [], rental_restriction_ids: [], security_ids: [], showing_instruction_ids: [], water_access_ids: [], waterfront_desc_ids: [], window_treatment_ids: []
end
