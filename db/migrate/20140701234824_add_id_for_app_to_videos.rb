class AddIdForAppToVideos < ActiveRecord::Migration

  def up
    add_column :videos, :id_for_app, :string
  end

  def down
    remove_column :videos, :id_for_app
  end

end
