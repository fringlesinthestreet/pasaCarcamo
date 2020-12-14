# frozen_string_literal: true

class Player < ApplicationRecord
  extend WordAssigner

  belongs_to :game
  has_many :player_words
  has_many :words, through: :player_words, source: :word

  after_create :assign_words
end
