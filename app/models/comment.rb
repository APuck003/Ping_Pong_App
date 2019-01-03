class Comment < ApplicationRecord
  belongs_to :game
  belongs_to :user

  validates :description, presence: true
  validates :game_id, presence: true
  validates :user_id, presence: true
end
