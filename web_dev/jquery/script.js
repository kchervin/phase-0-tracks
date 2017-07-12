$('p').css('color','pink');

$('img').css('border', "10px dotted purple")

$('img').hover(
  function() {
  $(this).css('border', "10px dotted pink")});

$("p").hover(
  function() {
    $(this).css('color', 'purple')
  });

$('ul > li').css('font-size', '25px');
$('ul > li').css('color', 'palevioletred')
$('button').css('width', '200')



$('img').dblclick (function(){
  alert("GRRR!!! GRUMPY CHAMELEON go BYEBYE")
  alert("GAME OVER")
  $('img').toggle('fast');
  $('p').toggle('fast');
  $('button').toggle('fast');
  $('ul').toggle('fast');
  $('body').css('background-color', 'black')

});

$('body').css('background-color', "gray")

$('body').append("<input type='text'>")
$('input').css('width', '400')
$('input').css('background-color', "pink")



