# frozen_string_literal: true

module Api
  class ApiController < ActionController::API
    # load_and_authorize_resource unless: :no_auth_controller?

    include ActionController::MimeResponds
    include ActionController::Serialization

    # respond_to :json

    private

    def no_auth_controller?
      excluded_controllers = %w[controlador_que_no_se_debe_autenticar]
      devise_controller? || excluded_controllers.any? { |name| params[:controller].include?(name) }
    end
  end
end
