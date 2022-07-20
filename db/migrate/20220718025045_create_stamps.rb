class CreateStamps < ActiveRecord::Migration[7.0]
  def change
    create_table :stamps do |t|
      t.references :user, foreign_key: true
      t.references :post, foreign_key: true
      t.boolean :stamped, default: false

      t.timestamps
    end
    add_index :stamps, [:user_id, :post_id], unique: true
  end
end
