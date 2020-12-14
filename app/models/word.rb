# frozen_string_literal: true

class Word < ApplicationRecord
  has_many :definitions
  has_many :player_words
  has_many :players, through: :player_words, source: :player
end
