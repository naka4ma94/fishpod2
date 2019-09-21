class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :image, null: false
      t.string :size, null: false
      t.string :lure, null: false
      t.text :comment

      t.timestamps
    end
  end
end
