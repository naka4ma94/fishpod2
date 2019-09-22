class ChangeUserIdOfPosts < ActiveRecord::Migration[5.2]
  def up
    change_column :posts, :user_id, :integer, null: false
  end

  def down
    remove_column :posts, :user_id
  end
end
