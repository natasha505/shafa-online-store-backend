class CreateCarts < ActiveRecord::Migration[6.0]
  def change
    create_table :carts do |t|
      t.integer :total
      t.integer :user_id#, :default => nil
      t.boolean :complete, :default => false
      t.timestamps
    end
  end
end
