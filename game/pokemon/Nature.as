package game.pokemon
{
	/**
	 * ...
	 * @author Matthew
	 */
	public class Nature 
	{
		//[HP, ATTACK, DEFENSE, SPECIAL_ATTACK, SPECIAL_DEFENSE, SPEED]
		public static const ADAMANT:Vector.<Number> = new <Number>[1, 1.1, 1, .9, 1, 1];
		public static const BASHFUL:Vector.<Number> = new <Number>[1, 1, 1, 1, 1, 1];
		public static const BOLD:Vector.<Number> = new <Number>[1, .9, 1.1, 1, 1, 1];
		public static const BRAVE:Vector.<Number> = new <Number>[1, 1.1, 1, 1, 1, .9];
		public static const CALM:Vector.<Number> = new <Number>[1, .9, 1, 1, 1.1, 1];
		public static const CAREFUL:Vector.<Number> = new <Number>[1, 1, 1, .9, 1.1, 1];
		public static const DOCILE:Vector.<Number> = new <Number>[1, 1, 1, 1, 1, 1];
		public static const GENTLE:Vector.<Number> = new <Number>[1, 1, .9, 1, 1.1, 1];
		public static const HARDY:Vector.<Number> = new <Number>[1, 1, 1, 1, 1, 1];
		public static const HASTY:Vector.<Number> = new <Number>[1, 1, .9, 1, 1, 1.1];
		public static const IMPISH:Vector.<Number> = new <Number>[1, 1, 1.1, .9, 1, 1];
		public static const JOLLY:Vector.<Number> = new <Number>[1, 1, 1, .9, 1, 1.1];
		public static const LAX:Vector.<Number> = new <Number>[1, 1, 1.1, 1, .9, 1];
		public static const LONELY:Vector.<Number> = new <Number>[1, 1.1, .9, 1, 1, 1];
		public static const MILD:Vector.<Number> = new <Number>[1, 1, .9, 1.1, 1, 1];
		public static const MODEST:Vector.<Number> = new <Number>[1, .9, 1, 1.1, 1, 1];
		public static const NAIVE:Vector.<Number> = new <Number>[1, 1, 1, 1, .9, 1.1];
		public static const NAUGHTY:Vector.<Number> = new <Number>[1, 1.1, 1, 1, .9, 1];
		public static const QUIET:Vector.<Number> = new <Number>[1, 1, 1, 1.1, 1, .9];
		public static const QUIRKY:Vector.<Number> = new <Number>[1, 1, 1, 1, 1, 1];
		public static const RASH:Vector.<Number> = new <Number>[1, 1, 1, 1.1, .9, 1];
		public static const RELAXED:Vector.<Number> = new <Number>[1, 1, 1.1, 1, 1, .9];
		public static const SASSY:Vector.<Number> = new <Number>[1, 1, 1, 1, 1.1, .9];
		public static const SERIOUS:Vector.<Number> = new <Number>[1, 1, 1, 1, 1, 1];
		public static const TIMID:Vector.<Number> = new <Number>[1, .9, 1, 1, 1, 1.1];
		
		public static const NATURE_LIST:Vector.<Vector.<Number>> = new <Vector.<Number>>
			[ADAMANT, BRAVE, BOLD, CALM, CAREFUL, DOCILE, GENTLE, HARDY, HASTY, IMPISH,
			JOLLY, LAX, LONELY, MILD, MODEST, NAIVE, NAUGHTY, QUIET, QUIRKY, RASH, RELAXED,
			SASSY, SERIOUS, TIMID];
			
		public function Nature() 
		{
			
		}
		
		public static function toString(nature:Vector.<Number>):String
		{
			switch(nature)
			{
				case ADAMANT:	return "Adamant";	break;
				case BRAVE:		return "Brave";		break;
				case BOLD:		return "Bold";		break;
				case CALM:		return "Calm";		break;
				case CAREFUL:	return "Careful";	break;
				case DOCILE:	return "Docile";	break;
				case GENTLE:	return "Gentle";	break;
				case HARDY:		return "Hardy";		break;
				case HASTY:		return "Hasty";		break;
				case IMPISH:	return "Impish";	break;
				case JOLLY:		return "Jolly";		break;
				case LAX:		return "Lax";		break;
				case LONELY:	return "Lonely";	break;
				case MILD:		return "Mild";		break;
				case MODEST:	return "Modest";	break;
				case NAIVE:		return "Naive";		break;
				case NAUGHTY:	return "Naughty";	break;
				case QUIET:		return "Quiet";		break;
				case QUIRKY:	return "Quirky";	break;
				case RASH:		return "Rash";		break;
				case RELAXED:	return "Relaxed";	break;
				case SASSY:		return "Sassy";		break;
				case SERIOUS:	return "Serious";	break;
				case TIMID:		return "Timid";		break;
			}
			
			return "";
		}
		
	}

}