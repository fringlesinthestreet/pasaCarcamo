# frozen_string_literal: true

module Api
  module V1
    class GamesController < V1Controller
      before_action :set_object, only: %i[show]

      def index
        render json: Game.order("id DESC").all, each_serializer: Games::GameSimpleSerializer
      end

      def create
        game = Game.create!(game_params)
        render json: game, serializer: GameSerializer
      end

      def show
        render json: @game
      end

      private

      def set_object
        @game = Game.find(params[:id])
      end

      def game_params
        params.require(:game).permit(
          :name,
          players_attributes: %i[name _destroy]
        )
      end
    end
  end
end
