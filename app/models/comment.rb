class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :buy

  validates :content, presence: true
end
