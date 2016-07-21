class ChangeDatePostFromPosts < ActiveRecord::Migration
  def change
    change_column :posts, :date_post, :date
  end
end
