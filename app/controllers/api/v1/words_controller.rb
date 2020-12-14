# frozen_string_literal: true

module Api
  module V1
    # Controlador encargado de las palabras
    class WordsController < V1Controller
      before_action :set_object, only: %i[show]

      def show
        render json: @word
      end

      private

      def set_object
        @word = Word.find(params[:id])
      end
    end
  end
end
