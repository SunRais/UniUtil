class ChangeColumnTypediscussionFromDiscussions < ActiveRecord::Migration[5.2]
  def change
	rename_column :discussions, :type_discussion, :discussion_type
  end
end
