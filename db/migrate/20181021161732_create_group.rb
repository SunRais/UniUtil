class CreateGroup < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :name
      t.belongs_to :discussion, index: {unique: true}, foreign_key: true
      t.integer :current_students
      t.integer :max_students
      t.timestamps
    end
  end
end
