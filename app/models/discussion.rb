class Discussion < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one :group

  has_many :users, through: :comments

  def self.comments_number(prova)
    sql = "SELECT discussion_id, COUNT(*) as Number FROM comments where discussion_id in ("+ prova.to_s + ") GROUP BY discussion_id "
    result = ActiveRecord::Base.connection.execute(sql)
    number = Hash.new
    result.each do |row|
       number[row[0]] = row[1]
    end
    return number
  end

  def self.find_user(discussion_id)
    puts discussion_id
    sql = "SELECT u.name, u.surname from users as u join discussions as d where d.user_id = u.id AND d.id = " + discussion_id.to_s
    result = ActiveRecord::Base.connection.execute(sql)
    return result.first
  end

end
