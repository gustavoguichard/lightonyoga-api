import Choices from 'choices.js'

const sleep = async (timeout = 3000) => {
  return new Promise(resolve => setTimeout(resolve, timeout))
}

const hideNotice = async () => {
  const el = document.getElementById('notice')
  if (el) {
    await sleep()
    el.remove()
  }
}

const loadChoices = () => {
  const elements = document.querySelectorAll('[data-choices]')
  Array.from(elements).map(el => {
    new Choices(el)
  })
}

$(document).on('turbolinks:load', () => {
  hideNotice()
  loadChoices()
})
