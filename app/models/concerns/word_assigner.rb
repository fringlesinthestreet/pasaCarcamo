# frozen_string_literal: true

# Se asume que tenga una relación con words
module WordAssigner
  extend ActiveSupport::Concern
  def assign_words
    assigned_words = []
    assigned_words_set = Set.new

    a.ord..z.ord.each do |number|
      letter = number.chr

      word = words_started_by(letter)

      # Si ya está en el set, se debe buscar otra
      while assigned_words_set.include?(word) do
        word = words_started_by(letter)
      end

      assigned_words_set << word
      assigned_words << word
    end

    @words = assigned_words
  end

  def words_started_by(prefix)
    Word.where('name LIKE :prefix', prefix: "#{prefix}%").sample
  end
end
