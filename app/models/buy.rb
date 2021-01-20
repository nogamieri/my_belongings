class Buy < ApplicationRecord
  belongs_to :user
  has_one :release, dependent: :destroy
  has_many :favorites
  has_many :comments, dependent: :destroy
  attachment :buy_post_image

  validates :buy_post_image, presence: true
  validates :buy_caption, presence: true

  # いいねの判定
  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

end
