class ChangeUserIdColumnOnLikes < ActiveRecord::Migration[5.2]
  def up
    change_column :likes, :user_id, :integer, null: false
  end

  def down
    change_column :likes, :user_id, :integer, null: true
  end
end
