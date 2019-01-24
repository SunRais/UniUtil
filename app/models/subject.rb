class Subject < ApplicationRecord
  has_and_belongs_to_many :courses
  has_and_belongs_to_many :users
  has_many :announcements
  belongs_to :user
  
  def self.no_more_following(user_id, subject_id)
  	sql = "delete from subjects_users where  user_id = " + user_id.to_s + " and subject_id = " + subject_id.to_s
  	ActiveRecord::Base.connection.execute(sql)
  end

  def self.not_followed_subjects(user_id)
  	sql = "select s.id, s.name as subject, u.name, u.surname from subjects as s join users as u on s.user_id = u.id where s.id not in (select subject_id from subjects_users where user_id = " + user_id.to_s + ") order by s.name"
  	result = ActiveRecord::Base.connection.execute(sql)
    result.each do |r|
      puts r[0]
    end
    return result
  end

  def self.not_followed_subjects_with_search(search, user_id)
  	sql = "select * from subjects inner join users on subjects.user_id = users.id where subjects.name like '%" + search.to_s + "%' and subjects.id not in (select subject_id from subjects_users where user_id = " + user_id.to_s + ") order by subjects.name"
  	result = ActiveRecord::Base.connection.execute(sql)
    return result
  end

  def self.not_followed_subjects_with_course(course_id, user_id)
  	sql = "select * from subjects inner join users on subjects.user_id = users.id where subjects.id in (select subject_id from courses_subjects where course_id = " + course_id.to_s + ") and subjects.id not in (select subject_id from subjects_users where user_id = " + user_id.to_s + ") order by subjects.name"
  	result = ActiveRecord::Base.connection.execute(sql)
    return result
  end

end
