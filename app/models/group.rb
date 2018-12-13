class Group < ApplicationRecord
  has_and_belongs_to_many :users
  has_many :comments

  def self.set_status_active(user_id, group_id)
  	sql = "UPDATE groups_users set status = 'active' where  user_id = " + user_id.to_s + " and group_id = " + group_id.to_s
  	ActiveRecord::Base.connection.execute(sql)

  end

  def self.set_status_pendant(user_id, group_id)
  	sql = "UPDATE groups_users set status = 'pendant' where  user_id = " + user_id.to_s + " and group_id = " + group_id.to_s
  	ActiveRecord::Base.connection.execute(sql)
  end

  def self.set_status_reject(user_id, group_id)
  	sql = "UPDATE groups_users set status = 'reject' where  user_id = " + user_id.to_s + " and group_id = " + group_id.to_s
  	ActiveRecord::Base.connection.execute(sql)
  end

  def self.find_my_groups(user_id)
    sql = "SELECT g.* FROM groups as g JOIN discussions as d ON g.discussion_id = d.id WHERE d.user_id =  " + user_id.to_s
    ActiveRecord::Base.connection.execute(sql)
  end

  def self.find_joinable_groups(user_id)
    sql = "SELECT g.id FROM groups as g JOIN discussions as d ON g.discussion_id = d.id WHERE d.user_id = " + user_id.to_s + " AND g.status != 'active' ORDER BY created_at DESC"
    ActiveRecord::Base.connection.execute(sql)
  end
  
end
