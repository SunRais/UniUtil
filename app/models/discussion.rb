class Discussion < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one_attached :file
  has_many :users, through: :comments
  has_and_belongs_to_many :users

  validates :title, presence: true, allow_blank: false
  validates :description, presence: true, allow_blank: false
  validates :discussion_type, presence: true, allow_blank: false

  def self.comments_number(prova)
    sql = "SELECT discussion_id, COUNT(*) as Number FROM comments WHERE discussion_id in ("+ prova.to_s + ") GROUP BY discussion_id "
    result = ActiveRecord::Base.connection.execute(sql)
    number = Hash.new
    result.each do |row|
      number[row['discussion_id']] = row['number']
    end
    return number
  end

  def self.find_user(discussion_id)
    sql = "SELECT u.name, u.surname, u.id FROM users as u JOIN discussions as d ON u.id = d.user_id WHERE d.id = " + discussion_id.to_s
    result = ActiveRecord::Base.connection.execute(sql)
    return result.first
  end

  def self.no_more_favorite(user_id, discussion_id)
    sql = "delete from discussions_users where  user_id = " + user_id.to_s + " and discussion_id = " + discussion_id.to_s
    ActiveRecord::Base.connection.execute(sql)
  end
end
