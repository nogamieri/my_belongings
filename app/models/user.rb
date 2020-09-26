class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :buys, dependent: :destroy
  has_many :release, dependent: :destroy
  has_many :favorites
  has_many :favorite_buys, through: :favorites, source: :buy
  has_many :comments, dependent: :destroy

  attachment :profile_image
end
