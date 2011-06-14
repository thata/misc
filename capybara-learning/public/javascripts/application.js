// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(function () {
    // items
    for (var i = 0; i < 5; i++) {
      $("#items").append($("<li>hello</li>"));
    }

    // items2
    var data = $.ajax({
      async: false,
      type: 'GET',
      dataType: "json",
      url: "/hello/items",
    }).responseText;
    var json = $.parseJSON(data);
    var result = json.result;
    console.log(json);
    for (var i in result) {
      $("#items2").append($("<li>" + i + "</li>"));
    }
    });
