class ChangeSizeColumnOnPosts < ActiveRecord::Migration[5.2]
  def up
    change_column :posts, :size, :integer, null: false
  end

  def down
    change_column :posts, :size, :integer, null: true
  end
end
