# frozen_string_literal: true

class PlayerWord < ApplicationRecord
  # JOIN TABLE between Player and Word.

  belongs_to :player
  belongs_to :word

  validates :word, uniqueness: {
    scope:   :player,
    message: 'Each word can be assigned 1 time to a player'
  }
end
