//= require jeruza/js/script
//= require jeruza/js/jquery.flexslider
//= require jeruza/js/slider
  jQuery(document).ready(function($){
    var mes = 'Jul';
    var botao = '';
    var current = mes;
    $('#'+ mes).css('display','block');

    $('.tab-mes span').click(function(){
      botao = $(this).attr('data-mes');
      if(current!=botao){
        $('.s-info').css('display','none');
        $('#'+ botao).css('display','block');
        current = botao;
      }
    });

  });
