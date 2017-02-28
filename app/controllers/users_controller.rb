class UsersController < ApplicationController

  def index    
  end

  def show
    @user = User.find(params[:id])
    @articles = @user.articles
    @friends = @user.friends
    @friendship = Friendship.new()
  end

  def new
    @user = User.new()
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user  = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      redirect_to :back
    end
  end

  def update
    user = User.find(params[:id])

    if user
      user.update(user_params)
      redirect_to user
    else
      redirect_to :back
    end
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :address, :zip_code, :city, :state, :email, :password, :profile_img)
  end
end