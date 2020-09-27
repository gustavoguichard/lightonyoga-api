import Choices from 'choices.js'

const loadChoices = () => {
  const elements = document.querySelectorAll('[data-choices]')
  Array.from(elements).map(el => {
    new Choices(el)
  })
}

$(document).on('turbolinks:load', loadChoices)
