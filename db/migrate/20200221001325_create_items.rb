class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :img
      t.string :size
      t.string :brand
      t.integer :price
      t.string :color
      t.string :condition
      t.string :details
      t.string :status, default: "available"
      t.integer :category_id
      # t.integer :cart_id, :default => nil

      t.timestamps
    end
  end
end

# t.boolean :active, :null => false,:default =>1
# :default => "Doe"