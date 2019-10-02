class ChangeSizeColumnOnPosts < ActiveRecord::Migration[5.2]
  def change
    change_column :posts, :size, :integer, null: false
  end
end
