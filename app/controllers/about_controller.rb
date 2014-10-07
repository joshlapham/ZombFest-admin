class AboutController < ApplicationController

  before_action :confirm_logged_in, :except => [:login, :attempt_login, :logout]

  def show
    @about_content = About.find(params[:id])
  end

  def new
    @about_content = About.new
  end

  def create
    @about_content = About.new(about_content_params)

    if @about_content.save
      flash[:notice] = "About content saved successfully"
      redirect_to(:controller => 'dashboard', :action => 'index')
    else
      render('new')
    end

  end

  def edit
    @about_content = About.find(params[:id])
  end

  def update
    @about_content = About.find(params[:id])
    
    if @about_content.update_attributes(about_content_params)
      flash[:notice] = "About content updated successfully"
      redirect_to(:controller => 'about', :action => 'show', :id => @about_content.id)
    else
      render('edit')
    end

  end

  def delete
    @about_content = About.find(params[:id])
  end

  def destroy
    about_content = About.find(params[:id])
    about_content.destroy
    flash[:notice] = "About content '#{about_content.title}' deleted"
    redirect_to(:controller => 'dashboard', :action => 'index')
  end

  private
  # Note -
  # - raises an error if title not present
  # - allows listed attribs to be mass-assigned
  def about_content_params
    params.require(:about).permit(:title, :content, :image_url)
  end

end
