class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show, :edit, :update]
  include Countries
  include Translator

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
    elsif params[:query].present?
      @activities = Activity.where("location ILIKE ?", "%#{params[:query]}%")
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
    @country_code = find_country_code
    @hour = [hour_formatter(@activity.initial_date), hour_formatter(@activity.final_date)]
    @date = [date_formatter(@activity.initial_date), date_formatter(@activity.final_date)]

  end

  def hour_formatter(date)
    date.strftime('%H:%M')
  end

  def date_formatter(date)
    weekday = week_day(date.strftime('%A'))
    month = mon(date.strftime('%B'))
    "#{weekday} - #{date.strftime('%d')}/#{month}/#{date.strftime('%Y')}"
  end

  def exploration_user_finder
    Exploration.where(activity: @activity).map do |exploration|
      exploration.user
    end
  end

  def find_country_code
    COUNTRIES.key(@activity.user.country.capitalize).to_s
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
    @activity.user = current_user
    @exploration = Exploration.new
    @chatroom = Chatroom.new

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