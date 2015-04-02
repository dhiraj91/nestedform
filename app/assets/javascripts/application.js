// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
// function remove_fields(link) {
//         $(link).previous("input[type=hidden]").value = "1";
//         $(link).up(".fields").hide();
// }

// function remove_fields(link) {
//   $(link).previous("input[type=hidden]").val(1);
//   $(link).parent(".fields").hide();
// }


// function remove_fields(link) {
//   $(link).previous("input[type=hidden]").val(1);
//   $(link).parent(".fields").hide();
// }

// function remove_fields(link) {
//   $(link).previous("input[type=hidden]").value = "1";
//   $(link).parent(".fields").hide();
// }

// function add_fields(link, association, content) {
//   var new_id = new Date().getTime();
//   var regexp = new RegExp("new_" + association, "g");
//   $(link).up().insert({
//         before: content.replace(regexp, new_id)
//   });
// }

// document.addEventListener('page:load', function(){
//     function remove_fields(link) {
//          $(link).previous("input[type=hidden]").value = "1";
//          $(link).up(".fields").hide();
//  }  
// });





// var ready = function() {             
//     // $( ".draggable" ).draggable();
//     function remove_fields(link) {
//          $(link).previous("input[type=hidden]").value = "1";
//          $(link).up(".fields").hide();
//  }           
// };                                   
// $(document).ready(ready);            
// $(document).on('page:load', ready);





// $(document).on('page:load', function()
// {
//     // your stuff here

//      function remove_fields(link) {
//          $(link).previous("input[type=hidden]").value = "1";
//          $(link).up(".fields").hide();
//  }
// });

// var ready = function() {



// function remove_fields(link) {
// $(link).previous("input[type=hidden]").value = "1";
// $(link).up(".fields").hide();
//  }
//  $(document).ready(ready);
// $(document).on('page:load', ready);

//     // do stuff here.
// };


// function remove_fields(link) {
//         $(link).previous("input[type=hidden]").value = "1";
//         $(link).up(".fields").hide();
// }


// function remove_fields(link) {
//         $(link).prev("input[type=hidden]").val("1");
//         $(link).closest(".fields").hide();
// }

// function add_fields(link, association, content) {
//         var new_id = new Date().getTime();
//         var regexp = new RegExp("new_" + association, "g");
//         $(link).parent().before(content.replace(regexp, new_id));
// }

// $(document).ready(function() {
//   $('a#add-another').click(function() {
//     $('#invite-list li:first').clone().find('input').val('')
//     .end().appendTo('#invite-list');
//   });

//   $('.delete-invite').live('click', function() {
//     if ($('#invite-list li').length > 1)
//   $(this).parent().remove();
//     else
//   alert('You need at least one invite.')
//   });
// });