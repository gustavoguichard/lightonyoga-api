# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'static#index'

  get 'login', to: 'sessions#log_in'
  delete :sessions, to: 'sessions#destroy'
  resources :sessions, only: %i[create]

  resources :asanas
  resources :variations
  resources :families
  resources :words
  resources :tags
  resources :movements
end
