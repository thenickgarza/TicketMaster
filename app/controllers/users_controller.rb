class UsersController < ApplicationController
    before_action :authenticate, except: [:new, :create]
    before_action :set_user

    
    def index
     @user = current_user.tickets.all
    end

    def new
      @user = User.new
    end
  
    def create 
      @user = User.new user_params
      if @user.save
        login(@user)
        redirect_to root_path, notice: "You have successfully signed up."
      else
        render :new, status: :unprocessable_entity
      end
     end
  
     private

     def set_user
      @user = User.find_by(params[:id])
     end  
  
     def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :phone_number)
     end
  
  end