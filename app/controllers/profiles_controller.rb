class ProfilesController < ApplicationController
  include Countries

  def show
    @user = User.find(params[:id])
    @country_code = COUNTRIES.key(@user.country.capitalize).to_s
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
