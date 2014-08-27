class AddUrlToNewsItems < ActiveRecord::Migration

  def up
  	add_column :news_items, :url, :string
  end

  def down
  	remove_column :news_items, :url
  end

end
