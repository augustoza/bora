class ProfilesController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = current_user
  end

  def update
    @user.update(user_params)
    redirect_to user_path(@user), notice: "Infos updated"
  end

  def user_params
    params.require(:user).permit(:username, :country, :full_name, :genre, :about, :location)
  end
end
