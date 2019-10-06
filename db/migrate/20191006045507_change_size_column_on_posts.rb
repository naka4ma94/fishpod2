class ChangeSizeColumnOnPosts < ActiveRecord::Migration[5.2]
  def change
    change_column :posts, :size, :integer, null: false, 'integer USING CAST(size AS integer)'
  end
end
