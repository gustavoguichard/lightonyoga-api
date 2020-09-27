# frozen_string_literal: true

module ApplicationHelper
  def rich_content(title, content)
    return unless content.present?

    content_tag :div, class: 'mt-8' do
      content_tag(:h4, "#{title}:") +
      content_tag(:div, content).html_safe
    end
  end

  def multiline_content(title, content)
    return unless content.present?

    content_tag :div, class: 'mt-8' do
      content_tag(:h4, "#{title}:") +
      content_tag(:ul, class: 'list-disc') do
        content.split("\n").map do |line|
          content_tag(:li, line.chomp)
        end.join.html_safe
      end
    end
  end
end
