class UsersController < ApplicationController
  
  def index
    @users = User.all
    render :json => @users
  end 

  def shows
    @user = User.find(params[:id])
    render :json => @user
  end 

  def create
    @user = User.find_or_create_by(user_params)

    if @user && @user.save
      render :json => @user
    else
      render :json => User.find_by(email: user_params[:email])
    end
    # @user.save
    # @user = User.find_by(email: user_params[:email])
    # render :json => @user
  end 

  def update
    @user = user.find(params[:id])
    @user.update(user_params)
    puts @user
    render :json => @user
  end 

  # def destroy
  #   @user = User.find(params[:id])
  #   @user.destroy
  #   render :json {status: "User Deleted"}
  # end 


  private
  
  def user_params
    params.require(:user).permit(:name, :email, :password, :location, :img)
  end 

end
