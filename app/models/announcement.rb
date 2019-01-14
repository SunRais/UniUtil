class Announcement < ApplicationRecord
	belongs_to :subject

	has_one_attached :file

	validates :title, presence: true, allow_blank: false
  	validates :content, presence: true, allow_blank: false
end
