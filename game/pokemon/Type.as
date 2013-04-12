package game.pokemon
{
	/**
	 * ...
	 * @author Matthew
	 */
	public class Type 
	{
		public static const NORMAL:int = 0;
		public static const FIGHTING:int = 1;
		public static const FLYING:int = 2;
		public static const POISON:int = 3;
		public static const GROUND:int = 4;
		public static const ROCK:int = 5;
		public static const BUG:int = 6;
		public static const GHOST:int = 7;
		public static const STEEL:int = 8;
		public static const FIRE:int = 9;
		public static const WATER:int = 10;
		public static const GRASS:int = 11;
		public static const ELECTRIC:int = 12;
		public static const PSYCHIC:int = 13;
		public static const ICE:int = 14;
		public static const DRAGON:int = 15;
		public static const DARK:int = 16;
		public static const NONE:int = 17;
		
		public function Type() 
		{
		}
		
		public static function toString(num:int):String
		{
			switch(num) {
				case NORMAL:
					return "Normal";
					break;
				case FIGHTING:
					return "Fighting";
					break;
				case FLYING:
					return "Flying";
					break;
				case POISON:
					return "Poison";
					break;
				case GROUND:
					return "Ground";
					break;
				case ROCK:
					return "Rock";
					break;
				case BUG:
					return "Bug";
					break;
				case GHOST:
					return "Ghost";
					break;
				case STEEL:
					return "Steel";
					break;
				case FIRE:
					return "Fire";
					break;
				case WATER:
					return "Water";
					break;
				case GRASS:
					return "Grass";
					break;
				case ELECTRIC:
					return "Electric";
					break;
				case PSYCHIC:
					return "Psychic";
					break;
				case ICE:
					return "Ice";
					break;
				case DRAGON:
					return "Dragon";
					break;
				case DARK:
					return "Dark";
					break;
			}
			return "";
		}
		
	}

}