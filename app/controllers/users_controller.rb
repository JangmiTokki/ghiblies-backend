class UsersController < ApplicationController
    def create
        @user = User.new(user_params)

        if @user.save
            render status: :created
        else
            render json: { error: "User could not be created"}, status: :bad_request 
        end
    end

    private 
    
    def user_params
        params.permit(:username, :password)
    end
end
