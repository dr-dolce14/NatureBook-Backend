class Api::V1::UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def index
    @users = User.all
    render json: @users, include: :sightings 
    end

    def show
        @user = User.find(params[:id])
        render json: @user, include: :sightings
    end

    def profile
        render json: {user: UserSerializer.new(current_user) }, include: :sightings, status: :accepted
    end

    def create
    @user = User.create(user_params)
    if @user.valid?
        @token = encode_token({user_id: @user.id})
        render json: { user: UserSerializer.new(@user), jwt: @token },
        status: :created
    else
        render json: { error: 'failed to create user' },
        status: :not_acceptable
    end
    end

    private 
    
    def user_params
    params.require(:user).permit(:firstname, :lastname, :username, :password, :pic)
    end

end
