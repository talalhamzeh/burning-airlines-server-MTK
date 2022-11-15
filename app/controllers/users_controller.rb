class UsersController < ApplicationController
    before_action :check_for_admin, :only => [:index]
    
      def index
        @users = User.all
      end
    
      def new
        @user=User.new
      end
    
      #create new user 
      def create
        @user = User.new user_params
    
        if @user.save 
          
          session[:user_id] = @user.id # log in the new user
          redirect_to root_path  # IRL: choose where to redirect
        else 
        
          render :new 
        end 
    
      end
    
      private 
      def user_params 
        params.require(:user).permit(:name , :email ,:password ,:passowrd_confirmation)
      end 
    
    
    end