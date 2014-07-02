class VideosController < ApplicationController

  before_action :confirm_logged_in, :except => [:login, :attempt_login, :logout]

  def show
    @videos = Video.find(params[:id])
  end

  def new
    @videos = Video.new
  end

  def create
    @videos = Video.new(videos_params)

    if @videos.save
      flash[:notice] = "Video saved successfully"
      redirect_to(:controller => 'dashboard', :action => 'index')
    else
      render('new')
    end

  end

  def edit
    @videos = Video.find(params[:id])
  end

  def update
    @videos = Video.find(params[:id])
    
    if @videos.update_attributes(videos_params)
      flash[:notice] = "Video updated successfully"
      redirect_to(:controller => 'videos', :action => 'show', :id => @videos.id)
    else
      render('edit')
    end

  end

  def delete
    @videos = Video.find(params[:id])
  end

  def destroy
    videos = Video.find(params[:id])
    videos.destroy
    flash[:notice] = "Video '#{videos.title}' deleted"
    redirect_to(:controller => 'dashboard', :action => 'index')
  end

  private
  # Note -
  # - raises an error if title not present
  # - allows listed attribs to be mass-assigned
  def videos_params
    params.require(:video).permit(:title, :author, :year, :duration, :video_url, :image_url, :is_winner, :is_entrant, :is_other, :id_for_app)
  end

end
