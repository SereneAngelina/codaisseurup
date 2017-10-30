class Api::EventsController < ApplicationController

  skip_before_action :verify_authenticity_token

  def index
    # render status: 200, json: {
    #   events: Event.all
    # }.to_json

    events =  Event.all
    render status: 200, json: events
  end

  def show
    event = Event.find(params[:id])
    render status: 200, json: events
    # render status: 200, json: {
    #   event: event
    # }.to_json
  end


  def create
    event1 = Event.new(event_params)

    if event1.save
      render status: 201, json: event1
      # render status: 201, json: {
      #   message: "event successfully created",
      #   event: event1
      # }.to_json
    else
      render status: 422, json: {
        errors: event.errors
      }.to_json
    end
  end

  def update
    event = Event.find(params[:id])
    if event.update(event_params)
      render status: 200, json: event
      # render status: 200, json: {
      #   message: "Event successfully updated",
      #   event: event
      # }.to_json
    else
       render status: 422, json: {
        message: "The event could not be updated",
        errors: event.errors
      }.to_json
    end
  end

  def destroy
    event1 = Event.find(params[:id])
    event1.destroy
    render status: 200, json: {
      message: "Event successfully deleted"
    }.to_json
  end

  private

  def event_params
    params.require(:event).permit(:name, :description, :location, :price, :capacity, :includes_food, :includes_drinks,
        :starts_at, :ends_at, :active)
  end
end
