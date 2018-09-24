class ChangeColumnTypeFromDiscussions < ActiveRecord::Migration[5.2]
  def change
	rename_column :discussions, :type, :type_discussion
  end
end
