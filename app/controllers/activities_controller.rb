class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show, :edit, :update]
  
  def index
    @activities = Activity.all
  end

  def show; end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
    @activity.user = current_user

    if @activity.save
      redirect_to activity_path(@activity), notice: "Activity created"
    else
      render :new
    end
  end

  def edit; end

  def update
    @activity.update(activity_params)
    redirect_to activity_path(@activity), notice: "Activity updated"
  end

private

def activity_params
  params.require(:activity).permit(:title, :location, :description, :initial_date, :final_date)
end

def set_activity
  @activity = Activity.find(params[:id])
end

end
