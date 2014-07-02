class CreateSocialMediaLinks < ActiveRecord::Migration
  
  def up
    create_table :social_media_links do |t|
      t.string :title
      t.string :url
      t.string :image_url
      t.timestamps
    end
  end

  def down
    drop_table :social_media_links
  end

end
