class AddIndexToAdminUsersEmail < ActiveRecord::Migration
  
  def up
    add_index :admin_users, :email, unique: true
  end
  

  def down
    remove_index :admin_users, :email
  end

end
