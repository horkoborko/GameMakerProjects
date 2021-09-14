/// @description Insert description here
// You can write your code in this editor

var index;

for ( index = 0; index < global.wordLength; index += 1 )
   {
	if ( wordChar == global.wordArray[index] )
	   {
		with ( global.letters[index + global.wordLength] )
		   {
	        instance_change(obj_letterA, true);
		   }
	   }
   }