# frozen_string_literal: true

Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'

  resources :users, only: %i[index create update]
  resources :services, only: %i[index create]
  resources :clients, only: %i[index create]
  resources :specialties, only: %i[index create]
end
