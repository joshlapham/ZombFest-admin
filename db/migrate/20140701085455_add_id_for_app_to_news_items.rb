class AddIdForAppToNewsItems < ActiveRecord::Migration
  
  def up
    add_column :news_items, :id_for_app, :string
  end

  def down
    remove_column :news_items, :id_for_app
  end

end
