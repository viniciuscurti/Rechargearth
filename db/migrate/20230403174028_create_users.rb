class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.boolean :supplier
      t.string :address
      t.string :cpf
      t.string :cnpj, default: false
      t.string :password
      t.string :cellphone

      t.timestamps
    end
  end
end
