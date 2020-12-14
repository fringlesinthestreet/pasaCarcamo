# frozen_string_literal: true

class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :assigned_words

  def assigned_words
    object.words.order(:name).map { |word| WordSerializer.new(word) }
  end
end
