$(document).ready(function(){
 
//RELEASE 0: 
  //Link this script and the jQuery library to the jquery_example.html file and analyze what this code does. 
 
$('body').css({'background-color': 'pink'})
// changes the body background color to pink
 
//RELEASE 1:
var bodyElement = $('body')
var mascotClass = $('.mascot') 
var img = $('img')
 
//RELEASE 2: 
$( "h1" ).css( "color", "brown");
$( "h1" ).css( "border", "3px solid white");
$( "h1" ).css( "visibility", "visible");

$( ".mascot h1" ).html( "Fence Lizard");
 
//RELEASE 3: Event Listener

  $('img').on('mouseover', function(e){
     e.preventDefault()
    $(this).attr('src', 'http://www.nps.gov/prsf/naturescience/images/westernfencelizard2.jpg')
  }) 
  $( 'img' ).mouseleave(function() {
    $(this).attr('src', 'dbc_logo.jpg')
  });
 
//RELEASE 4 : Experiment on your own
 
$( "img" ).css( "border", "3px solid brown");


 $( "img" ).click(function() {
  $( "img" ).animate({
    opacity: 0.25,
    height: "toggle" 
  }, 5000, function() {
  });
});
 
 
 
 
})  // end of the document.ready function: do not remove or write DOM manipulation below this.
