class Announcement < ApplicationRecord
	belongs_to :subject

	validates :title, presence: true, allow_blank: false
  	validates :content, presence: true, allow_blank: false
end
