/// @description Insert description here
// You can write your code in this editor
var index;
var trackChange = 0;

for ( index = 0; index < global.wordLength; index += 1 )
   {
	var tempId = global.dashInstances[index]
	   
	if ( global.wordArray[index] == "e" )
	   {
		with ( tempId )
		   {
			trackChange += 1;
			global.numRight += 1;
	        instance_change(obj_letterE, false);
		   }
	   }
   }
   
 if ( trackChange == 0 )
    {
	 global.numLives -= 1;
	 addHangman();
	}
	
checkState();
   