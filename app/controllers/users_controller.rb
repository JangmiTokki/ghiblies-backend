class UsersController < ApplicationController
    def create
        @user = User.new(user_params)

        if @user.save
            render status: :ok
        else
            render json: { error: "User does not exist"}, status: :bad_request 
        end
    end

    private 
    
    def user_params
        params.require(:username, :password)
    end
end
