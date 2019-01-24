class CreateDiscussionsUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :discussions_users do |t|
    	t.references :discussion, foreign_key: true
      	t.references :user, foreign_key: true
    end
  end
end
