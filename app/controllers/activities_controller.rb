class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show, :edit, :update]

  def index
    @activities = Activity.all

    @markers = @activities.geocoded.map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { activity: activity })
      }
    end
    
    if params[:category]
      @activities = Activity.where(category: params[:category])
    else
      @activities = Activity.all
    end
  end

  def show
    @exploration = Exploration.new
    @exploration_act = exploration_user_finder
    @activity_map = Activity.where(id: @activity.id)
    @markers = @activity_map.geocoded.map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { activity: activity })
      }
    end
    # @markers = [{lat: @activity.latitude, lng: @activity.longitude}]
    @chatroom = Chatroom.find_by(activity_id: @activity)
  end

  def exploration_user_finder
    Exploration.where(activity: @activity).map do |exploration|
      exploration.user
    end
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
    @activity.user = current_user
    @exploration = Exploration.new
    @chatroom = Chatroom.new
    @chatroom.activity = @activity

    if @activity.save
      redirect_to activity_path(@activity), notice: "Activity created"
      @chatroom.activity_id = @activity.id
      @chatroom.save
      @exploration.activity_id = @activity.id
      @exploration.user = current_user
      @exploration.save
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
    params.require(:activity).permit(:title, :location, :description, :initial_date, :final_date, :category, :photo)
  end

  def set_activity
    @activity = Activity.find(params[:id])
  end
end