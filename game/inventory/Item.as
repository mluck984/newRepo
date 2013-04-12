package game.inventory
{
	/**
	 * ...
	 * @author Matthew
	 */
	import game.pokemon.Effect;
	
	public class Item 
	{
		public static const CHERI_BERRY:int = 0;
		public static const CHESTO_BERRY:int = 1;
		public static const PECHA_BERRY:int = 2;
		public static const RAWST_BERRY:int = 3;
		public static const ASPEAR_BERRY:int = 4;
		public static const LEPPA_BERRY:int = 5;
		public static const ORAN_BERRY:int = 6;
		public static const PERSIM_BERRY:int = 7;
		public static const LUM_BERRY:int = 8;
		public static const SITRUS_BERRY:int = 9;
		public static const POMEG_BERRY:int = 10;
		public static const KELPSY_BERRY:int = 11;
		public static const QUALOT_BERRY:int = 12;
		public static const HONDEW_BERRY:int = 13;
		public static const GREPA_BERRY:int = 14;
		public static const TOMATO_BERRY:int = 15;
		public static const OCCA_BERRY:int = 16;
		public static const PASSHO_BERRY:int = 17;
		public static const WACAN_BERRY:int = 18;
		public static const RINDO_BERRY:int = 19;
		public static const YACHE_BERRY:int = 20;
		public static const CHOPLE_BERRY:int = 21;
		public static const KEBIA_BERRY:int = 22;
		public static const SHUCA_BERRY:int = 23;
		public static const COBA_BERRY:int = 24;
		public static const PAYAPA_BERRY:int = 25;
		public static const TANGA_BERRY:int = 26;
		public static const CHARTI_BERRY:int = 27;
		public static const KASIB_BERRY:int = 28;
		public static const HABAN_BERRY:int = 29;
		public static const COLBUR_BERRY:int = 30;
		public static const BABIRI_BERRY:int = 31;
		public static const CHILAN_BERRY:int = 32;
		public static const LIECHI_BERRY:int = 33;
		public static const GANLON_BERRY:int = 34;
		public static const SALAC_BERRY:int = 35;
		public static const PETAYA_BERRY:int = 36;
		public static const APICOT_BERRY:int = 37;
		public static const LANSAT_BERRY:int = 38;
		
		public static const FIRE_STONE:int = 39;
		public static const WATER_STONE:int = 40;
		public static const THUNDERSTONE:int = 41;
		public static const LEAF_STONE:int = 42;
		public static const MOON_STONE:int = 43;
		public static const SUN_STONE:int = 44;
		public static const SHINY_STONE:int = 45;
		public static const DUSK_STONE:int = 46;
		public static const DAWN_STONE:int = 47;
		public static const EVERSTONE:int = 48;
		
		private var _holdable:Boolean;
		private var _chance:Number;
		private var _consumed:Boolean;
		private var _effects:Vector.<Effect>;
		
		public function Item() 
		{
			_effects = new Vector.<Effect>;
		}
		
		public function get chance():Number 
		{
			return _chance;
		}
		
		public function set chance(value:Number):void 
		{
			_chance = value;
		}
		
		public function get holdable():Boolean 
		{
			return _holdable;
		}
		
		public function set holdable(value:Boolean):void 
		{
			_holdable = value;
		}
		
		public function get consumed():Boolean 
		{
			return _consumed;
		}
		
		public function set consumed(value:Boolean):void 
		{
			_consumed = value;
		}
		
		public function get effects():Vector.<Effect> 
		{
			return _effects;
		}
		
		public function set effects(value:Vector.<Effect>):void 
		{
			_effects = value;
		}
		
	}

}