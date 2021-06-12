class UsersController < ApplicationController
  before_action :authenticate_user!, except: %i[show]
  before_action :set_current_user
  
  def show
    @user = User.find(params[:id])
  end
  
  def index
  	@users = User.all
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: I18n.t('controllers.users.updated')
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to root_path, notice: I18n.t('controllers.users.destroyed')
  end

  def confirm_gender
  end

  private

  def set_current_user
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
