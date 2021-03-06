class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users =User.all
  end

  def edit
  end

  def show
    @user_annonces = @user.annonces
    @admin_annonces = Annonce.all
  end

  def update
  end

  def destroy
    @user.destroy
    redirect_to root_path
  end

  private
  def set_user
    @user = User.find(params[:id])
  end

  def users_params
    params.require(:user).permit(:email, :password)
  end
end
