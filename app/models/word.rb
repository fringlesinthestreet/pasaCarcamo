# frozen_string_literal: true

class Word < ApplicationRecord
  has_many :definitions, dependent: :destroy
  has_many :player_words, dependent: :destroy
  has_many :players, through: :player_words, source: :player

  accepts_nested_attributes_for :definitions, allow_destroy: true

  validates :name, uniqueness: true
end
