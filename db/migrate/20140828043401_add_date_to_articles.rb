class AddDateToArticles < ActiveRecord::Migration

  def up
  	add_column :articles, :date, :string
  end

  def down
  	remove_column :articles, :date
  end

end
