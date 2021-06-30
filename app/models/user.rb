class User < ApplicationRecord
  has_many :posts
  validates :name, presence: true
  validates :username, presence: true
  validates :password, presence: true
  validates :password_confirmation, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
