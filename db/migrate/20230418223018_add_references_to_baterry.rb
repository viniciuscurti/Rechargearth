class AddReferencesToBaterry < ActiveRecord::Migration[7.0]
  def change
    add_reference :batteries, :user, null: false, foreign_key: true
    add_reference :batteries, :delivery, foreign_key: true
  end
end
