class NewsItemsController < ApplicationController

  before_action :confirm_logged_in, :except => [:login, :attempt_login, :logout]

  def show
    @news_item = NewsItem.find(params[:id])
  end

  def new
    @news_item = NewsItem.new
  end

  def create
    @news_item = NewsItem.new(news_item_params)

    if @news_item.save
      flash[:notice] = "News item saved successfully"
      redirect_to(:controller => 'dashboard', :action => 'index')
    else
      render('new')
    end

  end

  def edit
    @news_item = NewsItem.find(params[:id])
  end

  def update
    @news_item = NewsItem.find(params[:id])
    
    if @news_item.update_attributes(news_item_params)
      flash[:notice] = "News item updated successfully"
      redirect_to(:controller => 'news_items', :action => 'show', :id => @news_item.id)
    else
      render('edit')
    end

  end

  def delete
    @news_item = NewsItem.find(params[:id])
  end

  def destroy
    news_item = NewsItem.find(params[:id])
    news_item.destroy
    flash[:notice] = "News item '#{news_item.title}' deleted"
    redirect_to(:controller => 'dashboard', :action => 'index')
  end

  private
  # Note -
  # - raises an error if title not present
  # - allows listed attribs to be mass-assigned
  def news_item_params
    params.require(:news_item).permit(:title, :date, :content, :id_for_app, :url)
  end

end
