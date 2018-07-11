class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :nome
      t.string :cognome
      t.string :sesso
      t.integer :eta
      t.string :indirizzo
      t.string :citta
      t.string :numero_di_telefono
      t.string :email
      t.string :numero_matricola
      t.boolean :professore
      t.string :password

      t.timestamps
    end
  end
end
