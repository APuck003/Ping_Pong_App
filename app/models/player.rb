class Player < ApplicationRecord
  has_many :player_games
  has_many :games, through: :player_games

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :alias, presence: true
end
