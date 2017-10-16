class BuildingsController < ApplicationController
  before_action :set_building, only: [:show, :edit, :update, :destroy, :open_building_modal]
  protect_from_forgery except: [:index, :open_building_modal, :show]


  # GET /buildings
  # GET /buildings.json
  def index
    if current_user.role == [99, 100]
      @buildings = Building.all
    else
      @buildings = Building.where(user_id: current_user.id)
    end
  end

  # GET /buildings/1
  # GET /buildings/1.json
  def show
    render layout: !request.xhr?
  end

  def open_building_modal
    respond_to do |format|
      format.js
    end
  end

  # GET /buildings/new
  def new
    @building = Building.new
  end

  # GET /buildings/1/edit
  def edit
  end

  # POST /buildings
  # POST /buildings.json
  def create
    @building = Building.new(building_params.merge({user_id: current_user.id}))

    respond_to do |format|
      if @building.save
        format.html { redirect_to @building, notice: 'Building was successfully created.' }
        format.json { render :show, status: :created, location: @building }
      else
        format.html { render :new }
        format.json { render json: @building.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /buildings/1
  # PATCH/PUT /buildings/1.json
  def update
    respond_to do |format|
      if @building.update(building_params)
        format.html { redirect_to @building, notice: 'Building was successfully updated.' }
        format.json { render :show, status: :ok, location: @building }
      else
        format.html { render :edit }
        format.json { render json: @building.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buildings/1
  # DELETE /buildings/1.json
  def destroy
    @building.destroy
    respond_to do |format|
      format.html { redirect_to buildings_url, notice: 'Building was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_building
      @building = Building.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def building_params
      params.require(:building).permit(:user_id, :county, :area, :city, :folio, :street,
                                       :compass_point, :street_name, :state, :zip,:zip4,
                                       :unit, :legal, :zoning, :geographical, :municip_code,
                                       :township, :section, :subdivision, :parcel, :map_coordinates,
                                       :elementary_school, :middle_school, :senior_high_school,
                                       :subdivision_name, :development_name, :model_name_in_mls,
                                       :year_built, :year_built_description, :stories, :convert_beds,
                                       :garage_spaces, :garage_description, :carport_spaces,
                                       :carport_description, :waterfront, :waterfront_frontage,
                                       :approx_lot_size, :lotsf, :pool, :pool_dimensions, :spa,
                                       :lot_description, :waterfront_desc, :parking_restrictions,
                                       :pool_description, :water_access, :construction, :design,
                                       :roof_description, :remarks, :directions, :broker_remarks,
                                       :internet_remarks, :pets_allowed, :cable_available,
                                       :pet_restrictions, :min_days_to_lease, :leases_per_year,
                                       :application_fee, :move_in_cost, :renewable, :additional_moving_cost,
                                       :sewer_description, :water, :housing_older_persons_act, :rs_jan,
                                       :rs_feb, :rs_march, :rs_april, :rs_may,:rs_june, :rs_july,:rs_aug,
                                       :rs_sept, :rs_oct, :rs_nov, :rs_dec, :list_agent_mls_id,
                                       :list_agent_alt_phone, :co_list_agent_mls_id, :internet,
                                       :avm, :blogging, :address_on_internet, :owners_name, :owners_phone,
                                       :variable_dual_rate, :owner_agent, :occupancy_information,
                                       :lender_approval, :compensation_trans_broker, :compensation_buyers_agent,
                                       :compensation_non_rep, :renewal_commission, :agent_url, :virtual_tour,
                                       :photo_instructions, :status, :list_type,:additional_parking_info[ ],
                                       :additional_rooms[ ], :amenities[ ],  :approval[ ], :construction[ ], 
                                       :cooling_description[ ], :design[ ], :dining_area[ ], :equipment[ ],  
                                       :exterior_feature[ ], :floor[ ], :interior_feature[ ], :lease_term[ ], 
                                       :misc[ ], :parking_restriction[ ], :pet_restriction[ ], :pool_description[ ], 
                                       :rental_deposit  [ ], :rent_payment_inc[ ], :rent_restriction[ ], 
                                       :roof_description[ ], :security[ ], :show_instruction[ ],
                                       :water_access[ ], :waterfront[ ], :window_treatment[ ])
    end
end
