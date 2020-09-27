# frozen_string_literal: true

module AsanasHelper
  def list_relations(collection, title)
    return unless collection.any?

    tag(:br) +
      content_tag(:strong, "#{title}:", class: 'mr-2') +
      collection.join(', ')
  end
end
