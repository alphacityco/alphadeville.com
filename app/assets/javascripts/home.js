$(function(){

// TWITTER BTN
  !function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="https://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");

// SENDING EMAIL ON HOME
  $("#contact-form #submit-mail").live("click", function (event){
    event.preventDefault();   
    var url_send_mail = $(this).attr("href");
    var contact_form = $("#contact-form");
    var valuesToSubmit = contact_form.serialize();
    var email_regex = /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/;

    if ( $.trim($("#user_email").val())=="" ) {
      $.msg({ content : 'Tu E-mail es obligatorio para hacer el envio.' });
    }
    else if (!email_regex.test($("#user_email").val())){
      $.msg({ content : 'Debes escribir una direccion de correo electronico valido.' });
    }
    else if ( $.trim($("#user_message").val())=="" ) {
      $.msg({ content : 'Tu Mensaje es obligatorio para hacer el envio.' });
    }
    else {

      $.ajax({
        type: 'GET',
        url: url_send_mail,
        data: valuesToSubmit,
        dataType: 'JSON'
      }).done(function(xhr, status) {      
        if(xhr.status==200){        
          $.msg({ content : 'Tu mensaje fue enviado.' });
          $("#user_email").val("");
          $("#user_message").val("");
          $("#recaptcha_response_field").val("");                    
        }
        else if (xhr.status==202){
          $.msg({ content : 'Formato de Tu E-mail o Tu Mensaje invalido.' });   
        }
        else if (xhr.status==401){
          $.msg({ content : 'La informacion del captcha no es valida, si es dificil de leer puedes recargar otro.' });   
        }      
      }).fail(function(xhr, status) {
        handle_fail(xhr, "Please try again, something went wrong!");
      });

    }    

  });

// LOADING SECTIONS WITH AJAX
  $("#about").load('/embeded_section?section=about');  

  //$("#news").load('/embeded_section?section=news');

  $("#services").load('/embeded_section?section=services');

  $("#showcase").load('/embeded_section?section=showcase');

  $("#our-team").load('/embeded_section?section=team');

  $("#contact-us").load('/embeded_section?section=contact', function(){
    $('.glow-me').addGlow({
      radius: 100,
      duration: 500
    });
  });

});
