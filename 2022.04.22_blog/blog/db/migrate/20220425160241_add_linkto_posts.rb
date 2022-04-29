class AddLinktoPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :link, :text
  end
end
