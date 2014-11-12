package com.asgamer.basics1
{
	import flash.display.MovieClip;
	import flash.display.Stage;
	
	public class Engine extends MovieClip
	{
		public function Engine()
		{
			//create an object of our ship from the Ship class
			var ourShip:Ship = new Ship(stage);
			//add it to the display list
			stage.addChild(ourShip);
			
			ourShip.x = stage.stageWidth / 2;
			ourShip.y = stage.stageHeight / 2;
			
		}
	}
}