// function tryThingForm(timeStamp) {
//   return "<div class='nested_fields' style='float: right;width: 80%'><h2>try </h2><div class='form-group string optional kpt_problem_things_try_things_content'><input class='form-control string optional' type='text' name='kpt[problem_things_attributes][0][try_things_attributes][" + timeStamp +"][content]' id='kpt_problem_things_attributes_"+ timeStamp +"_try_things_attributes_"+ timeStamp +"_content'></div></div>"
// }
//
// document.addEventListener('DOMContentLoaded', function () {
//   $('.js-problem').bind('cocoon:after-insert', function() {
//     var timeStamp = new Date().getTime()
//     $('.js-problem-input').attr('name', 'kpt[problem_things_attributes][' + timeStamp + '][content]' );
//     $(this).children('.nested_fields').last().append(tryThingForm(timeStamp))
//   });
// });
