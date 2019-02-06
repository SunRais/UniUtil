class User < ApplicationRecord
  has_one_attached :avatar
  
  attr_accessor :code
  has_and_belongs_to_many :subjects
  has_and_belongs_to_many :discussions
  has_many :discussions
  has_many :comments
  has_many :subjects
  has_many :notifications, foreign_key: :recipient_id
  
  # Include default devise modules. Others available are: :lockable, :timeoutable 
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :omniauthable, :confirmable 

  validates :name, presence: true, allow_blank: false
  validates :surname, presence: true, allow_blank: false
  validates :badge_number, presence: true, allow_blank: false
  validates :address, presence: true, allow_blank: false
  validates :city, presence: true, allow_blank: false
  validates :province, presence: true, allow_blank: false
  validates :telephone_number, presence: true, allow_blank: false

end
