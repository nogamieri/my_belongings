class Release < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :buy, optional: true
  attachment :release_image

  validates :release_image, presence: true
  validates :release_caption, presence: true
end
