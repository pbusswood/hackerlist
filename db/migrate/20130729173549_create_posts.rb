class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.decimal :price, precision: 8, scale: 2
      t.string :location
      t.string :email

      t.timestamps
    end
  end
end
