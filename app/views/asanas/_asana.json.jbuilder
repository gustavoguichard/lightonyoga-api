# frozen_string_literal: true

json.extract! asana, :id, :name, :slug, :translation, :family, :content, :setup, :entering, :legs, :core, :trunk, :arms, :head, :all, :leaving, :curiosities, :advanced_actions, :connections, :observe, :benefits, :caution, :contraindications, :created_at, :updated_at
json.url asana_url(asana, format: :json)
