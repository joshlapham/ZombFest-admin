class CreateGalleryUrls < ActiveRecord::Migration

  def up
    create_table :gallery_urls do |t|
      t.string :url
      t.integer :past_event_id
      t.timestamps
    end
    add_index :gallery_urls, :past_event_id
  end

  def down
    remove_index :gallery_urls, :past_event_id
    drop_table :gallery_urls
  end

end
