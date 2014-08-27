class FutureEventsController < ApplicationController

  before_action :confirm_logged_in, :except => [:login, :attempt_login, :logout]

  def show
    @future_event = FutureEvent.find(params[:id])
  end

  def new
    @future_event = FutureEvent.new
  end

  def create
    @future_event = FutureEvent.new(event_params)

    if @future_event.save
      flash[:notice] = "Future event saved successfully"
      redirect_to(:controller => 'dashboard', :action => 'index')
    else
      render('new')
    end

  end

  def edit
    @future_event = FutureEvent.find(params[:id])
  end

  def update
    @future_event = FutureEvent.find(params[:id])
    
    if @future_event.update_attributes(event_params)
      flash[:notice] = "Future event updated successfully"
      redirect_to(:controller => 'future_events', :action => 'show', :id => @future_event.id)
    else
      render('edit')
    end

  end

  def delete
    @future_event = FutureEvent.find(params[:id])
  end

  def destroy
    future_event = FutureEvent.find(params[:id])
    future_event.destroy
    flash[:notice] = "Future event '#{future_event.year}' deleted"
    redirect_to(:controller => 'dashboard', :action => 'index')
  end

  private
  # Note -
  # - raises an error if title not present
  # - allows listed attribs to be mass-assigned
  def event_params
    params.require(:future_event).permit(:year, :image_url, :content, :date)
  end

end
