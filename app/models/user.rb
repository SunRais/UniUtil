class User < ApplicationRecord
  #belongs_to :course
  #belongs_to :degree_appeal
  
  has_and_belongs_to_many :appeals
  has_many :discussions
  has_many :comments
  has_many :lessons
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :omniauthable
end
