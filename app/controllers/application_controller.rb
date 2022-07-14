class ApplicationController < ActionController::Base
    include ActionController::Cookies
    before_action :authenticate_user
    before_action :set_csrf_cookie
    skip_before_action :verify_authenticity_token

    def authorized
        return render json: { error: "Not Authorized"},status: :unauthorized unless session.include? :user_id
    end

    private 

    def set_csrf_cookie
        cookies["CSRF-TOKEN"] = form_authenticity_token
      end

    def current_user
        @current_user ||= User.find_by_id(session[:user_id])
    end

    def authenticate_user
        return if current_user
        render json: { errors: "Login please."}, status: :unauthorized
    end
end
