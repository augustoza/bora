class ProfilesController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    @ratings = Review.where(reviewed_user: @user).map { |review| review.rating }
    @average_rating = @ratings.sum/@ratings.size unless @ratings.size == 0
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
