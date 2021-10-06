/// @description Insert description here
// You can write your code in this editor

instance_destroy(id);

global.numHits++;


if ( global.numHits >= 10 )
   {
	 instance_destroy(other);  
   }
