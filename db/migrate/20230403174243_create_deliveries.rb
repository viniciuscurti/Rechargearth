class CreateDeliveries < ActiveRecord::Migration[7.0]
  def change
    create_table :deliveries do |t|
      t.string :address
      t.date :delivery_date
      t.date :collected_date
      t.string :person_collected
      t.string :person_delivery

      t.timestamps
    end
  end
end
