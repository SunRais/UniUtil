class Comment < ApplicationRecord
  belongs_to :discussion
  belongs_to :user

  has_one_attached :file

  validates :description, presence: true, allow_blank: false

end
