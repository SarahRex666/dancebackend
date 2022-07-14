class DanceClassesController < ApplicationController
    skip_before_action :authenticate_user
    before_action :set_dance_class, only: [:show, :update, :destroy]
    
    def index
        dance_classes = DanceClass.all
        render json: dance_classes
    end

    def show
        render json: @dance_class, serializer: DanceClassSerializer, status: :ok
    end

    def create
        dance_class = DanceClass.create(dance_class_params)
        render json: dance_class, status: :created
    end

    def update
        @dance_class.update(dance_class_params)
        render json: @dance_class, status: :ok
    end

    def destroy
        @dance_class.destroy
    end

    private 

    def set_dance_class
        @dance_class = DanceClass.find(params[:id])
    end

    def authorize_user
        return if current_user.admin?
        render json: { errors: "No permission"}, status: :forbidden
    end

    def dance_class_params
        params.permit(:name, :style, :description, :user_id, :teacher_id)
    end
end