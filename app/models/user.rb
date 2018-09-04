class User < ApplicationRecord
  belongs_to :course
  #has_many per i professori e has_and_belongs_to_many si riferisce agli studenti
  #ma non so se si faccia così
  has_many :appeals
  belongs_to :degree_appeals
  has_and_belongs_to_many :appeals
  has_many :discussions
  has_many :comments
  has_many :lessons
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :omniauthable
end
