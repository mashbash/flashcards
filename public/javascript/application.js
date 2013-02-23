$(document).ready(function{
  $('.guess-form').submit(function(e){
    e.preventDefault();

    $.ajax({
      url: this.action,
      type: "POST",
      data: $(this).serialize(),
      dataType: "json",
      success: function(data, status) {
        $('.question').html();
        $('.question-number').html();
      },
      error: function() {      
      },
      complete: function() {
      }

    });
  });
});