package game.pokemon
{
	/**
	 * ...
	 * @author Matthew
	 */
	public class Effect 
	{
		public static const RESTORE_TRUE:int = 0;
		public static const CURE:int = 1;
		public static const STATUS:int = 2;
		public static const RESTORE_PP:int = 3;
		public static const RAISE_PP:int = 4;
		public static const RAISE_EV:int = 5;
		public static const LOWER_EV:int = 6;
		public static const RESTORE_PERCENTILE:int = 7;
		public static const EVOLUTION:int = 8;
		public static const STAT_MOD:int = 9;
		public static const FIELD_EFFECT:int = 10;
		public static const COPY_STAT_CHANGES:int = 11;
		public static const RESET_STAT_CHANGES:int = 12;
		public static const RESET_STAT_CHANGE:int = 13;
		public static const POWER_SWAP:int = 14;
		public static const SECRET_POWER:int = 15;
		public static const REDUCE_PP:int = 16;
		public static const REMOVE_FIELD_EFFECT:int = 17;
		public static const REMOVE_ITEM:int = 18;
		public static const MULTI_STRIKE_2:int = 19;
		public static const MULTI_STRIKE_3:int = 20;
		public static const MULTI_STRIKE_5:int = 21;
		
		private var _type:int;
		private var _target:int;
		private var _value:int;
		private var _statMod:Vector.<int>
		private var _chance:Number = 1;
		
		public function Effect(type:int, value:int, target:int, chance:Number=1, statMod:Vector.<int>=null) 
		{
			_statMod = new <int>[0, 0, 0, 0, 0, 0, 0, 0, 0];
			if (statMod) {
				_statMod = statMod;
			}
			_type = type;
			_target = target;
			_chance = chance;
			_value = value;
		}
		
		public function get type():int 
		{
			return _type;
		}
		
		public function set type(value:int):void 
		{
			_type = value;
		}
		
		public function get target():int 
		{
			return _target;
		}
		
		public function set target(value:int):void 
		{
			_target = value;
		}
		
		public function get statMod():Vector.<int> 
		{
			return _statMod;
		}
		
		public function set statMod(value:Vector.<int>):void 
		{
			_statMod = value;
		}
		
		public function get value():int 
		{
			return _value;
		}
		
		public function set value(value:int):void 
		{
			_value = value;
		}
		
		public function get chance():Number 
		{
			return _chance;
		}
		
		public function set chance(value:Number):void 
		{
			_chance = value;
		}
		
	}

}