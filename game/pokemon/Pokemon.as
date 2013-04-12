package game.pokemon
{
	import game.inventory.Item;
	/**
	 * ...
	 * @author Matthew
	 */
	public class Pokemon 
	{
		public static const EVOLUTION_NONE:int = 0;
		public static const EVOLUTION_LEVEL:int = 1;
		public static const EVOLUTION_STONE:int = 2;
		public static const EVOLUTION_FRIENDSHIP:int = 3;
		public static const EVOLUTION_MOVE:int = 3;
		public static const EVOLUTION_TRADE:int = 4;
		
		public static const XP_FAST:int = 0; //800,000 EXP at lv 100
		public static const XP_MEDIUM_FAST:int = 1; //1,000,000 EXP at lv 100
		public static const XP_MEDIUM_SLOW:int = 2; //1,059,860 EXP at lv 100
		public static const XP_SLOW:int = 3; //1,250,000 EXP at lv 100
		
		public static const MALE:int = 0;
		public static const FEMALE:int = 1;
		public static const GENDERLESS:int = 2;
		
		public static const MONSTER_GROUP:int = 0;
		public static const HUMAN_LIKE_GROUP:int = 1;
		public static const WATER_1_GROUP:int = 2;
		public static const WATER_2_GROUP:int = 3;
		public static const WATER_3_GROUP:int = 4;
		public static const BUG_GROUP:int = 5;
		public static const MINERAL_GROUP:int = 6;
		public static const FLYING_GROUP:int = 7;
		public static const FIELD_GROUP:int = 8;
		public static const AMORPHOUS_GROUP:int = 9;
		public static const FAIRY_GROUP:int = 10;
		public static const DITTO_GROUP:int = 11;
		public static const GRASS_GROUP:int = 12;
		public static const DRAGON_GROUP:int = 13;
		public static const UNDISCVOERED_GROUP:int = 14;
		
		public static const VULPIX:int = 0;
		public static const NINETALES:int = 1;
		public static const PHANPY:int = 2;
		public static const DONPHAN:int = 3;
		public static const TEDDIURSA:int = 4;
		public static const URSARING:int = 5;
		public static const TIRTOUGA:int = 6;
		public static const CARRACOSTA:int = 7;
		public static const SWABLU:int = 8;
		public static const ALTARIA:int = 9;
		public static const ZORUA:int = 10;
		public static const ZOROARK:int = 11;
		public static const WEEDLE:int = 12;
		public static const KAKUNA:int = 13;
		public static const BEEDRILL:int = 14;
		public static const VENIPEDE:int = 15;
		public static const WHIRLIPEDE:int = 16;
		public static const SCOLIPEDE:int = 17;
		public static const SPEAROW:int = 18;
		public static const FEAROW:int = 19;
		public static const SENTRET:int = 20;
		public static const FURRET:int = 21;
		public static const RALTS:int = 22;
		public static const KIRLIA:int = 23;
		public static const GARDEVOIR:int = 24;
		public static const GALLADE:int = 25;
		public static const GOLDEEN:int = 26;
		public static const SEAKING:int = 27;
		public static const CARVANHA:int = 28;
		public static const SHARPEDO:int = 29;
		public static const PIDGEY:int = 30;
		public static const PIDGEOTTO:int = 31;
		public static const PIDGEOT:int = 32;
		public static const EKANS:int = 33;
		public static const ARBOK:int = 34;
		public static const RATTATA:int = 35;
		public static const RATTICATE:int = 36;
		public static const SHROOMISH:int = 37;
		public static const BRELOOM:int = 38;
		public static const ODDISH:int = 39;
		public static const GLOOM:int = 40;
		public static const VILEPLUME:int = 41;
		public static const BELLOSSOM:int = 42;
		public static const HOOTOOT:int = 43;
		public static const NOCTOWL:int = 44;
		public static const SANDSHREW:int = 45;
		public static const SANDSLASH:int = 46;
		public static const MANKEY:int = 47;
		public static const PRIMEAPE:int = 48;
		public static const POOCHYENA:int = 49;
		public static const MIGHTYENA:int = 50;
		public static const PONYTA:int = 51;
		public static const RAPIDASH:int = 52;
		public static const MUDKIP:int = 53;
		public static const MARSHTOMP:int = 54;
		public static const SWAMPERT:int = 55;
		public static const TRAPINCH:int = 56;
		public static const VIBRAVA:int = 57;
		public static const FLYGON:int = 58;
		public static const MAGIKARP:int = 59;
		public static const GYARADOS:int = 60;
		public static const GEODUDE:int = 61;
		public static const GRAVELER:int = 62;
		public static const GOLEM:int = 63;
		public static const ONIX:int = 64;
		public static const STEELIX:int = 65;
		public static const ZUBAT:int = 66;
		public static const GOLBAT:int = 67;
		public static const CROBAT:int = 68;
		public static const ARON:int = 69;
		public static const LAIRON:int = 70;
		public static const AGGRON:int = 71;
		public static const PARAS:int = 72;
		public static const PARASECT:int = 73;
		public static const SKARMORY:int = 74;
		
		
		
		private var _name:String;
		private var _type:Vector.<int>;
		private var _speciesName:String;
		private var _speciesTitle:String;
		private var _species:int;
		private var _level:int;
		private var _baseStats:Vector.<int>;
		private var _stats:Vector.<int>;
		private var _statMods:Vector.<int>;
		private var _evs:Vector.<int>;
		private var _ivs:Vector.<int>;
		private var _evYield:Vector.<int>;
		private var _weight:Number;
		private var _height:Number;
		private var _currentHP:int;
		private var _statuses:Vector.<Status>
		private var _ability:int;
		private var _activeAbility:int;
		private var _hiddenAbility:int;
		private var _abilityList:Vector.<int>;
		private var _nature:Vector.<Number> = Nature.SERIOUS;
		private var _resistances:Vector.<Number>;
		private var _evolveLevel:int = 0;
		private var _evolveTypes:Vector.<int>;
		private var _evolveItems:Vector.<int>;
		private var _item:int;
		private var _pokemonID:int;
		private var _gender:int;
		private var _currentXP:int;
		private var _maxXP:int;
		private var _catchRate:int;
		private var _genderRatio:Number;
		private var _xpRate:int;
		private var _movepool:Vector.<Move>;
		private var _moves:Vector.<Move>;
		private var _friendship:int = 70;
		private var _battleXP:int;
		private var _wildItemList:Vector.<Item>;
		private var _eggGroups:Vector.<int>;
		private var _self:int = 0;
		private var _opponent:int = 1;
		private var _previousMove:Move;
		private var _moveOrder:int;
		
		public function Pokemon() 
		{
			_evs = new <int>[0, 0, 0, 0, 0, 0];
			_ivs = new <int>[0, 0, 0, 0, 0, 0];
			_statMods = new <int>[0,0,0,0,0,0,0,0,0];
			_statuses = new Vector.<Status>;
			_movepool = new Vector.<Move>;
			_moves = new Vector.<Move>;
			_abilityList = new Vector.<int>;
			_wildItemList = new Vector.<Item>;
			_friendship = 0;
			_evolveItems = new Vector.<int>;
			_evolveTypes = new Vector.<int>;
			_eggGroups = new Vector.<int>;
			//_item = new Item();
			
			
		}
		
		///////////////Public Methods//////////////
		
		public function calculateResistances():void
		{
			_resistances = new Vector.<Number>(18, true);
			for (var i:int = 0; i < _resistances.length; i++)
			{
				_resistances[i] = 1;
			}
			for (i = 0; i < _type.length; i++)
			{
				switch(type[i])
				{
					case Type.NORMAL:
						_resistances[Type.FIGHTING] *= 2;
						_resistances[Type.GHOST] *= 0;
						break;
					case Type.FIGHTING:
						_resistances[Type.FLYING] *= 2;
						_resistances[Type.PSYCHIC] *= 2;
						_resistances[Type.ROCK] *= 1 / 2;
						_resistances[Type.BUG] *= 1 / 2;
						_resistances[Type.DARK] *= 1 / 2;						
						break;
					case Type.FLYING:
						_resistances[Type.FIGHTING] *= 1 / 2;
						_resistances[Type.GROUND] *= 0;
						_resistances[Type.ROCK] *= 2;
						_resistances[Type.BUG] *= 1/ 2;
						_resistances[Type.GRASS] *= 1 / 2;
						_resistances[Type.ELECTRIC] *= 2;
						_resistances[Type.ICE] *= 1 / 2;
						break;
					case Type.POISON:
						_resistances[Type.FIGHTING] *= 1 / 2;
						_resistances[Type.POISON] *= 1 / 2;
						_resistances[Type.GRASS] *= 1 / 2;
						_resistances[Type.GROUND] *= 2;
						_resistances[Type.BUG] *= 1 / 2;
						_resistances[Type.PSYCHIC] *= 2;
						break;
					case Type.GROUND:
						_resistances[Type.POISON] *= 1 / 2;
						_resistances[Type.ROCK] *= 1 / 2;
						_resistances[Type.WATER] *= 2;
						_resistances[Type.GRASS] *= 2;
						_resistances[Type.ELECTRIC] *= 0;
						_resistances[Type.ICE] *= 2;
						break;
					case Type.ROCK:
						_resistances[Type.NORMAL] *= 1 / 2;
						_resistances[Type.FIGHTING] *= 2;
						_resistances[Type.FLYING] *= 1 / 2;
						_resistances[Type.POISON] *= 1 / 2;
						_resistances[Type.GROUND] *= 2;
						_resistances[Type.STEEL] *= 2;
						_resistances[Type.FIRE] *= 1 / 2;
						_resistances[Type.WATER] *= 2;
						_resistances[Type.GRASS] *= 2;
						break;
					case Type.BUG:
						_resistances[Type.FIGHTING] *= 1 / 2;
						_resistances[Type.FLYING] *= 2;
						_resistances[Type.GROUND] *= 1 / 2;
						_resistances[Type.ROCK] *= 2;
						_resistances[Type.FIRE] *= 2;
						_resistances[Type.GRASS] *= 1 / 2;
						break;
					case Type.GHOST:
						_resistances[Type.NORMAL] *= 0;
						_resistances[Type.FIGHTING] *= 0;
						_resistances[Type.POISON] *= 1 / 2;
						_resistances[Type.BUG] *= 1 / 2;
						_resistances[Type.GHOST] *= 2;
						_resistances[Type.DARK] *= 2;
						break;
					case Type.STEEL:
						_resistances[Type.NORMAL] *= 1 / 2;
						_resistances[Type.FLYING] *= 1 / 2;
						_resistances[Type.POISON] *= 0;
						_resistances[Type.ROCK] *= 1 / 2;
						_resistances[Type.BUG] *= 1 / 2;
						_resistances[Type.GHOST] *= 1 / 2;
						_resistances[Type.STEEL] *= 1 / 2;
						_resistances[Type.GRASS] *= 1 / 2;
						_resistances[Type.PSYCHIC] *= 1 / 2;
						_resistances[Type.ICE] *= 1 / 2;
						_resistances[Type.DRAGON] *= 1 / 2;
						_resistances[Type.DARK] *= 1 / 2;
						_resistances[Type.FIGHTING] *= 2;
						_resistances[Type.GROUND] *= 2;
						_resistances[Type.FIRE] *= 2;
						break;
					case Type.FIRE:
						_resistances[Type.GROUND] *= 2;
						_resistances[Type.ROCK] *= 2;
						_resistances[Type.BUG] *= 1 / 2;
						_resistances[Type.STEEL] *= 1 / 2;
						_resistances[Type.FIRE] *= 1 / 2;
						_resistances[Type.WATER] *= 2;
						_resistances[Type.GRASS] *= 1 / 2;
						_resistances[Type.ICE] *= 1 / 2;
						break;
					case Type.WATER:
						_resistances[Type.STEEL] *= 1 / 2;
						_resistances[Type.FIRE] *= 1 / 2;
						_resistances[Type.WATER] *= 1 / 2;
						_resistances[Type.GRASS] *= 2;
						_resistances[Type.ELECTRIC] *= 2;
						_resistances[Type.ICE] *= 1 / 2;
						break;
					case Type.GRASS:
						_resistances[Type.FLYING] *= 2;
						_resistances[Type.POISON] *= 2;
						_resistances[Type.GROUND] *= 1 / 2;
						_resistances[Type.GRASS] *= 1 / 2;
						_resistances[Type.BUG] *= 2;
						_resistances[Type.FIRE] *= 2;
						_resistances[Type.WATER] *= 1 / 2;
						_resistances[Type.ELECTRIC] *= 1 / 2;
						_resistances[Type.ICE] *= 2;
						break;
					case Type.ELECTRIC:
						_resistances[Type.FLYING] *= 1 / 2;
						_resistances[Type.GROUND] *= 2;
						_resistances[Type.STEEL] *= 1 / 2;
						_resistances[Type.ELECTRIC] *= 1 / 2;
						break;
					case Type.PSYCHIC:
						_resistances[Type.FIGHTING] *= 1 / 2;
						_resistances[Type.BUG] *= 2;
						_resistances[Type.GHOST] *= 2;
						_resistances[Type.PSYCHIC] *= 1 / 2;
						_resistances[Type.DARK] *= 2;
						break;
					case Type.ICE:
						_resistances[Type.FIGHTING] *= 2;
						_resistances[Type.ROCK] *= 2;
						_resistances[Type.STEEL] *= 2;
						_resistances[Type.FIRE] *= 2;
						_resistances[Type.ICE] *= 1 / 2;
						break;
					case Type.DRAGON:
						_resistances[Type.FIRE] *= 1 / 2;
						_resistances[Type.WATER] *= 1 / 2;
						_resistances[Type.GRASS] *= 1 / 2;
						_resistances[Type.ELECTRIC] *= 1 / 2;
						_resistances[Type.ICE] *= 2;
						_resistances[Type.DRAGON] *= 2;
						break;
					case Type.DARK:
						_resistances[Type.FIGHTING] *= 2;
						_resistances[Type.BUG] *= 2;
						_resistances[Type.GHOST] *= 1 / 2;
						_resistances[Type.DARK] *= 1 / 2;
						_resistances[Type.PSYCHIC] *= 0;
						break;
				}
			}
		}
		
		public function calculateStats():void
		{
			_stats = new Vector.<int>;
			_stats[Stat.HP] = Math.floor((((_ivs[Stat.HP] + (2 * _baseStats[Stat.HP]) + (_evs[Stat.HP] / 4) + 100) * _level) / 100) + 10);
			_currentHP = _stats[Stat.HP];
			for (var i:int = 1; i < 6; i++)
			{
				_stats[i] = Math.floor(Math.floor((((_ivs[i] + (2 * _baseStats[i]) + (_evs[i] / 4)) * _level) / 100) + 5) * _nature[i]);
			}
		}
		
		public function calculateMoves():void
		{
			var learned:Vector.<Move> = new Vector.<Move>;
			for (var i:int = 0; i < _movepool.length; i++)
			{
				if (_level >= _movepool[i].level) {
					_movepool[i].learned = true;
					learned.push(_movepool[i]);
				}
			}
			if (learned.length <= 4) {
				for (i = 0; i < learned.length; i++)
				{
					_moves.push(learned[i]);
				}
			} else {
				var moveNum:int = 0;
				while(moveNum < 4){
					var rand:int = Math.floor(Math.random() * learned.length);
					if (selectMove(rand, learned)) {
						moveNum++;
					}
				}
			}
			
		}
		
		public function getEffectiveStat(stat:int):Number
		{
			var multiplier:Number = 1;
			if (_statMods[stat] > 0) {
				multiplier = ( (2 + _statMods[stat]) / 2);
			} else {
				multiplier = 2 / (2 + Math.abs(_statMods[stat]));
			}

			
			if ((this.hasStatus(Status.PARALYSIS)) && (stat == Stat.SPEED)) {
				if (_activeAbility == Ability.QUICK_FEET) {
					effectiveStat = Math.floor(effectiveStat * (3/2));
				} else{
					effectiveStat = Math.floor(effectiveStat / 4);
				}
			}
			
			if ((stat == Stat.EVASION) || (stat == Stat.ACCURACY)) {
				if (_statMods[stat] > 0) {
					multiplier = ( 1 + (_statMods[stat] / 3));
				} else {
					multiplier = 3 / (3 - Math.abs(_statMods[stat]));
				}
				var effectiveStat:Number = 1 * multiplier;
			} else {
				effectiveStat = Math.floor(_stats[stat] * multiplier);
			}

			return effectiveStat;
		}
		
		public function hasStatus(status:int):Boolean
		{
			for (var i:int = 0; i < _statuses.length; i++)
			{
				if (_statuses[i].type == status) {
					return true;
				}
			}
			return false;
		}
		
		public function getStatus(num:int):Status
		{
			for (var i:int = 0; i < _statuses.length; i++)
			{
				if (_statuses[i].type == num) {
					var status:Status = _statuses[i];
				}
			}
			return status;
		}
		
		public function isAfflicted():Boolean
		{
			var statusList:Vector.<int> = new <int>[Status.BURN, Status.PARALYSIS, Status.FREEZE, Status.SLEEP, Status.POISON, Status.POISON_TOXIC];
			for (var i:int = 0; i < _statuses.length; i++)
			{
				for (var n:int = 0; n < statusList.length; n++)
				{
					if (_statuses[i].type == statusList[n]) {
						return true;
					}
				}
			}
			return false;
		}
		
		public function getMove(num:int):Move
		{
			for (var i:int = 0; i < _moves.length; i++)
			{
				if (num == _moves[i].moveID) {
					var move:Move = _moves[i];
				}
			}
			return move;
		}
		
		public function hasType(type:int):Boolean
		{
			if ((_type[0] == type) || (_type[1] == type)) {
				return true;
			}
			return false;
		}
		
		///////////////Private Methods////////////////
		
		private function selectMove(num:int, learned:Vector.<Move>):Boolean
		{
			var duplicates:Boolean = false;
			for (var n:int = 0; n < _moves.length; n++)
			{
				if (learned[num].moveID == _moves[n].moveID) {
					duplicates = true;
				}
			}
			if (! duplicates) {
				_moves.push(learned[num]);
				return true;
			} else {
				return false;
			}
			return false;
		}
		///////////////Getters & Setters//////////////
		
		public function get name():String 
		{
			return _name;
		}
		
		public function set name(value:String):void 
		{
			_name = value;
		}
		
		public function get speciesName():String 
		{
			return _speciesName;
		}
		
		public function set speciesName(value:String):void 
		{
			_speciesName = value;
		}
		
		public function get species():int 
		{
			return _species;
		}
		
		public function set species(value:int):void 
		{
			_species = value;
		}
		
		public function get baseStats():Vector.<int> 
		{
			return _baseStats;
		}
		
		public function set baseStats(value:Vector.<int>):void 
		{
			_baseStats = value;
		}
		
		public function get stats():Vector.<int> 
		{
			return _stats;
		}
		
		public function set stats(value:Vector.<int>):void 
		{
			_stats = value;
		}
		
		public function get statMods():Vector.<int> 
		{
			return _statMods;
		}
		
		public function set statMods(value:Vector.<int>):void 
		{
			_statMods = value;
		}
		
		public function get evs():Vector.<int> 
		{
			return _evs;
		}
		
		public function set evs(value:Vector.<int>):void 
		{
			_evs = value;
		}
		
		public function get ivs():Vector.<int> 
		{
			return _ivs;
		}
		
		public function set ivs(value:Vector.<int>):void 
		{
			_ivs = value;
		}
		
		public function get evYield():Vector.<int> 
		{
			return _evYield;
		}
		
		public function set evYield(value:Vector.<int>):void 
		{
			_evYield = value;
		}
		
		public function get weight():Number 
		{
			return _weight;
		}
		
		public function set weight(value:Number):void 
		{
			_weight = value;
		}
		
		public function get height():Number 
		{
			return _height;
		}
		
		public function set height(value:Number):void 
		{
			_height = value;
		}
		
		public function get statuses():Vector.<Status> 
		{
			return _statuses;
		}
		
		public function set statuses(value:Vector.<Status>):void 
		{
			_statuses = value;
		}
		
		public function get ability():int 
		{
			return _ability;
		}
		
		public function set ability(value:int):void 
		{
			_ability = value;
		}
		
		public function get activeAbility():int 
		{
			return _activeAbility;
		}
		
		public function set activeAbility(value:int):void 
		{
			_activeAbility = value;
		}
		
		public function get hiddenAbility():int 
		{
			return _hiddenAbility;
		}
		
		public function set hiddenAbility(value:int):void 
		{
			_hiddenAbility = value;
		}
		
		public function get abilityList():Vector.<int> 
		{
			return _abilityList;
		}
		
		public function set abilityList(value:Vector.<int>):void 
		{
			_abilityList = value;
		}
		
		public function get nature():Vector.<Number> 
		{
			return _nature;
		}
		
		public function set nature(value:Vector.<Number>):void 
		{
			_nature = value;
		}
		
		public function get resistances():Vector.<Number> 
		{
			return _resistances;
		}
		
		public function set resistances(value:Vector.<Number>):void 
		{
			_resistances = value;
		}
		
		public function get evolveLevel():int 
		{
			return _evolveLevel;
		}
		
		public function set evolveLevel(value:int):void 
		{
			_evolveLevel = value;
		}
		
		public function get item():int 
		{
			return _item;
		}
		
		public function set item(value:int):void 
		{
			_item = value;
		}
		
		public function get pokemonID():int 
		{
			return _pokemonID;
		}
		
		public function set pokemonID(value:int):void 
		{
			_pokemonID = value;
		}
		
		public function get gender():int 
		{
			return _gender;
		}
		
		public function set gender(value:int):void 
		{
			_gender = value;
		}
		
		public function get type():Vector.<int> 
		{
			return _type;
		}
		
		public function set type(value:Vector.<int>):void 
		{
			_type = value;
		}
		
		public function get currentXP():int 
		{
			return _currentXP;
		}
		
		public function set currentXP(value:int):void 
		{
			_currentXP = value;
		}
		
		public function get maxXP():int 
		{
			return _maxXP;
		}
		
		public function set maxXP(value:int):void 
		{
			_maxXP = value;
		}
		
		public function get speciesTitle():String 
		{
			return _speciesTitle;
		}
		
		public function set speciesTitle(value:String):void 
		{
			_speciesTitle = value;
		}
		
		public function get catchRate():int 
		{
			return _catchRate;
		}
		
		public function set catchRate(value:int):void 
		{
			_catchRate = value;
		}
		
		public function get genderRatio():Number
		{
			return _genderRatio;
		}
		
		public function set genderRatio(value:Number):void 
		{
			_genderRatio = value;
		}
		
		public function get xpRate():int 
		{
			return _xpRate;
		}
		
		public function set xpRate(value:int):void 
		{
			_xpRate = value;
		}
		
		public function get movepool():Vector.<Move> 
		{
			return _movepool;
		}
		
		public function set movepool(value:Vector.<Move>):void 
		{
			_movepool = value;
		}
		
		public function get moves():Vector.<Move> 
		{
			return _moves;
		}
		
		public function set moves(value:Vector.<Move>):void 
		{
			_moves = value;
		}
		
		public function get friendship():int 
		{
			return _friendship;
		}
		
		public function set friendship(value:int):void 
		{
			_friendship = value;
		}
		
		public function get battleXP():int 
		{
			return _battleXP;
		}
		
		public function set battleXP(value:int):void 
		{
			_battleXP = value;
		}
		
		public function get wildItemList():Vector.<Item> 
		{
			return _wildItemList;
		}
		
		public function set wildItemList(value:Vector.<Item>):void 
		{
			_wildItemList = value;
		}
		
		public function get level():int 
		{
			return _level;
		}
		
		public function set level(value:int):void 
		{
			_level = value;
		}
		
		public function get evolveTypes():Vector.<int> 
		{
			return _evolveTypes;
		}
		
		public function set evolveTypes(value:Vector.<int>):void 
		{
			_evolveTypes = value;
		}
		
		public function get evolveItems():Vector.<int> 
		{
			return _evolveItems;
		}
		
		public function set evolveItems(value:Vector.<int>):void 
		{
			_evolveItems = value;
		}
		
		public function get eggGroups():Vector.<int> 
		{
			return _eggGroups;
		}
		
		public function set eggGroups(value:Vector.<int>):void 
		{
			_eggGroups = value;
		}
		
		public function get self():int 
		{
			return _self;
		}
		
		public function set self(value:int):void 
		{
			_self = value;
		}
		
		public function get opponent():int 
		{
			return _opponent;
		}
		
		public function set opponent(value:int):void 
		{
			_opponent = value;
		}
		
		public function get currentHP():int 
		{
			return _currentHP;
		}
		
		public function set currentHP(value:int):void 
		{
			_currentHP = value;
		}
		
		public function get moveOrder():int 
		{
			return _moveOrder;
		}
		
		public function set moveOrder(value:int):void 
		{
			_moveOrder = value;
		}
		
	}

}