# frozen_string_literal: true

Rails.application.routes.draw do
  resources :asanas
  root to: 'static#index'
  resources :families
  resources :words
  resources :tags
  resources :movements
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
