class Comment < ApplicationRecord
  belongs_to :game

  validates :description, presence: true
  validates :game_id, presence: true
end
