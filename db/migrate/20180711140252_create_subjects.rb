class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.string :nome
      t.integer :cfu
      t.text :descrizione
      t.timestamps
    end
  end
end
