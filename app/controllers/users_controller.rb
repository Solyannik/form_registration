class UsersController < ApplicationController
  before_action :authenticate_user!, except: %i[show index]
  load_and_authorize_resource param_method: :my_sanitizer
  before_action :set_current_user

  def show
    @user = User.find(params[:id])
    authorize! :show, @user
    @gender = @user.dadata_gender(@user.name)
  end
  
  def index
  	authorize! :read, @user
  	@users = User.all
    @gender = @user.dadata_gender(@user.name)
  end

  def confirm_gender
  	@user.update(gender: params[:gender])
  end

  private
  
  def my_sanitizer
    params.require(:user).permit(:name, :email)
  end

  def set_current_user
    @user = current_user
  end
end
