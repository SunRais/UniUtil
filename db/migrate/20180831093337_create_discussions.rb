class CreateDiscussions < ActiveRecord::Migration[5.2]
  def change
    create_table :discussions do |t|
		d.text :title
		d.text :description
		d.integer :user_id
		d.timestamps null: false
    end
  end
end
