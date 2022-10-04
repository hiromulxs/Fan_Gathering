// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

import "jquery";
import "popper.js";
import "bootstrap";
import "../stylesheets/application"


Rails.start()
Turbolinks.start()
ActiveStorage.start()


document.addEventListener("turbolinks:load", function() {
  $(function() {
    $('#new_button').on('click', function(e) {
      e.preventDefault();
      $('#tags').append('<li><div class="tag_button">' + $('input[name="tag_input"]').val() + '</div></li>');
      $('input[name="community[tag_name]"]').val($('input[name="community[tag_name]"]').val() + "/" + $('input[name="tag_input"]').val());
    });
  });
});