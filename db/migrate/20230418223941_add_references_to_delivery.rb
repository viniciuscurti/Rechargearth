class AddReferencesToDelivery < ActiveRecord::Migration[7.0]
  def change
    add_reference :deliveries, :user, null: false, foreign_key: true
    add_reference :deliveries, :battery, null: false, foreign_key: true
  end
end
