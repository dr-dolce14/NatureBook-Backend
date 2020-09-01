class Api::V1::SightingsController < ApplicationController
    skip_before_action :authorized
    before_action :set_params, only: [:show, :update, :destroy]

    def index
    @sightings = Sighting.all 
    render json: @sightings, include: [:organisms, :users, :comments] 
    end

    def create
    @sighting = Sighting.create(sighting_params)
    render json: @sighting, status: 201
    end

    def update
    @sighting.update(sighting_params)
    render json: @sighting, status: 200
  
    end

    def show
    render json: @sighting, status: 200
    end

    def destroy
    sightingId = @sighting.id
    @sighting.destroy
    render json: {message: "deleted", sightingId:sightingId}
    end


    private

    def sighting_params
    params.require(:sighting).permit(:user_id, :organism_id, :location, :lat, :lng, :habitat, :weather, :date)
    end

    def set_params
    @sighting = Sighting.find(params[:id])
    end


end
