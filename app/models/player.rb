# frozen_string_literal: true

class Player < ApplicationRecord
  belongs_to :game
  has_many :player_words, dependent: :destroy
  has_many :words, through: :player_words, source: :word

  after_create :assign_words

  private

  def assign_words
    self.words = WordSampler.get_word_sample
    save!
  end
end
