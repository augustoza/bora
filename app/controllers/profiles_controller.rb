class ProfilesController < ApplicationController
  include Countries

  def show
    @user = User.find(params[:id])
    @reviews = Review.where(reviewed_user: @user)
    #! Colocar outro nome que nao reviews para nao conflitar com a linha 9
    @country_code = COUNTRIES.key(@user.country.capitalize).to_s
    @ratings = Review.where(reviewed_user: @user).map { |review| review.rating }
    #! Precisamos mudar o nome da variável, pois já temos ratings como column
    #! Usar reviews
    @average_rating = @ratings.sum/@ratings.size unless @ratings.size == 0
    @explorations = Exploration.where(user: @user)
  end

  def edit
    @user = current_user
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to profile_path(@user), notice: "Infos updated"
  end

  def user_params
    params.require(:user).permit(:username, :country, :full_name, :genre, :about, :location, :photo)
  end
end
