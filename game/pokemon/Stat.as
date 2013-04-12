package game.pokemon
{
	/**
	 * ...
	 * @author Matthew
	 */
	public class Stat 
	{
		public static const HP:int = 0;
		public static const ATTACK:int = 1;
		public static const DEFENSE:int = 2;
		public static const SPECIAL_ATTACK:int = 3;
		public static const SPECIAL_DEFENSE:int = 4;
		public static const SPEED:int = 5;
		public static const ACCURACY:int = 6;
		public static const EVASION:int = 7;
		public static const CRITICAL_HIT:int = 8;
		
		public function Stat() 
		{
			
		}
		
		public static function statToString(stat:int):String
		{
			var str:String = "";
			switch(stat)
			{
				case HP:
					str = "Hit Points";
					break;
				case ATTACK:
					str = "Attack";
					break;
				case DEFENSE:
					str = "Defense";
					break;
				case SPECIAL_ATTACK:
					str = "Special Attack";
					break;
				case SPECIAL_DEFENSE:
					str = "Special Defense";
					break;
				case SPEED:
					str = "Speed";
					break;
				case ACCURACY:
					str = "accuracy";
					break;
				case EVASION:
					str = "evasiveness";
					break;
				case CRITICAL_HIT:
					str = "critical hit ratio";
					break;
			}
			
			return str;
		}
		
	}

}