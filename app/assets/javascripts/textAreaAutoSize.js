document.addEventListener('DOMContentLoaded', function () {
  autosize(document.querySelectorAll('textarea'));
  // TODO: cocoon insertの後に挿入されたtextareaに対して、autosize
  // $('.js-problem').on('cocoon:before-insert', function(_, insertedItem) {
  //   autosize(insertedItem > 'te');
  // });
});
