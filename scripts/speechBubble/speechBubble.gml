/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 46E44331
/// @DnDArgument : "code" "function speechBubble(speech){$(13_10)	{$(13_10)		//switch statement choose what to say based on what$(13_10)		//int is passed through$(13_10)switch (speech)$(13_10)   {$(13_10)   case 1:$(13_10)      draw_text_ext(x, y-55, "Alright Private, I've set up this small course for you"$(13_10)	  +" so that you can learn the basics. Use the left and right arrow keys to walk."$(13_10)	  +" And use the 'Z' button to jump.",15, 300)$(13_10)      break;$(13_10)   case 2:$(13_10)      draw_text_ext(x, y-55, "Careful Private, there are new flying enemies that'll try"$(13_10)	  +" and get the drop on you!", 15, 300)$(13_10)      break;$(13_10)   case 3:$(13_10)      draw_text(x+15, y+15, "nice")$(13_10)      break;$(13_10)   case 4:$(13_10)      draw_text(x+15, y+15, "wowah")$(13_10)      break;$(13_10)   }$(13_10)}$(13_10)}"
function speechBubble(speech){
	{
		//switch statement choose what to say based on what
		//int is passed through
switch (speech)
   {
   case 1:
      draw_text_ext(x, y-55, "Alright Private, I've set up this small course for you"
	  +" so that you can learn the basics. Use the left and right arrow keys to walk."
	  +" And use the 'Z' button to jump.",15, 300)
      break;
   case 2:
      draw_text_ext(x, y-55, "Careful Private, there are new flying enemies that'll try"
	  +" and get the drop on you!", 15, 300)
      break;
   case 3:
      draw_text(x+15, y+15, "nice")
      break;
   case 4:
      draw_text(x+15, y+15, "wowah")
      break;
   }
}
}