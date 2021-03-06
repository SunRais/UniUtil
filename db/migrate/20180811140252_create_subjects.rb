class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.string :name
      t.integer :cfu
      t.text :description
      t.integer :duration
      t.integer :year
      t.integer :semester
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end

