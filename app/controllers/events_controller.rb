class EventsController < ApplicationController

  before_action :confirm_logged_in, :except => [:login, :attempt_login, :logout]

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)

    if @event.save
      flash[:notice] = "Event saved successfully"
      redirect_to(:controller => 'dashboard', :action => 'index')
    else
      render('new')
    end

  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    
    if @event.update_attributes(event_params)
      flash[:notice] = "Event updated successfully"
      redirect_to(:controller => 'events', :action => 'show', :id => @event.id)
    else
      render('edit')
    end

  end

  def delete
    @event = Event.find(params[:id])
  end

  def destroy
    event = Event.find(params[:id])
    event.destroy
    flash[:notice] = "Event '#{event.year}' deleted"
    redirect_to(:controller => 'dashboard', :action => 'index')
  end

  private
  # Note -
  # - raises an error if title not present
  # - allows listed attribs to be mass-assigned
  def event_params
    params.require(:event).permit(:year)
  end

end
