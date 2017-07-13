class EventsController < ApplicationController
  def index
    @events = Event.order(:date)
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create

    @event = Event.new
    @event.hometeam = params[:event][:hometeam]
    @event.visitor = params[:event][:visitor]
    @event.date = params[:event][:date]


    if @event.save

      flash[:notice] = "Event was saved successfully."
      redirect_to @event
    else

      flash.now[:alert] = "There was an error saving the event. Please try again."
      render :new
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.hometeam = params[:event][:hometeam]
    @event.visitor = params[:event][:visitor]
    @event.date = params[:event][:date]


    if @event.save
      flash[:notice] = "Event was updated successfully."
      redirect_to @event
    else
      flash.now[:alert] = "There was an error saving the event. Please try again."
      render :edit
    end
  end
end
