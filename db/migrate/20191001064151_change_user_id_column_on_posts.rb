class ChangeUserIdColumnOnPosts < ActiveRecord::Migration[5.2]
  def up
    change_column :posts, :user_id, :integer, null: false
  end

  def down
    change_column :posts, :user_id, :integer, null: true
  end
end
