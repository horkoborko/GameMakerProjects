// Room Creation Code for the main hangman screen

// loops until user input is a populated string less than 7 chars
global.wordLength = 0;

while (global.wordLength <= 0 || global.wordLength > 6)
   {
	global.userString = string_lower(get_string("Enter word to be guessed:\nMust be under 6 letters", ""));

    global.wordLength = string_length(global.userString);
	
	if (global.wordLength > 6 )
		{
		 show_message("Please enter a word less than 7 charachters");	
		}
   }
 
// Put string into array
var index;

global.wordArray = array_create(global.wordLength);

for ( index = 0; index < global.wordLength; index += 1 )
   {
	global.wordArray[index] = string_char_at( global.userString, index );
   }

// Room sprite population

var padding = 4;
var letterWidth = 6;
var yPlacement = 55;


var lyr_instances = layer_get_id("Instances");

global.letters = array_create(global.wordLength);

for ( index = 0; index < global.wordLength; index += 1 )
   {
	var inst_letter = instance_create_layer( ( padding + index *( padding + letterWidth ) ),
	                                            yPlacement, lyr_instances, obj_dash );
												
    inst_letter.wordChar = global.wordArray[index];
	
    global.letters[global.wordLength + index] = inst_letter;
   }
   

   