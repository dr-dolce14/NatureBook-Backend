class Api::V1::OrganismsController < ApplicationController
    skip_before_action :authorized
    before_action :set_params, only: [:show, :update]

    def index
    @organism = Organism.all 
    render json: @organism
    end

    def create
    @organism = Organism.create(organism_params)
    render json: @organism, status: 201
    end

    def update
    @organism.update(organism_params)
    render json: @organism, status: 200
    end

    def show
    render json: @organism, status: 200
    end

    private

    def organism_params
    params.require(:organism).permit(:category, :common_name, :scientific_name, :image)
    end

    def set_params
    @organism = Organism.find(params[:id])
    end


end
