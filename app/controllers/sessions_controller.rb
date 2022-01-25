class SessionsController < ApplicationController

    def create
        @user = User.find_by(username: params[:username])

        #authenticate user's creds
        if !!@user && @user.authenticate(params[:password])
            #set session's cookies and redirect 
            session[:user_id] = @user.user_id
            redirect_to user_path
        else 
            message = 'Incorret password or login. Please try again'
            redirect_to login_path, notice: message
        end
    end
    
end

        
         