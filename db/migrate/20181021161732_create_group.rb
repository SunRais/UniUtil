class CreateGroup < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :name
      t.integer :current_students
      t.integer :max_students
      t.integer :user_id
      t.string :status
    end
  end
end
