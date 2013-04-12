package game.pokemon
{
	/**
	 * ...
	 * @author Matthew
	 */
	import game.inventory.Item;
	import game.inventory.ItemHolder;
	
	public class PokemonHolder 
	{
		
		public function PokemonHolder() 
		{
		}
		
		public static function getBasePokemon(species:int):Pokemon
		{
			var pokemon:Pokemon = new Pokemon();
			pokemon.species = species;
			
			switch(species)
			{
				case Pokemon.VULPIX:
					pokemon.name = "Vulpix";
					pokemon.speciesName = "Vulpix";
					pokemon.speciesTitle = "Fox Pokemon";
					pokemon.height = .6;
					pokemon.weight = 9.9;
					pokemon.type = new <int>[Type.FIRE, Type.NONE];
					pokemon.baseStats = new <int>[38,41,40,50,65,65];
					pokemon.evYield = new <int>[0,0,0,0,0,1];
					pokemon.abilityList.push(Ability.FLASH_FIRE);
					pokemon.hiddenAbility = Ability.DROUGHT;
					pokemon.wildItemList.push(ItemHolder.getWildItem(Item.RAWST_BERRY, 1));
					pokemon.genderRatio = .25;
					pokemon.catchRate = 190;
					pokemon.xpRate = Pokemon.XP_MEDIUM_FAST;
					pokemon.battleXP = 63;
					pokemon.evolveLevel = 0;
					pokemon.evolveTypes.push(Pokemon.EVOLUTION_STONE);
					pokemon.evolveItems.push(Item.FIRE_STONE);
					pokemon.eggGroups.push(Pokemon.FIELD_GROUP);
					
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_START, Move.EMBER));
					pokemon.movepool.push(MoveHolder.getMove(4, Move.TAIL_WHIP));
					pokemon.movepool.push(MoveHolder.getMove(7, Move.ROAR));
					pokemon.movepool.push(MoveHolder.getMove(10, Move.QUICK_ATTACK));
					pokemon.movepool.push(MoveHolder.getMove(12, Move.FIRE_SPIN));
					pokemon.movepool.push(MoveHolder.getMove(15, Move.CONFUSE_RAY));
					pokemon.movepool.push(MoveHolder.getMove(18, Move.IMPRISON));
					pokemon.movepool.push(MoveHolder.getMove(20, Move.FAINT_ATTACK));
					pokemon.movepool.push(MoveHolder.getMove(23, Move.FLAME_BURST));
					pokemon.movepool.push(MoveHolder.getMove(26, Move.WILL_O_WISP));
					pokemon.movepool.push(MoveHolder.getMove(28, Move.HEX));
					pokemon.movepool.push(MoveHolder.getMove(31, Move.PAYBACK));
					pokemon.movepool.push(MoveHolder.getMove(34, Move.FLAMETHROWER));
					pokemon.movepool.push(MoveHolder.getMove(36, Move.SAFEGUARD));
					pokemon.movepool.push(MoveHolder.getMove(39, Move.EXTRASENSORY));
					pokemon.movepool.push(MoveHolder.getMove(42, Move.FIRE_BLAST));
					pokemon.movepool.push(MoveHolder.getMove(44, Move.GRUDGE));
					pokemon.movepool.push(MoveHolder.getMove(47, Move.CAPTIVATE));
					pokemon.movepool.push(MoveHolder.getMove(50, Move.INFERNO));
					
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.TOXIC));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.SUNNY_DAY));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.PROTECT));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.FRUSTRATION));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.RETURN));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.DIG));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.DOUBLE_TEAM));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.FACADE));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.FLAME_CHARGE));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.REST));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.ATTRACT));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.ROUND));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.OVERHEAT));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.ENERGY_BALL));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.PSYCH_UP));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.SWAGGER));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.SUBSTITUTE));
					
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_EGG, Move.DISABLE));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_EGG, Move.FLAIL));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_EGG, Move.HEAT_WAVE));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_EGG, Move.FLARE_BLITZ));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_EGG, Move.HOWL));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_EGG, Move.HYPNOSIS));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_EGG, Move.POWER_SWAP));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_EGG, Move.SECRET_POWER));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_EGG, Move.SPITE));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_EGG, Move.TAIL_SLAP));
					break;
					
				case Pokemon.NINETALES:
					pokemon.name = "Ninetales";
					pokemon.speciesName = "Ninetales";
					pokemon.speciesTitle = "Fox Pokemon";
					pokemon.height = 1.1;
					pokemon.weight = 19.9;
					pokemon.type = new <int>[Type.FIRE, Type.NONE];
					pokemon.baseStats = new <int>[73,76,75,81,100,100];
					pokemon.evYield = new <int>[0,0,0,0,1,1];
					pokemon.abilityList.push(Ability.FLASH_FIRE);
					pokemon.hiddenAbility = Ability.DROUGHT;
					pokemon.wildItemList.push(ItemHolder.getWildItem(Item.RAWST_BERRY, 1));
					pokemon.genderRatio = .25;
					pokemon.catchRate = 75;
					pokemon.xpRate = Pokemon.XP_MEDIUM_FAST;
					pokemon.battleXP = 178;
					pokemon.evolveLevel = 0;
					pokemon.evolveTypes.push(Pokemon.EVOLUTION_NONE);
					pokemon.eggGroups.push(Pokemon.FIELD_GROUP);
					
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_START, Move.NASTY_PLOT));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_START, Move.QUICK_ATTACK));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_START, Move.CONFUSE_RAY));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_START, Move.SAFEGUARD));
					
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.TOXIC));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.SUNNY_DAY));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.PROTECT));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.FRUSTRATION));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.RETURN));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.DIG));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.DOUBLE_TEAM));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.FACADE));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.FLAME_CHARGE));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.REST));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.ATTRACT));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.ROUND));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.OVERHEAT));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.ENERGY_BALL));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.PSYCH_UP));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.SWAGGER));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.SUBSTITUTE));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.PSYSHOCK));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.CALM_MIND));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.ROAR));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.HIDDEN_POWER));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.HYPER_BEAM));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.SOLARBEAM_CHARGE));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.GIGA_IMPACT));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.DREAM_EATER));
					break;
					
				case Pokemon.PHANPY:
					pokemon.name = "Phanpy";
					pokemon.speciesName = "Phanpy";
					pokemon.speciesTitle = "Long Nose Pokemon";
					pokemon.height = .5;
					pokemon.weight = 33.5;
					pokemon.type = new <int>[Type.GROUND, Type.NONE];
					pokemon.baseStats = new <int>[90, 60, 60, 40, 40, 40];
					pokemon.evYield = new <int>[1,0,0,0,0,0];
					pokemon.abilityList.push(Ability.PICKUP);
					pokemon.hiddenAbility = Ability.SAND_VEIL;
					pokemon.wildItemList.push(ItemHolder.getWildItem(Item.PASSHO_BERRY, .05));
					pokemon.genderRatio = .5;
					pokemon.catchRate = 120;
					pokemon.xpRate = Pokemon.XP_MEDIUM_FAST;
					pokemon.battleXP = 124;
					pokemon.evolveLevel = 25;
					pokemon.evolveTypes.push(Pokemon.EVOLUTION_LEVEL);
					pokemon.eggGroups.push(Pokemon.FIELD_GROUP);
					
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_START, Move.ODOR_SLEUTH));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_START, Move.TACKLE));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_START, Move.GROWL));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_START, Move.DEFENSE_CURL));
					pokemon.movepool.push(MoveHolder.getMove(6, Move.FLAIL));
					pokemon.movepool.push(MoveHolder.getMove(10, Move.TAKE_DOWN));
					pokemon.movepool.push(MoveHolder.getMove(15, Move.ROLLOUT));
					pokemon.movepool.push(MoveHolder.getMove(19, Move.NATURAL_GIFT));
					pokemon.movepool.push(MoveHolder.getMove(24, Move.SLAM));
					pokemon.movepool.push(MoveHolder.getMove(28, Move.ENDURE));
					pokemon.movepool.push(MoveHolder.getMove(33, Move.CHARM));
					pokemon.movepool.push(MoveHolder.getMove(37, Move.LAST_RESORT));
					pokemon.movepool.push(MoveHolder.getMove(42, Move.DOUBLE_EDGE));
					
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.ROAR));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.TOXIC));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.HIDDEN_POWER));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.SUNNY_DAY));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.PROTECT));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.FRUSTRATION));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.EARTHQUAKE));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.RETURN));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.DOUBLE_TEAM));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.SANDSTORM));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.ROCK_TOMB));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.FACADE));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.REST));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.ATTRACT));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.ROUND));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.ECHOED_VOICE));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.BULLDOZE));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.ROCK_SLIDE));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.SWAGGER));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.SUBSTITUTE));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.ROCK_SMASH));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.STRENGTH));
					
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_EGG, Move.ANCIENTPOWER));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_EGG, Move.BODY_SLAM));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_EGG, Move.COUNTER));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_EGG, Move.ENDEAVOR));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_EGG, Move.FISSURE));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_EGG, Move.FOCUS_ENERGY));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_EGG, Move.HEAD_SMASH));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_EGG, Move.HEAVY_SLAM));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_EGG, Move.ICE_SHARD));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_EGG, Move.MUD_SLAP));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_EGG, Move.SNORE));
					break;
					
				case Pokemon.DONPHAN:
					pokemon.name = "Donphan";
					pokemon.speciesName = "Donphan";
					pokemon.speciesTitle = "Armor Pokemon";
					pokemon.height = 1.1;
					pokemon.weight = 120;
					pokemon.type = new <int>[Type.GROUND, Type.NONE];
					pokemon.baseStats = new <int>[90, 120, 120, 60, 60, 50];
					pokemon.evYield = new <int>[0,1,1,0,0,0];
					pokemon.abilityList.push(Ability.STURDY);
					pokemon.hiddenAbility = Ability.SAND_VEIL;
					pokemon.genderRatio = .5;
					pokemon.catchRate = 120;
					pokemon.xpRate = Pokemon.XP_MEDIUM_FAST;
					pokemon.battleXP = 189;
					pokemon.evolveLevel = 0;
					pokemon.evolveTypes.push(Pokemon.EVOLUTION_NONE);
					pokemon.eggGroups.push(Pokemon.FIELD_GROUP);
					
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_START, Move.FIRE_FANG));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_START, Move.THUNDER_FANG));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_START, Move.HORN_ATTACK));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_START, Move.GROWL));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_START, Move.DEFENSE_CURL));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_START, Move.BULLDOZE));
					pokemon.movepool.push(MoveHolder.getMove(6, Move.RAPID_SPIN));
					pokemon.movepool.push(MoveHolder.getMove(10, Move.KNOCK_OFF));
					pokemon.movepool.push(MoveHolder.getMove(15, Move.ROLLOUT));
					pokemon.movepool.push(MoveHolder.getMove(19, Move.MAGNITUDE));
					pokemon.movepool.push(MoveHolder.getMove(24, Move.SLAM));
					pokemon.movepool.push(MoveHolder.getMove(25, Move.FURY_ATTACK));
					pokemon.movepool.push(MoveHolder.getMove(31, Move.ASSURANCE));
					pokemon.movepool.push(MoveHolder.getMove(39, Move.SCARY_FACE));
					pokemon.movepool.push(MoveHolder.getMove(46, Move.EARTHQUAKE));
					pokemon.movepool.push(MoveHolder.getMove(54, Move.GIGA_IMPACT));
					
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.ROAR))
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.TOXIC));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.HIDDEN_POWER));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.SUNNY_DAY));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.HYPER_BEAM));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.PROTECT));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.FRUSTRATION));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.EARTHQUAKE));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.RETURN));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.DOUBLE_TEAM));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.SANDSTORM));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.ROCK_TOMB));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.FACADE));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.REST));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.ATTRACT));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.ROUND));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.ECHOED_VOICE));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.GIGA_IMPACT));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.ROCK_POLISH));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.STONE_EDGE));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.GYRO_BALL));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.BULLDOZE));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.ROCK_SLIDE));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.POISON_JAB));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.SWAGGER));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.SUBSTITUTE));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.ROCK_SMASH));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.STRENGTH));
					break;
					
					case Pokemon.HOOTOOT:
					pokemon.name = "Hoothoot";
					pokemon.speciesName = "Hoothoot";
					pokemon.speciesTitle = "Owl Pokemon";
					pokemon.height = 0.7;
					pokemon.weight = 21.2;
					pokemon.type = new <int>[Type.NORMAL, Type.FLYING];
					pokemon.baseStats = new <int>[60, 30, 30, 36, 56, 50];
					pokemon.evYield = new <int>[1,0,0,0,0,0];
					pokemon.abilityList.push(Ability.INSOMNIA, Ability.KEEN_EYE);
					pokemon.hiddenAbility = Ability.TINTED_LENS;
					pokemon.genderRatio = .5;
					pokemon.catchRate = 255;
					pokemon.xpRate = Pokemon.XP_MEDIUM_FAST;
					pokemon.battleXP = 58;
					pokemon.evolveLevel = 20;
					pokemon.evolveTypes.push(Pokemon.EVOLUTION_LEVEL);
					pokemon.eggGroups.push(Pokemon.FLYING_GROUP);
					
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_START, Move.TACKLE));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_START, Move.GROWL));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_START, Move.FORESIGHT));
					pokemon.movepool.push(MoveHolder.getMove(5, Move.HYPNOSIS));
					pokemon.movepool.push(MoveHolder.getMove(9, Move.PECK));
					pokemon.movepool.push(MoveHolder.getMove(13, Move.UPROAR));
					pokemon.movepool.push(MoveHolder.getMove(17, Move.REFLECT));
					pokemon.movepool.push(MoveHolder.getMove(21, Move.CONFUSION));
					pokemon.movepool.push(MoveHolder.getMove(25, Move.ECHOED_VOICE));
					pokemon.movepool.push(MoveHolder.getMove(29, Move.TAKE_DOWN));
					pokemon.movepool.push(MoveHolder.getMove(33, Move.AIR_SLASH));
					pokemon.movepool.push(MoveHolder.getMove(37, Move.ZEN_HEADBUTT));
					pokemon.movepool.push(MoveHolder.getMove(41, Move.SYNCHRONOISE));
					pokemon.movepool.push(MoveHolder.getMove(45, Move.EXTRASENSORY));
					pokemon.movepool.push(MoveHolder.getMove(49, Move.PSYCHO_SHIFT));
					pokemon.movepool.push(MoveHolder.getMove(53, Move.ROOST));
					pokemon.movepool.push(MoveHolder.getMove(57, Move.DREAM_EATER));
					
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.TOXIC));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.HIDDEN_POWER));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.SUNNY_DAY));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.PROTECT));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.RAIN_DANCE));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.FRUSTRATION));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.RETURN));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.PSYCHIC));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.SHADOW_BALL));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.DOUBLE_TEAM));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.REFLECT));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.AERIAL_ACE));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.FACADE));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.REST));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.ATTRACT));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.THIEF));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.ROUND));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.ECHOED_VOICE));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.PSYCH_UP));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.WORK_UP));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.DREAM_EATER));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.SWAGGER));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.PLUCK));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.SUBSTITUTE));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.FLY));
					
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_EGG, Move.AGILITY));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_EGG, Move.DEFOG));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_EGG, Move.FAINT_ATTACK));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_EGG, Move.FEATHERDANCE));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_EGG, Move.MIRROR_MOVE));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_EGG, Move.NIGHT_SHADE));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_EGG, Move.SKY_ATTACK));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_EGG, Move.SUPERSONIC));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_EGG, Move.WHIRLWIND));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_EGG, Move.WING_ATTACK));
					
					break;
					
					case Pokemon.NOCTOWL:
					pokemon.name = "Noctowl";
					pokemon.speciesName = "Noctowl";
					pokemon.speciesTitle = "Owl Pokemon";
					pokemon.height = 1.6;
					pokemon.weight = 40.8;
					pokemon.type = new <int>[Type.NORMAL, Type.FLYING];
					pokemon.baseStats = new <int>[100, 50, 60, 76, 96, 70];
					pokemon.evYield = new <int>[2,0,0,0,0,0];
					pokemon.abilityList.push(Ability.INSOMNIA, Ability.KEEN_EYE);
					pokemon.hiddenAbility = Ability.TINTED_LENS;
					pokemon.genderRatio = .5;
					pokemon.catchRate = 90;
					pokemon.xpRate = Pokemon.XP_MEDIUM_FAST;
					pokemon.battleXP = 162;
					pokemon.evolveLevel = 0;
					pokemon.evolveTypes.push(Pokemon.EVOLUTION_NONE);
					pokemon.eggGroups.push(Pokemon.FLYING_GROUP);
					
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_START, Move.SKY_ATTACK));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_START, Move.TACKLE));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_START, Move.GROWL));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_START, Move.FORESIGHT));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_START, Move.HYPNOSIS));
					pokemon.movepool.push(MoveHolder.getMove(5, Move.HYPNOSIS));
					pokemon.movepool.push(MoveHolder.getMove(9, Move.PECK));
					pokemon.movepool.push(MoveHolder.getMove(13, Move.UPROAR));
					pokemon.movepool.push(MoveHolder.getMove(17, Move.REFLECT));
					pokemon.movepool.push(MoveHolder.getMove(22, Move.CONFUSION));
					pokemon.movepool.push(MoveHolder.getMove(27, Move.ECHOED_VOICE));
					pokemon.movepool.push(MoveHolder.getMove(32, Move.TAKE_DOWN));
					pokemon.movepool.push(MoveHolder.getMove(37, Move.AIR_SLASH));
					pokemon.movepool.push(MoveHolder.getMove(42, Move.ZEN_HEADBUTT));
					pokemon.movepool.push(MoveHolder.getMove(47, Move.SYNCHRONOISE));
					pokemon.movepool.push(MoveHolder.getMove(52, Move.EXTRASENSORY));
					pokemon.movepool.push(MoveHolder.getMove(57, Move.PSYCHO_SHIFT));
					pokemon.movepool.push(MoveHolder.getMove(62, Move.ROOST));
					pokemon.movepool.push(MoveHolder.getMove(67, Move.DREAM_EATER));
					
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.TOXIC));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.HIDDEN_POWER));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.SUNNY_DAY));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.HYPER_BEAM));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.PROTECT));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.RAIN_DANCE));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.FRUSTRATION));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.RETURN));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.PSYCHIC));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.SHADOW_BALL));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.DOUBLE_TEAM));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.REFLECT));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.AERIAL_ACE));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.FACADE));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.REST));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.ATTRACT));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.THIEF));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.ROUND));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.ECHOED_VOICE));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.GIGA_IMPACT));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.PSYCH_UP));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.WORK_UP));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.DREAM_EATER));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.SWAGGER));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.PLUCK));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.SUBSTITUTE));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.FLY));
					
					
					break;
					
					
					case Pokemon.SANDSHREW:
					pokemon.name = "Sandshrew";
					pokemon.speciesName = "Sandshrew";
					pokemon.speciesTitle = "Mouse Pokemon";
					pokemon.height = 0.6;
					pokemon.weight = 12.0;
					pokemon.type = new <int>[Type.GROUND, Type.NONE];
					pokemon.baseStats = new <int>[50,75,85,20,30,40];
					pokemon.evYield = new <int>[0,0,1,0,0,0];
					pokemon.abilityList.push(Ability.SAND_VEIL);
					pokemon.hiddenAbility = Ability.SAND_RUSH;
					pokemon.genderRatio = .5;
					pokemon.catchRate = 255;
					pokemon.xpRate = Pokemon.XP_MEDIUM_FAST;
					pokemon.battleXP = 93;
					pokemon.evolveLevel = 22;
					pokemon.evolveTypes.push(Pokemon.EVOLUTION_LEVEL);
					pokemon.eggGroups.push(Pokemon.FIELD_GROUP);
					
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_START, Move.SCRATCH));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_START, Move.DEFENSE_CURL));
					pokemon.movepool.push(MoveHolder.getMove(5, Move.SAND_ATTACK));
					pokemon.movepool.push(MoveHolder.getMove(9, Move.POISON_STING));
					pokemon.movepool.push(MoveHolder.getMove(13, Move.ROLLOUT));
					pokemon.movepool.push(MoveHolder.getMove(17, Move.RAPID_SPIN));
					pokemon.movepool.push(MoveHolder.getMove(21, Move.SWIFT));
					pokemon.movepool.push(MoveHolder.getMove(25, Move.FURY_CUTTER));
					pokemon.movepool.push(MoveHolder.getMove(29, Move.MAGNITUDE));
					pokemon.movepool.push(MoveHolder.getMove(33, Move.FURY_SWIPES));
					pokemon.movepool.push(MoveHolder.getMove(37, Move.SAND_TOMB));
					pokemon.movepool.push(MoveHolder.getMove(41, Move.SLASH));
					pokemon.movepool.push(MoveHolder.getMove(45, Move.DIG));
					pokemon.movepool.push(MoveHolder.getMove(49, Move.GYRO_BALL));
					pokemon.movepool.push(MoveHolder.getMove(53, Move.SWORDS_DANCE));
					pokemon.movepool.push(MoveHolder.getMove(57, Move.SANDSTORM));
					pokemon.movepool.push(MoveHolder.getMove(57, Move.EARTHQUAKE));
					
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.HONE_CLAWS));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.TOXIC));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.HIDDEN_POWER));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.SUNNY_DAY));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.PROTECT));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.SAFEGUARD));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.FRUSTRATION));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.EARTHQUAKE));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.RETURN));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.DIG));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.BRICK_BREAK));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.DOUBLE_TEAM));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.SANDSTORM));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.ROCK_TOMB));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.AERIAL_ACE));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.FACADE));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.REST));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.ATTRACT));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.THIEF));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.ROUND));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.FLING));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.SHADOW_CLAW));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.GYRO_BALL));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.SWORDS_DANCE));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.BULLDOZE));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.ROCK_SLIDE));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.XSCISSOR));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.POISON_JAB));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.SWAGGER));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.SUBSTITUTE));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.ROCK_SMASH));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.CUT));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_TM, Move.STRENGTH));
					
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_EGG, Move.CHIP_AWAY));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_EGG, Move.COUNTER));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_EGG, Move.CRUSH_CLAW));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_EGG, Move.ENDURE));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_EGG, Move.FLAIL));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_EGG, Move.METAL_CLAW));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_EGG, Move.MUD_SHOT));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_EGG, Move.NIGHT_SLASH));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_EGG, Move.RAPID_SPIN));
					pokemon.movepool.push(MoveHolder.getMove(Move.LEARN_EGG, Move.ROCK_CLIMB));
					
					break;
					
			}
			
			return pokemon;
		}
		
	}

}