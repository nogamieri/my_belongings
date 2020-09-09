class Release < ApplicationRecord
  belongs_to :user
  belongs_to :buy
  attachment :release_image
end
