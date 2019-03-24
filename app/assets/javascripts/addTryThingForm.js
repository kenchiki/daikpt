document.addEventListener('DOMContentLoaded', function () {
  $('.js-problem').on('cocoon:after-insert', function(e, i) {
    console.log(e.timeStamp)
  })
})
