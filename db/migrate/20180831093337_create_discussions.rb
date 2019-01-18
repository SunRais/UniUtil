class CreateDiscussions < ActiveRecord::Migration[5.2]
  def change
    create_table :discussions do |t|
		t.text :title
		t.text :description
		t.references :user, foreign_key: true
		t.timestamps null: false
    end
  end
end
