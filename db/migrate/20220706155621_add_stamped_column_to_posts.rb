class AddStampedColumnToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :stamped, :boolean, default: false
  end
end
