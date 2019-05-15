import Vue from 'vue'
import App from 'application/components/App'

export default function() {
  document.addEventListener('DOMContentLoaded', () => {
    const el = document.querySelector('#vue-app')

    Vue.component('App', App)
    /* eslint-disable no-new */
    new Vue({ el })
  })
}
