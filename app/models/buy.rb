class Buy < ApplicationRecord
  belongs_to :user
  has_one :release
  attachment :buy_post_image

  validates :buy_post_image, presence: true
  validates :buy_caption, presence: true
end
