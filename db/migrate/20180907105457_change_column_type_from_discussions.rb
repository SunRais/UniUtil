class ChangeColumnTypeFromDiscussions < ActiveRecord::Migration[5.2]
  def change
	add_column :discussions, :discussion_type, :string
  end
end
