class RemoveStampedColumnFromPosts < ActiveRecord::Migration[7.0]
  def change
    remove_column :posts, :stamped
  end
end
