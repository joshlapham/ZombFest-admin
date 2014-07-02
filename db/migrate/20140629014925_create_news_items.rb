class CreateNewsItems < ActiveRecord::Migration

  def up
    create_table :news_items do |t|
      t.string :title
      t.string :content
      t.string :date
      t.timestamps
    end
  end

  def down
    drop_table :news_items
  end

end
