import Rails from 'rails-ujs'
import 'babel-polyfill'

import initVue from './init_vue'

export default function() {
  Rails.start()
  initVue()
}

