class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :titolo
      t.text :contenuto

      t.timestamps
    end
  end
end
