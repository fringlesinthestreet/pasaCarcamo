# frozen_string_literal: true

module Api
  module V1
    # Controlador encargado de las palabras
    class WordsController < V1Controller
      before_action :set_object, only: %i[show]

      def show
        render json: @word
      end

      def create
        word = Word.create!(word_params)
        render json: word, serializer: WordSerializer
      end

      private

      def set_object
        @word = Word.find(params[:id])
      end

      def word_params
        params.require(:word).permit(
          :name,
          definitions_attributes: %i[definition _destroy]
        )
      end
    end
  end
end
