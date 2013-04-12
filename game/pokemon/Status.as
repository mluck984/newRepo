package game.pokemon
{
	/**
	 * ...
	 * @author Matthew
	 */
	public class Status 
	{
		public static const BURN:int = 0;
		public static const FREEZE:int  = 1;
		public static const PARALYSIS:int = 2;
		public static const POISON:int = 3;
		public static const SLEEP:int = 4;
		public static const CONFUSION:int = 5;
		public static const CURSE:int = 6;
		public static const EMBARGO:int = 7;
		public static const ENCORE:int = 8;
		public static const FLINCH:int = 9;
		public static const HEAL_BLOCK:int = 10;
		public static const INFATUATION:int = 11;
		public static const NIGHTMARE:int = 12;
		public static const PARTIALLY_TRAPPED:int = 13;
		public static const PERISH_SONG:int = 14;
		public static const LEECH_SEED:int = 15;
		public static const TAUNT:int = 16;
		public static const TELEKINESIS:int = 17;
		public static const TORMENT:int = 18;
		public static const TRAPPED:int = 19;
		public static const AQUA_RING:int = 20;
		public static const BRACING:int = 21;
		public static const CENTER_OF_ATTENTION:int = 22;
		public static const DEFENSE_CURL:int = 23;
		public static const FOCUS_ENERGY:int = 24;
		public static const GLOWING:int = 25;
		public static const INGRAIN:int = 26;
		public static const MAGIC_COAT:int = 27;
		public static const MAGNET_RISE:int = 28;
		public static const MINIMIZE:int = 29;
		public static const PROTECT:int = 30;
		public static const RECHARGING:int = 31;
		public static const SEMI_INVULNERABLE_FLY:int = 32;
		public static const SEMI_INVULNERABLE_DIG:int = 33;
		public static const SEMI_INVULNERABLE_DIVE:int = 34;
		public static const SUBSTITUTE:int = 35;
		public static const TAKING_AIM:int = 36;
		public static const FOCUS_PUNCH:int = 37;
		public static const INSOMNIA:int = 38;
		public static const CHARGING:int = 39;
		public static const STOCKPILE:int = 40;
		public static const FAINT:int = 41;
		public static const TYPE_CHANGE:int = 42;
		public static const TYPE_BOOST:int = 43;
		public static const IDENTIFIED:int = 44;
		public static const ABILITY_SUPPRESSED:int = 45;
		public static const POISON_TOXIC:int = 46;
		public static const NO_STATUS:int = 47;
		public static const IMPRISON:int = 48;
		public static const GRUDGE:int = 49;
		public static const SLEEP_REST:int = 50;
		public static const ALL_STATUSES:int = 51;
		public static const DISABLED:int = 52;
		public static const ODOR_SLEUTH:int = 53;
		public static const PRESSURE:int = 54;
		public static const ROLLOUT:int = 55;
		public static const ENDURE:int = 56;
		public static const FLASH_FIRE:int = 57;
		public static const ECHOED_VOICE:int = 58;
		
		
		//public static const STATUS_NUMBER:int = 49;
		
		public static const DECREMENTING:int = 0;
		public static const INCREMENTING:int = 1;
		public static const NONE:int = 3;
		
		public static const ON_TURN:int = 0;
		public static const END_OF_TURN:int = 1;
		
		private var _type:int;
		private var _duration:int;
		private var _permanent:Boolean;
		private var _property:Number = 0;
		private var _behavior:int;
		private var _incrementTime:int = END_OF_TURN;
		private var _hidden:Boolean;
		
		public function Status(type:int, duration:int=1) 
		{
			this._type = type;
			this._duration = duration;

			switch(_type) {
				case BURN:
					_permanent = true;
					_behavior = Status.NONE;
					break;
				case SLEEP:
					_permanent = true;
					_behavior = Status.DECREMENTING;
					_incrementTime = ON_TURN;
					break;
				case PARALYSIS:
					_permanent = true;
					_behavior = Status.NONE;
					break;
				case FREEZE:
					_permanent = true;
					_behavior = Status.NONE;
					break;
				case POISON:
					_permanent = true;
					_behavior = Status.NONE;
					break;
				case POISON_TOXIC:
					_permanent = true;
					_behavior = Status.INCREMENTING;
					break;
				case CONFUSION:
					_permanent = false;
					_behavior = Status.DECREMENTING;
					_incrementTime = ON_TURN;
					break;
				case INFATUATION:
					_permanent = false;
					_behavior = Status.NONE;
					break;
				case RECHARGING:
					_permanent = false;
					_duration = 2;
					_behavior = Status.DECREMENTING;
					_incrementTime = ON_TURN;
					break;
				case ROLLOUT:
					_permanent = false;
					_duration = 0;
					_behavior = Status.INCREMENTING;
					_incrementTime = ON_TURN;
					break;
				case DEFENSE_CURL:
					_permanent = false;
					_duration = 1;
					_behavior = Status.NONE;
					_hidden = true;
					break;
				case ENDURE:
					_permanent = false;
					_duration = 1;
					_behavior = Status.DECREMENTING;
					break;
				case PROTECT:
					_permanent = false;
					_duration = 1;
					_behavior = Status.DECREMENTING;
					break;
				case FLASH_FIRE:
					_permanent = false;
					_duration = 1;
					_behavior = Status.NONE;
					_hidden = true;
					break;
				case ECHOED_VOICE:
					_permanent = false;
					_duration = 0;
					_behavior = Status.INCREMENTING;
					_incrementTime = Status.ON_TURN;
					_hidden = true;
					break;
			}
		}
		
		public static function statusToString(status:Status, name:String):String
		{
			var str:String = "";
			switch(status.type)
			{
				case BURN:
					str = (name + " was burned!");
					break;
				case FREEZE:
					str = (name + " was frozen solid!");
					break;
				case PARALYSIS:
					str = (name + " was paralyzed!");
					break;
				case POISON:
					str = (name + " was poisoned!");
					break;
				case SLEEP:
					str = (name + " fell asleep!");
					break;
				case CONFUSION:
					str = (name + " became confused!");
					break;
				case CURSE:
					str = (name + " was inflicted with a curse!");
					break;
				case EMBARGO:
					str = (name + " can no longer use items!");
					break;
				case ENCORE:
					str = (name + " is giving an encore!");
					break;
				case FLINCH:
					str = (name + " flinched!");
					break;
				case HEAL_BLOCK:
					str = (name + " is prevented from healing!");
					break;
				case INFATUATION:
					str = (name + " fell in love!");
					break;
				case ENDURE:
					str = (name + " braced itself!");
					break;
				case FLASH_FIRE:
					str = (name + "'s Flash Fire absorbed the attack and raised the power of its Fire-type moves!");
					break;
			}
			
			return str;
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
		
		public function get permanent():Boolean 
		{
			return _permanent;
		}
		
		public function set permanent(value:Boolean):void 
		{
			_permanent = value;
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
		
		public function get incrementTime():int 
		{
			return _incrementTime;
		}
		
		public function set incrementTime(value:int):void 
		{
			_incrementTime = value;
		}
		
		public function get hidden():Boolean 
		{
			return _hidden;
		}
		
		public function set hidden(value:Boolean):void 
		{
			_hidden = value;
		}
		
	}

}