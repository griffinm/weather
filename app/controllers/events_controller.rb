class EventsController < ApplicationController

  # GET /events
  def index
    render json: Event.order(event_at: :desc).all
  end

  # GET /events/newest
  # displays the most recent event
  def newest
    event = Event.order(event_at: :desc).first

    render json: event
  end

end
