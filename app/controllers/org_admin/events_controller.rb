class OrgAdmin::EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def edit
    @event = Event.find_by_id params[:id]
  end
end
