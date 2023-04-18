class CreateBatteries < ActiveRecord::Migration[7.0]
  def change
    create_table :batteries do |t|
      t.string :category
      t.date :year_use
      t.boolean :active

      t.timestamps
    end
  end
end
