class ChangeSizeColumnOnPosts < ActiveRecord::Migration[5.2]
  def change
    change_column :posts, :size, 'integer USING CAST(column_name AS integer)'
  end
end
