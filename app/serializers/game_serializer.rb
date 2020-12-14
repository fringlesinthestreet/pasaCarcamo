# frozen_string_literal: true

class GameSerializer < ActiveModel::Serializer
  attributes :id, :name, :players_attributes

  def players_attributes
    object.players.order(:id).map { |player| PlayerSerializer.new(player) }
  end
end
