# frozen_string_literal: true

module Api
  module V1
    class PlayersController < V1Controller
      before_action :set_object, only: %i[show]

      def show
        render json: @player
      end

      private

      def set_object
        @player = Player.find(params[:id])
      end
    end
  end
end
