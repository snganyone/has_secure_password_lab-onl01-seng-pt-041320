class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to login_path(@user)
        else
            render :new
        end
    end

    def user_params
        params.require(:user).permit(:name, :password, :passwor_confirmation)
    end
end