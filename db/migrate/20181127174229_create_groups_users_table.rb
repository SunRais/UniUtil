class CreateGroupsUsersTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :users, :groups do |t|
    	t.index [:user_id, :group_id]
    	t.index [:group_id, :user_id]
      t.string :status
      t.timestamps
    end
  end
end
