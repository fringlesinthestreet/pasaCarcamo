# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      resources :definitions, only: %i[show]
      resources :games, only: %i[show create index]
      resources :playes, only: %i[show]
      resources :words, only: %i[show create]
    end
  end
end
