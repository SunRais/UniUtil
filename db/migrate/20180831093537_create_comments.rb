class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      c.text :description
	  c.integer :discussion_id
	  c.integer :user_id
	  c.timestamps null: false
    end
  end
end
