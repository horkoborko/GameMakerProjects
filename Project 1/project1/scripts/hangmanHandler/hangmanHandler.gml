// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


// This is just some random extra code, might need it  might not...can salvage the 
// "idea" for getting to win/lose state

function getLetter(wordArray, wordLength)
   {
	//Getting User Input Chars
    var userLives = 6;
    var counter = 0;

   while ( userLives > 0 && counter != wordLength )
      {
	   var userLetter = string_lower(get_string("Enter letter to be guessed:", ""));
	
	   for ( index = 0; index < wordLength; index += 1 )
	      {
           if ( userLetter == wordArray[index] )
		      {
			   counter += 1;
			   // Now to do the stuff with the letters
		      }
		   else 
		      {
			   userLives -= 1;
			   //Do stuff with hangman parts
		      }
	      }
      }

   }