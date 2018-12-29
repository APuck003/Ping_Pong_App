class Game < ApplicationRecord
  has_many :player_games
  has_many :players, through: :player_games
  has_many :comments

  validates :location, presence: true
  validates :ranked, presence: true
  validates :ranked, inclusion: { in: [true, false] }
end
