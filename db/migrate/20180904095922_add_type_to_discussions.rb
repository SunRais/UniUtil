class AddTypeToDiscussions < ActiveRecord::Migration[5.2]
  def change
	add_column :discussions, :type, :string
  end
end
