class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :price
      t.string :description
      t.integer :category_id
      t.string :email

      t.timestamps
    end
  end
end
