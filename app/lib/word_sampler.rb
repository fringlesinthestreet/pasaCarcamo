# frozen_string_literal: true

class WordSampler
  def self.get_word_sample
    assigned_words = []
    assigned_words_set = Set.new

    (97..122).each do |number|
      letter = number.chr

      word = WordSampler.words_started_by(letter)

      # Si ya está en el set, se debe buscar otra
      while assigned_words_set.include?(word) do
        word = WordSampler.words_started_by(letter)
      end

      assigned_words_set << word
      assigned_words << word
    end

    assigned_words
  end

  def self.words_started_by(prefix)
    Word.where('name LIKE :prefix', prefix: "#{prefix}%").sample
  end
end
