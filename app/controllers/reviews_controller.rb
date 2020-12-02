Class ReviewsController < ApplicationController
def create
    @user = User.find(params[:user_id]) 
    @review = Review.new(review_params)
    @review.user = @user
    if @review.save
        redirect_to user_path(@user), notice: 'Review was created'
      else
        render "user/show"
      end
    end

    private

    def review_params
      params.require(:review).permit(:rating)
    end
end
