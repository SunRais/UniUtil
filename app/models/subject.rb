class Subject < ApplicationRecord
  has_many :results
  has_and_belongs_to_many :courses
  has_and_belongs_to_many :users
  has_many :lessons
  has_many :appeals
end
