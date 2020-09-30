# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'static#index'

  get 'login', to: 'sessions#log_in'
  delete :sessions, to: 'sessions#destroy'
  resources :sessions, only: %i[create]

  resources :asanas, param: :slug
  resources :variations, param: :slug
  resources :families, param: :slug
  resources :words, param: :slug
  resources :tags, param: :slug
  resources :exercise_relations, except: %i[show]
  resources :movements, param: :slug
end
