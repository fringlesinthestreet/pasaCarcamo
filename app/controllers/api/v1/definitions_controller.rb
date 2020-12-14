# frozen_string_literal: true

module Api
  module V1
    class DefinitionsController < V1Controller
      before_action :set_object, only: %i[show]

      def show
        render json: @definition
      end

      private

      def set_object
        @definition = Definition.find(params[:id])
      end
    end
  end
end
