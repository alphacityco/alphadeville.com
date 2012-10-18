$(function(){

// TWITTER BTN
  !function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="https://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");

  $("#contact-form #submit-mail").live("click", function (event){
    event.preventDefault();   
    var url_send_mail = $(this).attr("href");
    var contact_form = $("#contact-form");
    var valuesToSubmit = contact_form.serialize();

    $.ajax({
      type: 'GET',
      url: url_send_mail,
      data: valuesToSubmit,
      dataType: 'JSON'
    }).done(function(xhr, status) {      
      if(xhr.status==200){        
        $.msg({ content : 'Tu mensaje fue enviado' });          
      }
      else{
        $.msg({ content : 'El mensaje no pudo ser enviado' });   
      }      
    }).fail(function(xhr, status) {
      handle_fail(xhr, "Please try again, something went wrong!");
    });

  });

});
