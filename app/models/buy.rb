class Buy < ApplicationRecord
  belongs_to :user
  attachment :buy_post_image
end
