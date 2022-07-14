class UsersController < ApplicationController
    skip_before_action :authenticate_user, only: [:create, :update]

    def index
        render json: User.all
    end
    def show
        if current_user
            render json: current_user, status: :ok
        else
            render json: { errors: "No active session"}, status: :unauthorized
        end
    end
    def create
        user = User.create(user_params)
        session[:user_id] = user.id
        render json: user,status: :created
    end
    def update
        userChange = User.find(params[:id])
        userChange.update(user_params)
        render json: userChange, status: :ok
    end

    private
    def user_params
        params.permit(:first_name, :last_name, :address, :phone, :username, :password, :password_confirmation
        )
    end
end
