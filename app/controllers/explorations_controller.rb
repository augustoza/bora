class ExplorationsController < ApplicationController
  
  def index
    @user = User.find(params[:id])
    @explorations = Exploration.where(user: @user)
  end
  
  def new
    @exploration = Exploration.new
  end

  def create
    @exploration = Exploration.new
    @exploration.user = current_user
    @exploration.activity = Activity.find(params[:activity_id])
    @exploration.save
    redirect_to activity_path(@exploration.activity)
  end
end
