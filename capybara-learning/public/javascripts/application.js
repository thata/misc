// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(function () {
    // items
    for (var i = 0; i < 5; i++) {
      $("#items").append($("<li>hello</li>"));
    }

    // items2
    $.get("/hello/items", function (json) {
      console.log(json);
      var result = json.result;
      for (var i in result) {
        $("#items2").append($("<li>" + i + "</li>"));
      }
      });
    });
