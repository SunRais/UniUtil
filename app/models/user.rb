class User < ApplicationRecord
  has_attached_file :avatar, styles: { medium: "50x50>", thumb: "10x10>" }, :default_url => ActionController::Base.helpers.asset_path('missing.jpg')
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  attr_accessor :code
  has_and_belongs_to_many :subjects
  has_and_belongs_to_many :discussions
  has_many :discussions
  has_many :comments
  has_many :subjects
  has_many :notifications, foreign_key: :recipient_id
  # Include default devise modules. Others available are: :lockable, :timeoutable 
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :omniauthable, :confirmable 
end
