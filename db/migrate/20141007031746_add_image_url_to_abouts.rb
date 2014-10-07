class AddImageUrlToAbouts < ActiveRecord::Migration
  
  def up
  	add_column :abouts, :image_url, :string
  end

  def down
  	remove_column :abouts, :image_url
  end

end
