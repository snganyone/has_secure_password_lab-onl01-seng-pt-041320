class SessionsController < ApplicationController
    def create
        @user = User.find_by(username: paras[:username])
        return head(:forbidden) unless @user.authenticate(params[:password])
        session[:user_id] = @user.id
    end
end