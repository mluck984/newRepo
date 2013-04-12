package game.pokemon
{
	/**
	 * ...
	 * @author Matthew
	 */
	public class FieldEffect
	{
		public static const SAFEGUARD:int = 0;
		public static const REFLECT:int = 1;
		public static const LIGHT_SCREEN:int = 2;
		public static const MAGIC_COAT:int = 3;
		public static const INTENSE_SUNLIGHT:int = 4;
		public static const HEAVY_RAIN:int = 5;
		public static const SANDSTORM:int = 6;
		public static const HAIL:int = 7;
		public static const FOG:int = 8;
		public static const STEALTH_ROCKS:int = 9;
		public static const TOXIC_SPIKES:int = 10;
		public static const SPIKES:int = 11;
		public static const LEECH_SEED:int = 12;
		

		//public static const STATUS_NUMBER:int = 49;
		
		public static const DECREMENTING:int = 0;
		public static const INCREMENTING:int = 1;
		public static const NONE:int = 2;
		
		private var _type:int;
		private var _duration:int;
		private var _property:Number;
		private var _behavior:int;
		private var _global:Boolean;
		
		public function FieldEffect() 
		{
			
		}
		
		public function get type():int 
		{
			return _type;
		}
		
		public function set type(value:int):void 
		{
			_type = value;
		}
		
		public function get duration():int 
		{
			return _duration;
		}
		
		public function set duration(value:int):void 
		{
			_duration = value;
		}
		
		public function get property():Number 
		{
			return _property;
		}
		
		public function set property(value:Number):void 
		{
			_property = value;
		}
		
		public function get behavior():int 
		{
			return _behavior;
		}
		
		public function set behavior(value:int):void 
		{
			_behavior = value;
		}
		
	}

}