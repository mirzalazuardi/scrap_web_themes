class EditDatePostFromPosts < ActiveRecord::Migration
  def change 
    change_column :posts, :date_post, :string
  end
end
