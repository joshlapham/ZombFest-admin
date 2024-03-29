class CreateArticles < ActiveRecord::Migration

  def up
    create_table :articles do |t|
      t.string :title
      t.string :author
      t.string :url
      t.string :year
      t.boolean :is_active

      t.timestamps
    end
  end

  def down
  	drop_table :articles
  end

end
