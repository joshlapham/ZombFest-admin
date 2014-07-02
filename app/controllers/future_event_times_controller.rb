class FutureEventTimesController < ApplicationController

  before_action :confirm_logged_in, :except => [:login, :attempt_login, :logout]

  def show
    @future_event_time = FutureEventTime.find(params[:id])
  end

  def new
    @future_event_time = FutureEventTime.new
  end

  def create
    # TODO - change this so current FutureEvent creates this
    @future_event_time = FutureEventTime.new(event_params)
    #@future_event_time = 

    if @future_event_time.save
      flash[:notice] = "Future event time saved successfully"
      redirect_to(:controller => 'dashboard', :action => 'index')
    else
      render('new')
    end

  end

  def edit
    @future_event_time = FutureEventTime.find(params[:id])
  end

  def update
    @future_event_time = FutureEventTime.find(params[:id])
    
    if @future_event_time.update_attributes(event_params)
      flash[:notice] = "Future event time updated successfully"
      redirect_to(:controller => 'future_event_times', :action => 'show', :id => @future_event_time.id)
    else
      render('edit')
    end

  end

  def delete
    @future_event_time = FutureEventTime.find(params[:id])
  end

  def destroy
    future_event_time = FutureEventTime.find(params[:id])
    future_event_time.destroy
    flash[:notice] = "Future event time '#{future_event_time.year}' deleted"
    redirect_to(:controller => 'dashboard', :action => 'index')
  end

  private
  # Note -
  # - raises an error if title not present
  # - allows listed attribs to be mass-assigned
  def event_params
    params.require(:future_event_time).permit(:location_name, :start_time)
  end

end
