class AddUserIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :user_id, :integer
    add_index :posts, :user_id
    remove_column :posts, :email
  end
end