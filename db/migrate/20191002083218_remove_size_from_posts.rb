class RemoveSizeFromPosts < ActiveRecord::Migration[5.2]
  def up
    remove_column :posts, :size, :integer
  end

  def down
    add_column :posts, :size, :integer
  end
end
