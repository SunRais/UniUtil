class Discussion < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one :group
  has_one_attached :file
  has_many :users, through: :comments

  validates :title, presence: true, allow_blank: false
  validates :description, presence: true, allow_blank: false
  validates :discussion_type, presence: true, allow_blank: false

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
    sql = "SELECT u.name, u.surname from users as u join discussions as d where d.user_id = u.id AND d.id = " + discussion_id.to_s
    result = ActiveRecord::Base.connection.execute(sql)
    return result.first
  end

  def self.find_comments(discussion_id)
    sql = "SELECT u.name, u.surname, c.description from users as u join comments as c join discussions as d where c.discussion_id = d.id AND c.user_id = u.id AND d.id = " + discussion_id.to_s + " ORDER BY c.created_at ASC"
    result = ActiveRecord::Base.connection.execute(sql)
    return result
  end

end
