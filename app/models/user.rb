class User < ApplicationRecord
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  attr_accessor :code
  belongs_to :course, optional: true, :foreign_key => "course_id"
  #belongs_to :degree_appeal
  has_and_belongs_to_many :appeals
  has_many :discussions
  has_many :comments
  has_many :lessons
  has_and_belongs_to_many :groups
  # Include default devise modules. Others available are: :lockable, :timeoutable 
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :omniauthable, :confirmable 
end
