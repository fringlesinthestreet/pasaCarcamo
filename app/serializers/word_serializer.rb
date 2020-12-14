# frozen_string_literal: true

class WordSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :definitions, serializer: DefinitionSerializer
end
