class SocialMediaLinksController < ApplicationController

  before_action :confirm_logged_in, :except => [:login, :attempt_login, :logout]

  def show
    @social_link = SocialMediaLink.find(params[:id])
  end

  def new
    @social_link = SocialMediaLink.new
  end

  def create
    @social_link = SocialMediaLink.new(social_link_params)

    if @social_link.save
      flash[:notice] = "Social link saved successfully"
      redirect_to(:controller => 'dashboard', :action => 'index')
    else
      render('new')
    end

  end

  def edit
    @social_link = SocialMediaLink.find(params[:id])
  end

  def update
    @social_link = SocialMediaLink.find(params[:id])
    
    if @social_link.update_attributes(social_link_params)
      flash[:notice] = "Social link updated successfully"
      redirect_to(:controller => 'social_media_links', :action => 'show', :id => @social_link.id)
    else
      render('edit')
    end

  end

  def delete
    @social_link = SocialMediaLink.find(params[:id])
  end

  def destroy
    social_link = SocialMediaLink.find(params[:id])
    social_link.destroy
    flash[:notice] = "Social link '#{social_link.url}' deleted"
    redirect_to(:controller => 'dashboard', :action => 'index')
  end

  private
  # Note -
  # - raises an error if title not present
  # - allows listed attribs to be mass-assigned
  def social_link_params
    params.require(:social_media_link).permit(:title, :url, :image_url)
  end

end
