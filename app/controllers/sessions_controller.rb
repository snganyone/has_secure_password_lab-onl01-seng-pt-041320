class SessionsController < ApplicationController
    def new
        @user = User.find_by(id: session[:user_id])
    end
    def create
        #binding.pry
        @user = User.find_by(name: params[:user][:name])
        if @user #&& @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to root_path
        else
            render :'users/new'
        end
    end
end