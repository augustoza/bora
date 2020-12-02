class ReviewsController < ApplicationController
  before_action :set_user, only: [:new, :create]
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @review.reviewed_user = @user
    if @review.save
      redirect_to profile_path(@user)
    else
      flash[:alert] = "Algo de errado não está certo."
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def set_user
    @user = User.find(params[:profile_id])
  end
end
