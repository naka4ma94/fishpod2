class ChangeSizeColumnOnPosts < ActiveRecord::Migration[5.2]
  def up
    change_column :posts, :size, :integer
  end

  def down
    change_column :posts, :size, :string
  end
end
