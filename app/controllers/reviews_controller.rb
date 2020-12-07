class ReviewsController < ApplicationController
  before_action :set_user, only: [:index, :new, :create]
  
  def index
    @reviews = Review.where(reviewed_user: @user)
  end
  
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
      flash[:alert] = @review.errors.first[1]
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
