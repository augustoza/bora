class ExplorationsController < ApplicationController
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
