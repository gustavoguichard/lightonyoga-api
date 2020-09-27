# frozen_string_literal: true

class CustomFormBuilder < ActionView::Helpers::FormBuilder
  delegate :content_tag, to: :@template

  %w[text_field text_area rich_text_area select collection_select].each do |method|
    define_method(method) do |name, *args|
      content_tag :div, class: 'field w-full flex flex-col mb-4' do
        field_label(name, *args) + super(name, *args)
      end
    end
  end

  def submit(title = 'Salvar', *args)
    content_tag :div, class: 'actions mt-4' do
      super(title, *args)
    end
  end

  def error_messages
    return unless object.errors.full_messages.any?

    content_tag(:div, id: 'error_explanation') do
      content_tag(:h2, 'Formulário não pode ser salvo:') +
        content_tag(:ul) do
          object.errors.full_messages.each do |message|
            content_tag(:li, message)
          end.join.html_safe
        end
    end
  end

  private

  def field_label(name, *args)
    options = args.extract_options!
    label(name, options[:label])
  end

  def objectify_options(options)
    super.except(:label)
  end
end
