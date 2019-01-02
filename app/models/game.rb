class Game < ApplicationRecord
  has_many :player_games
  has_many :players, through: :player_games
  has_many :comments

  accepts_nested_attributes_for :player_games

  validates :location, presence: true
  validates :ranked, inclusion: { in: [true, false] }
end
