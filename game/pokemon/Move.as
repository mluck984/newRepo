package game.pokemon
{
	/**
	 * ...
	 * @author Matthew
	 */
	public class Move 
	{
		public static const PHYSICAL:int = Stat.ATTACK;
		public static const SPECIAL:int = Stat.SPECIAL_ATTACK;
		public static const STATUS:int = 0;
		
		public static const SELF:int = 0;
		public static const OPPONENT:int = 1;
		public static const GLOBAL:int = 2;
		
		public static const NORMAL_DAMAGE:int = 0;
		public static const TRUE_DAMAGE:int = 1;
		public static const PERCENTILE_DAMAGE:int = 2;
		public static const NO_DAMAGE:int = 3;
		public static const VARIABLE_DAMAGE:int = 4;
		public static const MULTISTRIKE:int = 5;
		public static const INVERSE_DEFENSE:int = 6;
		public static const OHKO:int = 7;
		
		public static const PERFECT_ACCURACY:int = 0;
		
		public static const NO_SWITCH:int = 0;
		public static const SWITCH_SELF:int = 1;
		public static const SWITCH_OPPONENT:int = 2;
		
		public static const LEARN_START:int = 0;
		public static const LEARN_TM:int = 101;
		public static const LEARN_EGG:int = 102;
		
		public static const EMBER:int = 0;
		public static const TAIL_WHIP:int = 1;
		public static const ROAR:int = 2;
		public static const QUICK_ATTACK:int = 3;
		public static const FIRE_SPIN:int = 4;
		public static const CONFUSE_RAY:int = 5;
		public static const IMPRISON:int = 6;
		public static const FAINT_ATTACK:int = 7;
		public static const FLAME_BURST:int = 8;
		public static const WILL_O_WISP:int = 9;
		public static const HEX:int = 10;
		public static const PAYBACK:int = 11;
		public static const FLAMETHROWER:int = 12;
		public static const SAFEGUARD:int = 13;
		public static const EXTRASENSORY:int = 14;
		public static const FIRE_BLAST:int = 15;
		public static const GRUDGE:int = 16;
		public static const CAPTIVATE:int = 17
		public static const INFERNO:int = 18;
		public static const NASTY_PLOT:int = 19;
		public static const TOXIC:int = 20;
		public static const SUNNY_DAY:int = 21;
		public static const PROTECT:int = 22;
		public static const FRUSTRATION:int = 23;
		public static const RETURN:int = 24;
		public static const DIG:int = 25;
		public static const DOUBLE_TEAM:int = 26;
		public static const FACADE:int = 27;
		public static const FLAME_CHARGE:int = 28;
		public static const REST:int = 29;
		public static const ATTRACT:int = 30;
		public static const ROUND:int = 31;
		public static const OVERHEAT:int = 32;
		public static const ENERGY_BALL:int = 33;
		public static const PSYCH_UP:int = 34;
		public static const SWAGGER:int = 35;
		public static const SUBSTITUTE:int = 36;
		public static const DISABLE:int = 37;
		public static const FLAIL:int = 38;
		public static const FLARE_BLITZ:int = 39;
		public static const HEAT_WAVE:int = 40;
		public static const HOWL:int = 41;
		public static const HYPNOSIS:int = 42;
		public static const POWER_SWAP:int = 43;
		public static const SECRET_POWER:int = 44;
		public static const SPITE:int = 45;
		public static const TAIL_SLAP:int = 46;
		public static const PSYSHOCK:int = 47;
		public static const CALM_MIND:int = 48;
		public static const HIDDEN_POWER:int = 49;
		public static const HYPER_BEAM:int = 50;
		public static const SOLARBEAM_CHARGE:int = 51;
		public static const SOLARBEAM_ATTACK:int = 52;
		public static const GIGA_IMPACT:int = 53;
		public static const DREAM_EATER:int = 54;
		public static const ODOR_SLEUTH:int = 55;
		public static const TACKLE:int = 56;
		public static const GROWL:int = 57;
		public static const DEFENSE_CURL:int = 58;
		public static const HIT_BY_CONFUSION:int = 59;
		public static const TAKE_DOWN:int = 60;
		public static const ROLLOUT:int = 61;
		public static const NATURAL_GIFT:int = 62;
		public static const SLAM:int = 63;
		public static const ENDURE:int = 64;
		public static const CHARM:int = 65;
		public static const LAST_RESORT:int = 66;
		public static const DOUBLE_EDGE:int = 67;
		public static const EARTHQUAKE:int = 68;
		public static const SANDSTORM:int = 69;
		public static const ROCK_TOMB:int = 70;
		public static const ECHOED_VOICE:int = 71;
		public static const BULLDOZE:int = 72;
		public static const ROCK_SLIDE:int = 73;
		public static const ROCK_SMASH:int = 74;
		public static const STRENGTH:int = 75;
		public static const FIRE_FANG:int = 76;
		public static const THUNDER_FANG:int = 77;
		public static const HORN_ATTACK:int = 78;
		public static const RAPID_SPIN:int = 79;
		public static const KNOCK_OFF:int = 80;
		public static const MAGNITUDE:int = 81;
		public static const FURY_ATTACK:int = 82;
		public static const ASSURANCE:int = 83;
		public static const SCARY_FACE:int = 84;
		public static const ANCIENTPOWER:int = 85;
		public static const BODY_SLAM:int = 86;
		public static const COUNTER:int = 87;
		public static const ENDEAVOR:int = 88;
		public static const FISSURE:int = 89;
		public static const FOCUS_ENERGY:int = 90;
		public static const HEAD_SMASH:int = 91;
		public static const HEAVY_SLAM:int = 92;
		public static const ICE_SHARD:int = 93;
		public static const MUD_SLAP:int = 94;
		public static const SNORE:int = 95;
		public static const ROCK_POLISH:int = 96;
		public static const STONE_EDGE:int = 97;
		public static const GYRO_BALL:int = 98;
		public static const POISON_JAB:int = 99;
		public static const COVET:int = 100;
		public static const SCRATCH:int = 101;
		public static const LEER:int = 102;
		public static const LICK:int = 103;
		public static const FAKE_TEARS:int = 104;
		public static const FURY_SWIPES:int = 105;
		public static const SWEET_SCENT:int = 106;
		public static const SLASH:int = 107;
		public static const THRASH:int = 108;
		public static const FLING:int = 109;
		public static const HONE_CLAWS:int = 110;
		public static const BULK_UP:int = 111;
		public static const TAUNT:int = 112;
		public static const RAIN_DANCE:int = 113;
		public static const BRICK_BREAK:int = 114;
		public static const AERIAL_ACE:int = 115;
		public static const TORMENT:int = 116;
		public static const THIEF:int = 117;
		public static const SHADOW_CLAW:int = 118;
		public static const RETALIATE:int = 119;
		public static const SWORDS_DANCE:int = 120;
		public static const WORK_UP:int = 121;
		public static const CUT:int = 122;
		public static const BELLY_DRUM:int = 123;
		public static const CHIP_AWAY:int = 124;
		public static const CLOSE_COMBAT:int = 125;
		public static const CROSS_CHOP:int = 126;
		public static const CRUNCH:int = 127;
		public static const METAL_CLAW:int = 128;
		public static const NIGHT_SLASH:int = 129;
		public static const SEISMIC_TOSS:int = 130;
		public static const SLEEP_TALK:int = 131;
		public static const YAWN:int = 132;
		public static const FORESIGHT:int = 0;
		public static const PECK:int = 0;
		public static const UPROAR:int = 0;
		public static const REFLECT:int = 0;
		public static const CONFUSION:int = 0;
		public static const AIR_SLASH:int = 0;
		public static const ZEN_HEADBUTT:int = 0;
		public static const SYNCHRONOISE:int = 0;
		public static const PSYCHO_SHIFT:int = 0;
		public static const ROOST:int = 0;
		public static const PSYCHIC:int = 0;
		public static const SHADOW_BALL:int = 0;
		public static const FLY:int = 0;
		public static const AGILITY:int = 0;
		public static const DEFOG:int = 0;
		public static const FEATHERDANCE:int = 0;
		public static const MIRROR_MOVE:int = 0;
		public static const NIGHT_SHADE:int = 0;
		public static const SKY_ATTACK:int = 0;
		public static const SUPERSONIC:int = 0;
		public static const WHIRLWIND:int = 0;
		public static const WING_ATTACK:int = 0;
		public static const SAND_ATTACK:int = 0;
		public static const POISON_STING:int = 0;
		public static const SWIFT:int = 0;
		public static const FURY_CUTTER:int = 0;
		public static const SAND_TOMB:int = 0;
		public static const XSCISSOR:int = 0;
		public static const CRUSH_CLAW:int = 0;
		public static const MUD_SHOT:int = 0;
		public static const ROCK_CLIMB:int = 0;
		

		private var _moveID:int;
		private var _type:int;
		private var _category:int;
		private var _power:Number;
		private var _accuracy:Number;
		private var _priority:int;
		private var _contact:Boolean;
		private var _protect:Boolean;
		private var _magicCoat:Boolean;
		private var _snatch:Boolean;
		private var _forcesSwitch:int;
		private var _target:int;
		private var _recoil:Number;
		private var _damageType:int;
		private var _effects:Vector.<Effect>;
		private var _sound:Boolean;
		private var _level:int = 0;
		private var _moveName:String;
		private var _desc:String = "";
		private var _learned:Boolean = false;
		private var _pp:int;
		private var _currentPP:int;
		private var _disabled:Boolean = false;
		private var _criticalHit:Number = 0;
		private var _used:Boolean;
		
		public function Move() 
		{
			_effects = new Vector.<Effect>;
		}
		
		public function get type():int 
		{
			return _type;
		}
		
		public function set type(value:int):void 
		{
			_type = value;
		}
		
		public function get category():int 
		{
			return _category;
		}
		
		public function set category(value:int):void 
		{
			_category = value;
		}
		
		public function get power():Number 
		{
			return _power;
		}
		
		public function set power(value:Number):void 
		{
			_power = value;
		}
		
		public function get accuracy():Number 
		{
			return _accuracy;
		}
		
		public function set accuracy(value:Number):void 
		{
			_accuracy = value;
		}
		
		public function get priority():int 
		{
			return _priority;
		}
		
		public function set priority(value:int):void 
		{
			_priority = value;
		}
		
		public function get contact():Boolean 
		{
			return _contact;
		}
		
		public function set contact(value:Boolean):void 
		{
			_contact = value;
		}
		
		public function get protect():Boolean 
		{
			return _protect;
		}
		
		public function set protect(value:Boolean):void 
		{
			_protect = value;
		}
		
		public function get magicCoat():Boolean 
		{
			return _magicCoat;
		}
		
		public function set magicCoat(value:Boolean):void 
		{
			_magicCoat = value;
		}
		
		public function get snatch():Boolean 
		{
			return _snatch;
		}
		
		public function set snatch(value:Boolean):void 
		{
			_snatch = value;
		}
		
		public function get target():int 
		{
			return _target;
		}
		
		public function set target(value:int):void 
		{
			_target = value;
		}
		
		public function get recoil():Number 
		{
			return _recoil;
		}
		
		public function set recoil(value:Number):void 
		{
			_recoil = value;
		}
		
		public function get damageType():int 
		{
			return _damageType;
		}
		
		public function set damageType(value:int):void 
		{
			_damageType = value;
		}
		
		public function get sound():Boolean 
		{
			return _sound;
		}
		
		public function set sound(value:Boolean):void 
		{
			_sound = value;
		}
		
		public function get level():int 
		{
			return _level;
		}
		
		public function set level(value:int):void 
		{
			_level = value;
		}
		
		public function get moveName():String 
		{
			return _moveName;
		}
		
		public function set moveName(value:String):void 
		{
			_moveName = value;
		}
		
		public function get learned():Boolean 
		{
			return _learned;
		}
		
		public function set learned(value:Boolean):void 
		{
			_learned = value;
		}
		
		public function get moveID():int 
		{
			return _moveID;
		}
		
		public function set moveID(value:int):void 
		{
			_moveID = value;
		}
		
		public function get pp():int 
		{
			return _pp;
		}
		
		public function set pp(value:int):void 
		{
			_pp = value;
		}
		
		public function get currentPP():int 
		{
			return _currentPP;
		}
		
		public function set currentPP(value:int):void 
		{
			_currentPP = value;
		}
		
		public function get forcesSwitch():int 
		{
			return _forcesSwitch;
		}
		
		public function set forcesSwitch(value:int):void 
		{
			_forcesSwitch = value;
		}
		
		public function get disabled():Boolean 
		{
			return _disabled;
		}
		
		public function set disabled(value:Boolean):void 
		{
			_disabled = value;
		}
		
		public function get effects():Vector.<Effect> 
		{
			return _effects;
		}
		
		public function set effects(value:Vector.<Effect>):void 
		{
			_effects = value;
		}
		
		public function get desc():String 
		{
			return _desc;
		}
		
		public function set desc(value:String):void 
		{
			_desc = value;
		}
		
		public function get criticalHit():Number 
		{
			return _criticalHit;
		}
		
		public function set criticalHit(value:Number):void 
		{
			_criticalHit = value;
		}
		
		public function get used():Boolean 
		{
			return _used;
		}
		
		public function set used(value:Boolean):void 
		{
			_used = value;
		}
		
	}

}