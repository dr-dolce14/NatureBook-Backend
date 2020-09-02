class Api::V1::CommentsController < ApplicationController
    skip_before_action :authorized
    before_action :set_params, only: [:show, :update, :destroy]

    def index
    @comments = Comment.all 
    render json: @comments, include: [:sightings, :users] 
    end

    def create
    @comment = Comment.create(comment_params)
    render json: @comment, status: 201
    end

    def update
    @comment.update(comment_params)
    render json: @comment, status: 200
  
    end

    def show
    render json: @comment, include: :user, status: 200
    end

    def destroy
    commentId = @comment.id
    @comment.destroy
    render json: {message: "deleted", commentId:commentId}
    end


    private

    def comment_params
    params.require(:comment).permit(:user_id, :sighting_id, :content)
    end

    def set_params
    @comment = Comment.find(params[:id])
    end

end
