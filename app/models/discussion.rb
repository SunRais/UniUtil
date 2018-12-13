class Discussion < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  has_many :users, through: :comments

  def self.search(search)
  	if search
  		search = bella
  		where('title LIKE ?', "%#{search}").order("created_at DESC")
  	else
  		all
  	end
  end
end
