class SessionsController < ApplicationController
    def create
        #binding.pry
        @user = User.find_by(name: params[:user][:name])
        session[:user_id] = @user.id
        return head(:forbidden) unless @user.authenticate(params[:password])
    end
end