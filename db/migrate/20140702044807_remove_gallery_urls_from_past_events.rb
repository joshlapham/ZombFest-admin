class RemoveGalleryUrlsFromPastEvents < ActiveRecord::Migration

  def up
    remove_column :past_events, :gallery_urls
  end

  def down
    add_column :past_events, :gallery_urls
  end

end
