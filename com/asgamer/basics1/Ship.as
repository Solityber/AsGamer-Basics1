package com.asgamer.basics1
{
	import com.senocular.utils.KeyObject;
	
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.ui.Keyboard;
	
	public class Ship extends MovieClip
	{
		private var stageRef:Stage;
		private var key;KeyObject;
		private var speed:Number = 0.5;
		private var vx:Number = 0;
		private var vy:Number = 0;
		private var friction:Number = 0.93;
		private var maxspeed:Number = 8;
		
		public function Ship(stageRef:Stage)
		{
			this.stageRef = stageRef;
			key = new KeyObject (stageRef);
			
			addEventListener(Event.ENTER_FRAME, loop, false, 0, true);
		}
		
		public function loop(e:Event) : void
		{
				if (key.isDown(Keyboard.LEFT))
					vx -= speed;
				else if (key.isDown(Keyboard.RIGHT))
					vx += speed;
				else
						vx*=friction;
				
				if (key.isDown(Keyboard.UP))
					vy -= speed;
				else if (key.isDown(Keyboard.DOWN))
					vy += speed;
				else
						vy *= friction;
				
				x += vx;
				y += vy;
				
				rotation = vx;
				
				if (vx > maxspeed)
					vx = maxspeed;
				else if (vx < -maxspeed)
					vx = -maxspeed;
				
				if (vy > maxspeed)
					vy = maxspeed;
				else if (vy < -maxspeed)
					vy = -maxspeed;
				
				scaleX = (maxspeed - Math.abs(vx))/(maxspeed*4) + 0.75;
		}
	}
}