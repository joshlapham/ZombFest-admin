class CreateVideos < ActiveRecord::Migration

  def up
    create_table :videos do |t|
      t.string :title, :null => false
      t.string :author
      t.string :year
      t.string :duration
      t.string :video_url
      t.string :image_url
      t.boolean :is_winner, :default => false
      t.boolean :is_entrant, :default => false
      t.boolean :is_other, :default => false
      t.timestamps
    end
  end

  def down
    drop_table :videos
  end

end
