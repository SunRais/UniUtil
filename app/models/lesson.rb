class Lesson < ApplicationRecord
  attr_accessor :start_date, :end_date
  belongs_to :user
  belongs_to :subject
end
