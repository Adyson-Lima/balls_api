class Ball < ApplicationRecord
  validates :name, :game, presence: true
end
