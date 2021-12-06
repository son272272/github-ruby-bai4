class UsersController < ApplicationController

    def index
      @user = User.all.inspect
    end
  
    def show
      @user = User.find(params[:id]).inspect   
    end
    
    def new
      @user = User.new
    end
  
    def create
      @user = User.new(user_params)
      if @user.save
        flash[:notice] = "Signed up successfully!"
        redirect_to user_path(@user)
      else
        render :new
      end
    end
  
    private
      def user_params
        params.require(:user).permit(:username, :email, :password, :birthday, :phone)
      end
      
  end