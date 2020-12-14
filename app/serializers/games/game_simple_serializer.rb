# frozen_string_literal: true

module Games
  class GameSimpleSerializer < ActiveModel::Serializer
    attributes :id, :name
  end
end
