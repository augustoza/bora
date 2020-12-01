class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all
  end

  def show
    @activity = Activity.find(params[:id])
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
    @activity.user = current_user

    if @product
  end

  def edit
  end

  def update
  end

private

def activity_params
  params.require(:activity).permit(:title, :location, :description, :initial_date, :final_date)
end

end
