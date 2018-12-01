class Lesson < ApplicationRecord
  attr_accessor :days
  belongs_to :user
  belongs_to :subject
end
