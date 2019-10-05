class ChangeSizeColumnOnPosts < ActiveRecord::Migration[5.2]
  def up
    change_column :posts, :size, :integer, null: false, 'integer USING CAST(column_name AS integer)'
  end

  def down
    change_column :posts, :size, :integer, null: true
  end
end
