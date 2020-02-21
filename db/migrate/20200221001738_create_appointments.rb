class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.datetime :date
      t.string :message
      t.integer :cart_id
      t.boolean :status, :default => false

      t.timestamps
    end
  end
end
