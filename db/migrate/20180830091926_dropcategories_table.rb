class DropcategoriesTable < ActiveRecord::Migration[5.2]
  def change
	drop_tables :categories, :reviews
	drop_table :posts
	
end
