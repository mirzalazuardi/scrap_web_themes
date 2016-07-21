class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :excerpt
      t.text :content
      t.string :image
      t.date :date_post
      t.string :download1
      t.string :download2
      t.string :tag
      t.string :cat1
      t.string :cat2

      t.timestamps null: false
    end
  end
end
