class CreatePastEvents < ActiveRecord::Migration

  def up
    create_table :past_events do |t|
      t.string :year
      t.string :image_url
      t.string :gallery_urls
      t.string :content
      t.timestamps
    end
  end

  def down
    drop_table :past_events
  end

end
