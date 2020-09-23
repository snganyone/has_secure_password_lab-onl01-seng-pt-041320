class UsersController < ApplicationController
    def new
    end

    def create
        User.create(user_params)
    end

    def user_params
        params.require(:user).permit(:name, :password, :passwor_confirmation)
    end
end