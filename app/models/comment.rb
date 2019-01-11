class Comment < ApplicationRecord
  belongs_to :discussion
  belongs_to :user

  validates :description, presence: true, allow_blank: false

end
