// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require bootstrap
//= require toastr
//= require_tree .

function changeloginModal(){
    $('body').removeClass('modal-open');
    $('.modal-backdrop').remove();
    $('#signUpModal').modal('hide');

    $('#loginModal').modal();
}

function changesignUpModal(){
    $('body').removeClass('modal-open');
    $('.modal-backdrop').remove();
    $('#loginModal').modal('hide');

    $('#signUpModal').modal();
}

toastr.options = {
    "positionClass": "toast-bottom-left",
}

$(document).on('turbolinks:load', function() {
  $(function() {
    $('.slick').slick({
        infinite: true,
        dots:true,
        slidesToShow: 4,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 10000,
        prevArrow: '<i class="slide-arrow prev-arrow slide-arrow prev-arrow fas fa-angle-left"></i>',
        nextArrow: '<i class="slide-arrow next-arrow slide-arrow next-arrow fas fa-angle-right"></i>'
     });
});
});