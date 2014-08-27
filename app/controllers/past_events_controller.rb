class PastEventsController < ApplicationController

  before_action :confirm_logged_in, :except => [:login, :attempt_login, :logout]

  def show
    @past_event = PastEvent.find(params[:id])
  end

  def new
    @past_event = PastEvent.new
  end

  def create
    @past_event = PastEvent.new(event_params)

    if @past_event.save
      flash[:notice] = "Event saved successfully"
      redirect_to(:controller => 'dashboard', :action => 'index')
    else
      render('new')
    end

  end

  def edit
    @past_event = PastEvent.find(params[:id])
  end

  def update
    @past_event = PastEvent.find(params[:id])
    
    if @past_event.update_attributes(event_params)
      flash[:notice] = "Event updated successfully"
      redirect_to(:controller => 'past_events', :action => 'show', :id => @past_event.id)
    else
      render('edit')
    end

  end

  def delete
    @past_event = PastEvent.find(params[:id])
  end

  def destroy
    past_event = PastEvent.find(params[:id])
    past_event.destroy
    flash[:notice] = "Event '#{past_event.year}' deleted"
    redirect_to(:controller => 'dashboard', :action => 'index')
  end

  private
  # Note -
  # - raises an error if title not present
  # - allows listed attribs to be mass-assigned
  def event_params
    params.require(:past_event).permit(:year, :image_url, :content, :date)
  end

end
