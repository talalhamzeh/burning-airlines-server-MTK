class SessionController < ApplicationController
    def new
    end
    def create 
      #find user by email
      user= User.find_by :email => params[:email]
    
        if user.present? && user.authenticate(params[:password])
          #remember this user while theyre here 
          session[:user_id]=user.id
          redirect_to root_path
        else 
          #tell them it didnt work 
          flash[:error] = "Invalid username or password "
          # If the user cannot be authenticated, redirect them to the login_path.
          redirect_to login_path  
        end 
    
      end
    # This is the action to which the user sign-out delete request is posted.
      def destroy
        session[:user_id] = nil
        redirect_to login_path
      end
    
  
  end