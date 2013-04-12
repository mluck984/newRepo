package game.pokemon
{
	/**
	 * ...
	 * @author Matthew
	 */
	public class MoveHolder 
	{
		
		
		public function MoveHolder() 
		{
		}
		
		public static function getMove(lvl:int, num:int):Move
		{
			var move:Move = getBaseMove(num);
			move.level = lvl;
			move.currentPP = move.pp;
			return move;
		}
		
		public static function getBaseMove(num:int):Move
		{
			var move:Move = new Move();
			move.moveID = num;
			
			switch(num)
			{
				case Move.EMBER:
					move.moveName = "Ember";
					move.desc = "The target is attacked with small flames. It may also leave the target with a burn.";
					move.type = Type.FIRE;
					move.category = Move.SPECIAL;
					move.power = 40;
					move.damageType = Move.NORMAL_DAMAGE;
					move.accuracy = 1;
					move.effects.push(new Effect(Effect.STATUS, Status.BURN, Move.OPPONENT, .1));
					move.target = Move.OPPONENT;
					move.pp = 25;
					move.priority = 0;
					move.recoil = 0;
					move.contact = false;
					move.protect = true;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.TAIL_WHIP:
					move.moveName = "Tail Whip";
					move.desc = "The user wags its tail cutely, making opposing Pokémon less wary and lowering their Defense stat.";
					move.type = Type.NORMAL;
					move.category = Move.STATUS;
					move.power = 0;
					move.damageType = Move.NO_DAMAGE;
					move.accuracy = 1;
					move.effects.push(new Effect(Effect.STAT_MOD, 0, Move.OPPONENT, 1, new <int>[0,0,-1,0,0,0,0,0,0]));
					move.target = Move.OPPONENT;
					move.pp = 30;
					move.priority = 0;
					move.recoil = 0;
					move.contact = false;
					move.protect = true;
					move.magicCoat = true;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.ROAR:
					move.moveName = "Roar";
					move.desc = "The target is scared off and replaced by another Pokémon in its party. In the wild, the battle ends.";
					move.type = Type.NORMAL;
					move.category = Move.STATUS;
					move.power = 0;
					move.damageType = Move.NO_DAMAGE;
					move.accuracy = 1;
					move.target = Move.OPPONENT;
					move.pp = 20;
					move.priority = -6;
					move.recoil = 0;
					move.contact = false;
					move.protect = true;
					move.magicCoat = true;
					move.snatch = false;
					move.sound = true;
					move.forcesSwitch = Move.SWITCH_OPPONENT;
					break;
					
				case Move.QUICK_ATTACK:
					move.moveName = "Quick Attack";
					move.desc = "The user lunges at the target at a speed that makes it almost invisible. It is sure to strike first.";
					move.type = Type.NORMAL;
					move.category = Move.PHYSICAL;
					move.power = 40;
					move.damageType = Move.NORMAL_DAMAGE;
					move.accuracy = 1;
					move.target = Move.OPPONENT;
					move.pp = 30;
					move.priority = 1;
					move.recoil = 0;
					move.contact = true;
					move.protect = true;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.FIRE_SPIN:
					move.moveName = "Fire Spin";
					move.desc = "The target becomes trapped within a fierce vortex of fire that rages for four to five turns.";
					move.type = Type.FIRE;
					move.category = Move.SPECIAL;
					move.power = 35;
					move.damageType = Move.NORMAL_DAMAGE;
					move.accuracy = .85;
					move.effects.push(new Effect(Effect.STATUS, Status.PARTIALLY_TRAPPED, Move.OPPONENT, 1));
					move.target = Move.OPPONENT;
					move.pp = 15;
					move.priority = 0;
					move.recoil = 0;
					move.contact = false;
					move.protect = true;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.CONFUSE_RAY:
					move.moveName = "Confuse Ray";
					move.desc = "The target is exposed to a sinister ray that triggers confusion.";
					move.type = Type.GHOST;
					move.category = Move.STATUS;
					move.power = 0;
					move.damageType = Move.NO_DAMAGE;
					move.accuracy = 1;
					move.effects.push(new Effect(Effect.STATUS, Status.CONFUSION, Move.OPPONENT, 1));
					move.target = Move.OPPONENT;
					move.pp = 10;
					move.priority = 0;
					move.recoil = 0;
					move.contact = false;
					move.protect = true;
					move.magicCoat = true;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.IMPRISON:
					move.moveName = "Imprison";
					move.desc = "If the foe knows any move also known by the user, the foe is prevented from using it.";
					move.type = Type.PSYCHIC;
					move.category = Move.STATUS;
					move.power = 0;
					move.damageType = Move.NO_DAMAGE;
					move.accuracy = Move.PERFECT_ACCURACY;
					move.effects.push(new Effect(Effect.STATUS, Status.IMPRISON, Move.OPPONENT, 1));
					move.target = Move.OPPONENT;
					move.pp = 10;
					move.priority = 0;
					move.recoil = 0;
					move.contact = false;
					move.protect = false;
					move.magicCoat = false;
					move.snatch = true;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.FAINT_ATTACK:
					move.moveName = "Faint Attack";
					move.desc = "The user approaches the target disarmingly, then throws a sucker punch. It hits without fail.";
					move.type = Type.DARK;
					move.category = Move.PHYSICAL;
					move.power = 60;
					move.damageType = Move.NORMAL_DAMAGE;
					move.accuracy = Move.PERFECT_ACCURACY;
					move.target = Move.OPPONENT;
					move.pp = 20;
					move.priority = 0;
					move.recoil = 0;
					move.contact = true;
					move.protect = true;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.FLAME_BURST:
					move.moveName = "Flame Burst";
					move.desc = "The user attacks the target with a bursting flame.";
					move.type = Type.FIRE;
					move.category = Move.SPECIAL;
					move.power = 70;
					move.damageType = Move.NORMAL_DAMAGE;
					move.accuracy = 1;
					move.target = Move.OPPONENT;
					move.pp = 15;
					move.priority = 0;
					move.recoil = 0;
					move.contact = false;
					move.protect = true;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.WILL_O_WISP:
					move.moveName = "Will-O-Wisp";
					move.desc = "The user shoots a sinister, bluish-white flame at the target to inflict a burn.";
					move.type = Type.FIRE;
					move.category = Move.STATUS;
					move.power = 0;
					move.damageType = Move.NO_DAMAGE;
					move.accuracy = .75;
					move.effects.push(new Effect(Effect.STATUS, Status.BURN, Move.OPPONENT, 1));
					move.target = Move.OPPONENT;
					move.pp = 15;
					move.priority = 0;
					move.recoil = 0;
					move.contact = false;
					move.protect = true;
					move.magicCoat = true;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.HEX:
					move.moveName = "Hex";
					move.desc = "This relentless attack does massive damage to a target affected by status problems.";
					move.type = Type.GHOST;
					move.category = Move.SPECIAL;
					move.power = 50;
					move.damageType = Move.VARIABLE_DAMAGE;
					move.accuracy = 1;
					move.target = Move.OPPONENT;
					move.pp = 10;
					move.priority = 0;
					move.recoil = 0;
					move.contact = false;
					move.protect = true;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.PAYBACK:
					move.moveName = "Payback";
					move.desc = "The user stores power, then attacks. If the user can use this attack after the target, its power is doubled.";
					move.type = Type.DARK;
					move.category = Move.PHYSICAL;
					move.power = 50;
					move.damageType = Move.VARIABLE_DAMAGE;
					move.accuracy = 1;
					move.target = Move.OPPONENT;
					move.pp = 10;
					move.priority = 0;
					move.recoil = 0;
					move.contact = true;
					move.protect = true;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.FLAMETHROWER:
					move.moveName = "Flamethrower";
					move.desc = "The target is scorched with an intense blast of fire. It may also leave the target with a burn.";
					move.type = Type.FIRE;
					move.category = Move.SPECIAL;
					move.power = 95;
					move.damageType = Move.NORMAL_DAMAGE;
					move.accuracy = 1;
					move.effects.push(new Effect(Effect.STATUS, Status.BURN, Move.OPPONENT, .1));
					move.target = Move.OPPONENT;
					move.pp = 15;
					move.priority = 0;
					move.recoil = 0;
					move.contact = false;
					move.protect = true;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.SAFEGUARD:
					move.moveName = "Safeguard";
					move.desc = "The user creates a protective field that prevents status problems for five turns.";
					move.type = Type.NORMAL;
					move.category = Move.STATUS;
					move.power = 0;
					move.damageType = Move.NO_DAMAGE;
					move.accuracy = Move.PERFECT_ACCURACY;
					move.effects.push(new Effect(Effect.FIELD_EFFECT, FieldEffect.SAFEGUARD, Move.SELF, 1));
					move.target = Move.SELF;
					move.pp = 25;
					move.priority = 0;
					move.recoil = 0;
					move.contact = false;
					move.protect = false;
					move.magicCoat = false;
					move.snatch = true;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.EXTRASENSORY:
					move.moveName = "Extrasensory";
					move.desc = "The user attacks with an odd, unseeable power. It may also make the target flinch.";
					move.type = Type.PSYCHIC;
					move.category = Move.SPECIAL;
					move.power = 80;
					move.damageType = Move.NORMAL_DAMAGE;
					move.accuracy = 1;
					move.effects.push(new Effect(Effect.STATUS, Status.FLINCH, Move.OPPONENT, .1));
					move.target = Move.OPPONENT;
					move.pp = 30;
					move.priority = 0;
					move.recoil = 0;
					move.contact = false;
					move.protect = true;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.FIRE_BLAST:
					move.moveName = "Fire Blast";
					move.desc = "The target is attacked with an intense blast of all-consuming fire. It may also leave the target with a burn.";
					move.type = Type.FIRE;
					move.category = Move.SPECIAL;
					move.power = 120;
					move.damageType = Move.NORMAL_DAMAGE;
					move.accuracy = .85;
					move.effects.push(new Effect(Effect.STATUS, Status.BURN, Move.OPPONENT, .1));
					move.target = Move.OPPONENT;
					move.pp = 5;
					move.priority = 0;
					move.recoil = 0;
					move.contact = false;
					move.protect = true;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.GRUDGE:
					move.moveName = "Grudge";
					move.desc = "If the user faints, the user's grudge fully depletes the PP of the opponent's move that knocked it out.";
					move.type = Type.GHOST;
					move.category = Move.STATUS;
					move.power = 0;
					move.damageType = Move.NO_DAMAGE;
					move.accuracy = Move.PERFECT_ACCURACY;
					move.effects.push(new Effect(Effect.STATUS, Status.GRUDGE, Move.SELF, .1));
					move.target = Move.SELF;
					move.pp = 5;
					move.priority = 0;
					move.recoil = 0;
					move.contact = false;
					move.protect = false;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.CAPTIVATE:
					move.moveName = "Captivate";
					move.desc = "If it is the opposite gender of the user, the target is charmed into harshly lowering its Sp. Atk stat.";
					move.type = Type.NORMAL;
					move.category = Move.STATUS;
					move.power = 0;
					move.damageType = Move.NO_DAMAGE;
					move.accuracy = Move.PERFECT_ACCURACY;
					move.effects.push(new Effect(Effect.STAT_MOD, 0, Move.OPPONENT, 1, new <int>[0,0,0,-2,0,0,0,0,0]));
					move.target = Move.OPPONENT;
					move.pp = 20;
					move.priority = 0;
					move.recoil = 0;
					move.contact = false;
					move.protect = true;
					move.magicCoat = true;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.INFERNO:
					move.moveName = "Inferno";
					move.desc = "The user attacks by engulfing the target in an intense fire. It leaves the target with a burn.";
					move.type = Type.FIRE;
					move.category = Move.SPECIAL;
					move.power = 100;
					move.damageType = Move.NORMAL_DAMAGE;
					move.accuracy = .5;
					move.effects.push(new Effect(Effect.STATUS, Status.BURN, Move.OPPONENT, 1));
					move.target = Move.OPPONENT;
					move.pp = 5;
					move.priority = 0;
					move.recoil = 0;
					move.contact = false;
					move.protect = true;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.NASTY_PLOT:
					move.moveName = "Nasty Plot";
					move.desc = "The user stimulates its brain by thinking bad thoughts. It sharply raises the user’s Sp. Atk.";
					move.type = Type.DARK;
					move.category = Move.STATUS;
					move.power = 0;
					move.damageType = Move.NO_DAMAGE;
					move.accuracy = Move.PERFECT_ACCURACY;
					move.effects.push(new Effect(Effect.STAT_MOD, 0, Move.SELF, 1, new <int>[0,0,0,2,0,0,0,0,0]));
					move.target = Move.SELF;
					move.pp = 20;
					move.priority = 0;
					move.recoil = 0;
					move.contact = false;
					move.protect = false;
					move.magicCoat = false;
					move.snatch = true;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.TOXIC:
					move.moveName = "Toxic";
					move.desc = "A move that leaves the target badly poisoned. Its poison damage worsens every turn.";
					move.type = Type.POISON;
					move.category = Move.STATUS;
					move.power = 0;
					move.damageType = Move.NO_DAMAGE;
					move.accuracy = .9;
					move.effects.push(new Effect(Effect.STATUS, Status.POISON_TOXIC, Move.OPPONENT, 1));
					move.target = Move.OPPONENT;
					move.pp = 10;
					move.priority = 0;
					move.recoil = 0;
					move.contact = false;
					move.protect = true;
					move.magicCoat = true;
					move.snatch = true;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.SUNNY_DAY:
					move.moveName = "Sunny Day";
					move.desc = "The user intensifies the sun for five turns, powering up Fire-type moves.";
					move.type = Type.FIRE;
					move.category = Move.STATUS;
					move.power = 0;
					move.damageType = Move.NO_DAMAGE;
					move.accuracy = Move.PERFECT_ACCURACY;
					move.effects.push(new Effect(Effect.FIELD_EFFECT, FieldEffect.INTENSE_SUNLIGHT, Move.SELF, 1));
					move.target = Move.SELF;
					move.pp = 5;
					move.priority = 0;
					move.recoil = 0;
					move.contact = false;
					move.protect = false;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.PROTECT:
					move.moveName = "Protect";
					move.desc = "It enables the user to evade all attacks. Its chance of failing rises if it is used in succession.";
					move.type = Type.NORMAL;
					move.category = Move.STATUS;
					move.power = 0;
					move.damageType = Move.NO_DAMAGE;
					move.accuracy = Move.PERFECT_ACCURACY;
					move.effects.push(new Effect(Effect.STATUS, Status.PROTECT, Move.SELF, 1));
					move.target = Move.SELF;
					move.pp = 10;
					move.priority = 4;
					move.recoil = 0;
					move.contact = false;
					move.protect = false;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.FRUSTRATION:
					move.moveName = "Frustration";
					move.desc = "A full-power attack that grows more powerful the less the user likes its Trainer.";
					move.type = Type.NORMAL;
					move.category = Move.PHYSICAL;
					move.power = 0;
					move.damageType = Move.VARIABLE_DAMAGE;
					move.accuracy = 1;
					move.target = Move.OPPONENT;
					move.pp = 20;
					move.priority = 0;
					move.recoil = 0;
					move.contact = true;
					move.protect = true;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.RETURN:
					move.moveName = "Return";
					move.desc = "A full-power attack that grows more powerful the more the user likes its Trainer.";
					move.type = Type.NORMAL;
					move.category = Move.PHYSICAL;
					move.power = 0;
					move.damageType = Move.VARIABLE_DAMAGE;
					move.accuracy = 1;
					move.target = Move.OPPONENT;
					move.pp = 20;
					move.priority = 0;
					move.recoil = 0;
					move.contact = true;
					move.protect = true;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.DIG:
					move.moveName = "Dig";
					move.desc = "The user burrows, then attacks on the second turn. It can also be used to exit dungeons.";
					move.type = Type.GROUND;
					move.category = Move.PHYSICAL;
					move.power = 80;
					move.damageType = Move.NORMAL_DAMAGE;
					move.accuracy = 1;
					move.effects.push(new Effect(Effect.STATUS, Status.SEMI_INVULNERABLE_DIG, Move.SELF, 1));
					move.target = Move.OPPONENT;
					move.pp = 10;
					move.priority = 0;
					move.recoil = 0;
					move.contact = true;
					move.protect = true;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.DOUBLE_TEAM:
					move.moveName = "Double Team";
					move.desc = "By moving rapidly, the user makes illusory copies of itself to raise its evasiveness.";
					move.type = Type.NORMAL;
					move.category = Move.STATUS;
					move.power = 0;
					move.damageType = Move.NO_DAMAGE;
					move.accuracy = Move.PERFECT_ACCURACY;
					move.effects.push(new Effect(Effect.STAT_MOD, 0, Move.SELF, 1, new <int>[0,0,0,0,0,0,0,1,0]));
					move.target = Move.SELF;
					move.pp = 15;
					move.priority = 0;
					move.recoil = 0;
					move.contact = false;
					move.protect = false;
					move.magicCoat = false;
					move.snatch = true;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.FACADE:
					move.moveName = "Facade";
					move.desc = "An attack move that doubles its power if the user is poisoned, burned, or has paralysis.";
					move.type = Type.NORMAL;
					move.category = Move.PHYSICAL;
					move.power = 70;
					move.damageType = Move.VARIABLE_DAMAGE;
					move.accuracy = 1;
					move.target = Move.OPPONENT;
					move.pp = 20;
					move.priority = 0;
					move.recoil = 0;
					move.contact = true;
					move.protect = true;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.FLAME_CHARGE:
					move.moveName = "Flame Charge";
					move.desc = "The user cloaks itself with flame and attacks. Building up more power, it raises the user's Speed stat.";
					move.type = Type.FIRE;
					move.category = Move.PHYSICAL;
					move.power = 50;
					move.damageType = Move.NORMAL_DAMAGE;
					move.accuracy = 1;
					move.effects.push(new Effect(Effect.STAT_MOD, 0, Move.SELF, 1, new <int>[0,0,0,0,0,1,0,0,0]));
					move.target = Move.OPPONENT;
					move.pp = 20;
					move.priority = 0;
					move.recoil = 0;
					move.contact = true;
					move.protect = true;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.REST:
					move.moveName = "Rest";
					move.desc = "The user goes to sleep for two turns. It fully restores the user’s HP and heals any status problem.";
					move.type = Type.PSYCHIC;
					move.category = Move.STATUS;
					move.power = 0;
					move.damageType = Move.NO_DAMAGE;
					move.accuracy = Move.PERFECT_ACCURACY;
					move.effects.push(new Effect(Effect.RESTORE_PERCENTILE, 1, Move.SELF, 1));
					move.effects.push(new Effect(Effect.CURE, Status.ALL_STATUSES, Move.SELF, 1));
					move.effects.push(new Effect(Effect.STATUS, Status.SLEEP_REST, Move.SELF, 1));
					move.target = Move.SELF;
					move.pp = 10;
					move.priority = 0;
					move.recoil = 0;
					move.contact = false;
					move.protect = false;
					move.magicCoat = false;
					move.snatch = true;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.ATTRACT:
					move.moveName = "Attract";
					move.desc = "If it is the opposite gender of the user, the target becomes infatuated and less likely to attack.";
					move.type = Type.NORMAL;
					move.category = Move.STATUS;
					move.power = 0;
					move.damageType = Move.NO_DAMAGE;
					move.accuracy = Move.PERFECT_ACCURACY;
					move.effects.push(new Effect(Effect.STATUS, Status.INFATUATION, Move.OPPONENT, 1));
					move.target = Move.OPPONENT;
					move.pp = 15;
					move.priority = 0;
					move.recoil = 0;
					move.contact = false;
					move.protect = true;
					move.magicCoat = true;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.ROUND:
					move.moveName = "Round";
					move.desc = "The user attacks the target with a song.";
					move.type = Type.NORMAL;
					move.category = Move.SPECIAL;
					move.power = 60;
					move.damageType = Move.NORMAL_DAMAGE;
					move.accuracy = 1;
					move.target = Move.OPPONENT;
					move.pp = 15;
					move.priority = 0;
					move.recoil = 0;
					move.contact = false;
					move.protect = true;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = true;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.OVERHEAT:
					move.moveName = "Overheat";
					move.desc = "The user attacks the target at full power. The attack's recoil harshly reduces the user's Sp. Atk stat.";
					move.type = Type.FIRE;
					move.category = Move.SPECIAL;
					move.power = 140;
					move.damageType = Move.NORMAL_DAMAGE;
					move.accuracy = .9;
					move.effects.push(new Effect(Effect.STAT_MOD, 0, Move.SELF, 1, new <int>[0,0,0,-2,0,0,0,0,0]));
					move.target = Move.OPPONENT;
					move.pp = 5;
					move.priority = 0;
					move.recoil = 0;
					move.contact = false;
					move.protect = true;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.ENERGY_BALL:
					move.moveName = "Energy Ball";
					move.desc = "The user draws power from nature and fires it at the target. It may also lower the target's Sp. Def.";
					move.type = Type.GRASS;
					move.category = Move.SPECIAL;
					move.power = 80;
					move.damageType = Move.NORMAL_DAMAGE;
					move.accuracy = 1;
					move.effects.push(new Effect(Effect.STAT_MOD, 0, Move.OPPONENT, .1, new <int>[0,0,0,0,-1,0,0,0,0]));
					move.target = Move.OPPONENT;
					move.pp = 10;
					move.priority = 0;
					move.recoil = 0;
					move.contact = false;
					move.protect = true;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.PSYCH_UP:
					move.moveName = "Psych Up";
					move.desc = "The user hypnotizes itself into copying any stat change made by the target.";
					move.type = Type.NORMAL;
					move.category = Move.STATUS;
					move.power = 0;
					move.damageType = Move.NO_DAMAGE;
					move.accuracy = Move.PERFECT_ACCURACY;
					move.effects.push(new Effect(Effect.COPY_STAT_CHANGES, 0, Move.SELF, 1));
					move.target = Move.SELF;
					move.pp = 10;
					move.priority = 0;
					move.recoil = 0;
					move.contact = false;
					move.protect = false;
					move.magicCoat = false;
					move.snatch = true;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.SWAGGER:
					move.moveName = "Swagger";
					move.desc = "The user enrages and confuses the target. However, it also sharply raises the target's Attack stat.";
					move.type = Type.NORMAL;
					move.category = Move.STATUS;
					move.power = 0;
					move.damageType = Move.NO_DAMAGE;
					move.accuracy = .9;
					move.effects.push(new Effect(Effect.STAT_MOD, 0, Move.OPPONENT, 1, new <int>[0,2,0,0,0,0,0,0,0]));
					move.effects.push(new Effect(Effect.STATUS, Status.CONFUSION, Move.OPPONENT, 1));
					move.target = Move.OPPONENT;
					move.pp = 15;
					move.priority = 0;
					move.recoil = 0;
					move.contact = false;
					move.protect = true;
					move.magicCoat = true;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.SUBSTITUTE:
					move.moveName = "Substitute";
					move.desc = "The user makes a copy of itself using some of its HP. The copy serves as the user’s decoy.";
					move.type = Type.NORMAL;
					move.category = Move.STATUS;
					move.power = 0;
					move.damageType = Move.NO_DAMAGE;
					move.accuracy = Move.PERFECT_ACCURACY;
					move.effects.push(new Effect(Effect.STATUS, Status.SUBSTITUTE, Move.SELF, 1));
					move.target = Move.SELF;
					move.pp = 10;
					move.priority = 0;
					move.recoil = 0;
					move.contact = false;
					move.protect = false;
					move.magicCoat = false;
					move.snatch = true;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.DISABLE:
					move.moveName = "Disable";
					move.desc = "For four turns, this move prevents the target from using the move it last used.";
					move.type = Type.NORMAL;
					move.category = Move.STATUS;
					move.power = 0;
					move.damageType = Move.NO_DAMAGE;
					move.accuracy = 1;
					move.effects.push(new Effect(Effect.STATUS, Status.DISABLED, Move.OPPONENT, 1));
					move.target = Move.OPPONENT;
					move.pp = 20;
					move.priority = 0;
					move.recoil = 0;
					move.contact = false;
					move.protect = true;
					move.magicCoat = true;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.FLAIL:
					move.moveName = "Flail";
					move.desc = "The user flails about aimlessly to attack. It becomes more powerful the less HP the user has.";
					move.type = Type.NORMAL;
					move.category = Move.PHYSICAL;
					move.power = 0;
					move.damageType = Move.VARIABLE_DAMAGE;
					move.accuracy = 1;
					move.target = Move.OPPONENT;
					move.pp = 15;
					move.priority = 0;
					move.recoil = 0;
					move.contact = true;
					move.protect = true;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.FLARE_BLITZ:
					move.moveName = "Flare Blitz";
					move.desc = "The user cloaks itself in fire and charges at the target. The user sustains serious damage and may leave the target burned.";
					move.type = Type.FIRE;
					move.category = Move.PHYSICAL;
					move.power = 120;
					move.damageType = Move.NORMAL_DAMAGE;
					move.accuracy = 1;
					move.effects.push(new Effect(Effect.STATUS, Status.BURN, Move.OPPONENT, .1));
					move.target = Move.OPPONENT;
					move.pp = 15;
					move.priority = 0;
					move.recoil = 1 / 2;
					move.contact = true;
					move.protect = true;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.HEAT_WAVE:
					move.moveName = "Heat Wave";
					move.desc = "The user attacks by exhaling hot breath. It may also leave targets with a burn.";
					move.type = Type.FIRE;
					move.category = Move.SPECIAL;
					move.power = 100;
					move.damageType = Move.NORMAL_DAMAGE;
					move.accuracy = .9;
					move.effects.push(new Effect(Effect.STATUS, Status.BURN, Move.OPPONENT, .1));
					move.target = Move.OPPONENT;
					move.pp = 10;
					move.priority = 0;
					move.recoil = 0;
					move.contact = false;
					move.protect = true;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.HOWL:
					move.moveName = "Howl";
					move.desc = "The user howls loudly to raise its spirit, boosting its Attack stat.";
					move.type = Type.NORMAL;
					move.category = Move.STATUS;
					move.power = 0;
					move.damageType = Move.NO_DAMAGE;
					move.accuracy = Move.PERFECT_ACCURACY;
					move.effects.push(new Effect(Effect.STAT_MOD, 0, Move.SELF, 1, new <int>[0,1,0,0,0,0,0,0,0]));
					move.target = Move.SELF;
					move.pp = 40;
					move.priority = 0;
					move.recoil = 0;
					move.contact = false;
					move.protect = false;
					move.magicCoat = false;
					move.snatch = true;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.HYPNOSIS:
					move.moveName = "Hypnosis";
					move.desc = "The user employs hypnotic suggestion to make the target fall into a deep sleep.";
					move.type = Type.PSYCHIC;
					move.category = Move.STATUS;
					move.power = 0;
					move.damageType = Move.NO_DAMAGE;
					move.accuracy = .6;
					move.effects.push(new Effect(Effect.STATUS, Status.SLEEP, Move.OPPONENT, 1));
					move.target = Move.OPPONENT;
					move.pp = 20;
					move.priority = 0;
					move.recoil = 0;
					move.contact = false;
					move.protect = true;
					move.magicCoat = true;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.POWER_SWAP:
					move.moveName = "Power Swap";
					move.desc = "The user employs its psychic power to switch changes to its Attack and Sp. Atk with the target.";
					move.type = Type.PSYCHIC;
					move.category = Move.STATUS;
					move.power = 0;
					move.damageType = Move.NO_DAMAGE;
					move.accuracy = Move.PERFECT_ACCURACY;
					move.effects.push(new Effect(Effect.POWER_SWAP, 0, Move.OPPONENT, 1));
					move.target = Move.OPPONENT;
					move.pp = 10;
					move.priority = 0;
					move.recoil = 0;
					move.contact = false;
					move.protect = true;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.SECRET_POWER:
					move.moveName = "Secret Power";
					move.desc = "The user attacks the target with a secret power. Its added effects vary depending on the user's environment.";
					move.type = Type.NORMAL;
					move.category = Move.PHYSICAL;
					move.power = 70;
					move.damageType = Move.NORMAL_DAMAGE;
					move.accuracy = Move.PERFECT_ACCURACY;
					move.effects.push(new Effect(Effect.SECRET_POWER, 0, Move.OPPONENT, .3));
					move.target = Move.OPPONENT;
					move.pp = 20;
					move.priority = 0;
					move.recoil = 0;
					move.contact = false;
					move.protect = true;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.SPITE:
					move.moveName = "Spite";
					move.desc = "The user unleashes its grudge on the move last used by the target by cutting 4 PP from it.";
					move.type = Type.GHOST;
					move.category = Move.STATUS;
					move.power = 0;
					move.damageType = Move.NO_DAMAGE;
					move.accuracy = 1;
					move.effects.push(new Effect(Effect.REDUCE_PP, 4, Move.OPPONENT, 1));
					move.target = Move.OPPONENT;
					move.pp = 10;
					move.priority = 0;
					move.recoil = 0;
					move.contact = false;
					move.protect = false;
					move.magicCoat = true;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.TAIL_SLAP:
					move.moveName = "Tail Slap";
					move.desc = "The user attacks by striking the target with its hard tail. It hits the Pokémon two to five times in a row.";
					move.type = Type.NORMAL;
					move.category = Move.PHYSICAL;
					move.power = 25;
					move.damageType = Move.MULTISTRIKE;
					move.accuracy = .85;
					move.target = Move.OPPONENT;
					move.pp = 20;
					move.priority = 0;
					move.recoil = 0;
					move.contact = true;
					move.protect = true;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.PSYSHOCK:
					move.moveName = "Psyshock";
					move.desc = "The user materializes an odd psychic wave to attack the target. This attack does physical damage.";
					move.type = Type.PSYCHIC;
					move.category = Move.SPECIAL;
					move.power = 80;
					move.damageType = Move.INVERSE_DEFENSE;
					move.accuracy = 1;
					move.target = Move.OPPONENT;
					move.pp = 10;
					move.priority = 0;
					move.recoil = 0;
					move.contact = false;
					move.protect = true;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.CALM_MIND:
					move.moveName = "Calm Mind";
					move.desc = "The user quietly focuses its mind and calms its spirit to raise its Sp. Atk and Sp. Def stats.";
					move.type = Type.PSYCHIC;
					move.category = Move.STATUS;
					move.power = 0;
					move.damageType = Move.NO_DAMAGE;
					move.accuracy = Move.PERFECT_ACCURACY;
					move.effects.push(new Effect(Effect.STAT_MOD, 0, Move.SELF, 1, new <int>[0,0,0,1,1,0,0,0,0]));
					move.target = Move.SELF;
					move.pp = 20;
					move.priority = 0;
					move.recoil = 0;
					move.contact = false;
					move.protect = false;
					move.magicCoat = false;
					move.snatch = true;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.HIDDEN_POWER:
					move.moveName = "Hidden Power";
					move.desc = "A unique attack that varies in type and intensity depending on the Pokémon using it.";
					move.type = Type.NORMAL;
					move.category = Move.SPECIAL;
					move.power = 70;
					move.damageType = Move.VARIABLE_DAMAGE;
					move.accuracy = 1;
					move.target = Move.OPPONENT;
					move.pp = 15;
					move.priority = 0;
					move.recoil = 0;
					move.contact = false;
					move.protect = true;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.HYPER_BEAM:
					move.moveName = "Hyper Beam";
					move.desc = "The target is attacked with a powerful beam. The user must rest on the next turn to regain its energy.";
					move.type = Type.NORMAL;
					move.category = Move.SPECIAL;
					move.power = 150;
					move.damageType = Move.NORMAL_DAMAGE;
					move.accuracy = .9;
					move.effects.push(new Effect(Effect.STATUS, Status.RECHARGING, Move.SELF, 1));
					move.target = Move.OPPONENT;
					move.pp = 5;
					move.priority = 0;
					move.recoil = 0;
					move.contact = false;
					move.protect = true;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.SOLARBEAM_CHARGE:
					move.moveName = "SolarBeam";
					move.desc = "A two-turn attack. The user gathers light, then blasts a bundled beam on the second turn.";
					move.type = Type.GRASS;
					move.category = Move.STATUS;
					move.power = 0;
					move.damageType = Move.NO_DAMAGE
					move.accuracy = Move.PERFECT_ACCURACY
					move.effects.push(new Effect(Effect.STATUS, Status.CHARGING, Move.SELF, 1));
					move.target = Move.SELF;
					move.pp = 10;
					move.priority = 0;
					move.recoil = 0;
					move.contact = false;
					move.protect = false;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.SOLARBEAM_ATTACK:
					move.moveName = "SolarBeam";
					move.desc = "A two-turn attack. The user gathers light, then blasts a bundled beam on the second turn.";
					move.type = Type.GRASS;
					move.category = Move.SPECIAL;
					move.power = 120;
					move.damageType = Move.NORMAL_DAMAGE;
					move.accuracy = 1;
					move.target = Move.OPPONENT;
					move.pp = 10;
					move.priority = 0;
					move.recoil = 0;
					move.contact = false;
					move.protect = true;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.DREAM_EATER:
					move.moveName = "Dream Eater";
					move.desc = "The user eats the dreams of a sleeping target. It absorbs half the damage caused to heal the user's HP.";
					move.type = Type.PSYCHIC;
					move.category = Move.SPECIAL;
					move.power = 100;
					move.damageType = Move.NORMAL_DAMAGE;
					move.accuracy = 1;
					move.target = Move.OPPONENT;
					move.pp = 15;
					move.priority = 0;
					move.recoil = -1 / 2;
					move.contact = false;
					move.protect = true;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
				
				case Move.ODOR_SLEUTH:
					move.moveName = "Odor Sleuth";
					move.desc = "Enables a Ghost-type target to be hit with Normal- and Fighting-type attacks. It also enables an evasive target to be hit.";
					move.type = Type.NORMAL;
					move.category = Move.STATUS;
					move.power = 0;
					move.damageType = Move.NO_DAMAGE;
					move.accuracy = Move.PERFECT_ACCURACY;
					move.effects.push(new Effect(Effect.RESET_STAT_CHANGE, Stat.EVASION, Move.OPPONENT, 1));
					move.target = Move.OPPONENT;
					move.pp = 40;
					move.priority = 0;
					move.recoil = 0;
					move.contact = false;
					move.protect = true;
					move.magicCoat = true;
					move.snatch = true;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.TACKLE:
					move.moveName = "Tackle";
					move.desc = "A physical attack in which the user charges and slams into the target with its whole body.";
					move.type = Type.NORMAL;
					move.category = Move.PHYSICAL;
					move.power = 50;
					move.damageType = Move.NORMAL_DAMAGE;
					move.accuracy = 1;
					move.target = Move.OPPONENT;
					move.pp = 35;
					move.priority = 0;
					move.recoil = 0;
					move.contact = true;
					move.protect = true;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.GROWL:
					move.moveName = "Growl";
					move.desc = "The user growls in an endearing way, making the opposing team less wary. The foes' Attack stats are lowered.";
					move.type = Type.NORMAL;
					move.category = Move.STATUS;
					move.power = 0;
					move.damageType = Move.NO_DAMAGE;
					move.accuracy = 1;
					move.effects.push(new Effect(Effect.STAT_MOD, 0, Move.OPPONENT, 1, new <int>[0,-1,0,0,0,0,0,0,0]));
					move.target = Move.OPPONENT;
					move.pp = 40;
					move.priority = 0;
					move.recoil = 0;
					move.contact = false;
					move.protect = true;
					move.magicCoat = true;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.DEFENSE_CURL:
					move.moveName = "Defense Curl";
					move.desc = "The user growls in an endearing way, making the opposing team less wary. The foes' Attack stats are lowered.";
					move.type = Type.NORMAL;
					move.category = Move.STATUS;
					move.power = 0;
					move.damageType = Move.NO_DAMAGE;
					move.accuracy = 1;
					move.effects.push(new Effect(Effect.STAT_MOD, 0, Move.SELF, 1, new <int>[0,0,1,0,0,0,0,0,0]));
					move.effects.push(new Effect(Effect.STATUS, Status.DEFENSE_CURL, Move.SELF, 1));
					move.target = Move.SELF;
					move.pp = 40;
					move.priority = 0;
					move.recoil = 0;
					move.contact = false;
					move.protect = false;
					move.magicCoat = false;
					move.snatch = true;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.HIT_BY_CONFUSION:
					move.moveName = "Hit by confusion";
					move.desc = "The attack a Pokemon hits itself with during confusion.";
					move.type = Type.NONE;
					move.category = Move.PHYSICAL;
					move.power = 40;
					move.damageType = Move.NORMAL_DAMAGE;
					move.accuracy = Move.PERFECT_ACCURACY;
					move.target = Move.SELF;
					move.pp = 35;
					move.priority = 0;
					move.recoil = 0;
					move.contact = false;
					move.protect = false;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.TAKE_DOWN:
					move.moveName = "Take Down";
					move.desc = "A reckless, full-body charge attack for slamming into the target. It also damages the user a little.";
					move.type = Type.NORMAL;
					move.category = Move.PHYSICAL;
					move.power = 90;
					move.damageType = Move.NORMAL_DAMAGE;
					move.accuracy = .85;
					move.target = Move.OPPONENT;
					move.pp = 20;
					move.priority = 0;
					move.recoil = 1 / 4;
					move.contact = true;
					move.protect = true;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
				
				case Move.ROLLOUT:
					move.moveName = "Rollout";
					move.desc = "The user continually rolls into the target over five turns. It becomes stronger each time it hits.";
					move.type = Type.ROCK;
					move.category = Move.PHYSICAL;
					move.power = 30;
					move.damageType = Move.VARIABLE_DAMAGE;
					move.accuracy = .9;
					move.target = Move.OPPONENT;
					move.effects.push(new Effect(Effect.STATUS, Status.ROLLOUT, Move.SELF, 1));
					move.pp = 20;
					move.priority = 0;
					move.recoil = 0;
					move.contact = true;
					move.protect = true;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.NATURAL_GIFT:
					move.moveName = "Natural Gift";
					move.desc = "The user draws power to attack by using its held Berry. The Berry determines its type and power.";
					move.type = Type.NORMAL;
					move.category = Move.PHYSICAL;
					move.power = 0;
					move.damageType = Move.VARIABLE_DAMAGE;
					move.accuracy = 1;
					move.target = Move.OPPONENT;
					move.pp = 15;
					move.priority = 0;
					move.recoil = 0;
					move.contact = false;
					move.protect = true;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.SLAM:
					move.moveName = "Slam";
					move.desc = "The target is slammed with a long tail, vines, etc., to inflict damage.";
					move.type = Type.NORMAL;
					move.category = Move.PHYSICAL;
					move.power = 80;
					move.damageType = Move.NORMAL_DAMAGE;
					move.accuracy = .75;
					move.target = Move.OPPONENT;
					move.pp = 20;
					move.priority = 0;
					move.recoil = 0;
					move.contact = true;
					move.protect = true;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.ENDURE:
					move.moveName = "Endure";
					move.desc = "The user endures any attack, leaving 1 HP. Its chance of failing rises if it is used in succession.";
					move.type = Type.NORMAL;
					move.category = Move.STATUS;
					move.power = 0;
					move.damageType = Move.NO_DAMAGE;
					move.accuracy = Move.PERFECT_ACCURACY;
					move.target = Move.SELF;
					move.effects.push(new Effect(Effect.STATUS, Status.ENDURE, Move.SELF, 1));
					move.pp = 10;
					move.priority = 3;
					move.recoil = 0;
					move.contact = false;
					move.protect = false;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.CHARM:
					move.moveName = "Charm";
					move.desc = "The user gazes at the target rather charmingly, making it less wary. The target's Attack is harshly lowered.";
					move.type = Type.NORMAL;
					move.category = Move.STATUS;
					move.power = 0;
					move.damageType = Move.NO_DAMAGE;
					move.accuracy = 1;
					move.target = Move.SELF;
					move.effects.push(new Effect(Effect.STAT_MOD, 0, Move.OPPONENT, 1, new <int>[0,-2,0,0,0,0,0,0,0]));
					move.pp = 20;
					move.priority = 0;
					move.recoil = 0;
					move.contact = false;
					move.protect = true;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.LAST_RESORT:
					move.moveName = "Last Resort";
					move.desc = "This move can be used only after the user has used all the other moves it knows in the battle.";
					move.type = Type.NORMAL;
					move.category = Move.PHYSICAL;
					move.power = 140;
					move.damageType = Move.NORMAL_DAMAGE;
					move.accuracy = 1;
					move.target = Move.OPPONENT;
					move.pp = 5;
					move.priority = 0;
					move.recoil = 0;
					move.contact = true;
					move.protect = true;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.DOUBLE_EDGE:
					move.moveName = "Double-Edge";
					move.desc = "This move can be used only after the user has used all the other moves it knows in the battle.";
					move.type = Type.NORMAL;
					move.category = Move.PHYSICAL;
					move.power = 120;
					move.damageType = Move.NORMAL_DAMAGE;
					move.accuracy = 1;
					move.target = Move.OPPONENT;
					move.pp = 15;
					move.priority = 0;
					move.recoil = 1 / 3;
					move.contact = true;
					move.protect = true;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.EARTHQUAKE:
					move.moveName = "Earthquake";
					move.desc = "The user sets off an earthquake that strikes those around it.";
					move.type = Type.GROUND;
					move.category = Move.PHYSICAL;
					move.power = 100;
					move.damageType = Move.NORMAL_DAMAGE;
					move.accuracy = 1;
					move.target = Move.OPPONENT;
					move.pp = 10;
					move.priority = 0;
					move.recoil = 0;
					move.contact = false;
					move.protect = true;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.SANDSTORM:
					move.moveName = "Sandstorm";
					move.desc = "A five-turn sandstorm is summoned to hurt all combatants except the Rock, Ground, and Steel types.";
					move.type = Type.ROCK;
					move.category = Move.STATUS;
					move.power = 0;
					move.damageType = Move.NO_DAMAGE;
					move.accuracy = Move.PERFECT_ACCURACY;
					move.effects.push(new Effect(Effect.FIELD_EFFECT, FieldEffect.SANDSTORM, Move.SELF, 1));
					move.target = Move.SELF;
					move.pp = 10;
					move.priority = 0;
					move.recoil = 0;
					move.contact = false;
					move.protect = false;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.ROCK_TOMB:
					move.moveName = "Rock Tomb";
					move.desc = "Boulders are hurled at the target. It also lowers the target's Speed by preventing its movement.";
					move.type = Type.ROCK;
					move.category = Move.PHYSICAL;
					move.power = 50;
					move.damageType = Move.NORMAL_DAMAGE;
					move.accuracy = .8;
					move.target = Move.OPPONENT;
					move.effects.push(new Effect(Effect.STAT_MOD, 0, Move.OPPONENT, 1, new <int>[0,0,0,0,0,-1,0,0]));
					move.pp = 10;
					move.priority = 0;
					move.recoil = 0;
					move.contact = false;
					move.protect = true;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
				
				case Move.ECHOED_VOICE:
					move.moveName = "Echoed Voice";
					move.desc = "The user attacks the target with an echoing voice. If this move is used every turn, it does greater damage.";
					move.type = Type.NORMAL
					move.category = Move.SPECIAL;
					move.power = 40;
					move.damageType = Move.VARIABLE_DAMAGE;
					move.accuracy = 1;
					move.target = Move.OPPONENT;
					move.effects.push(new Effect(Effect.STATUS, Status.ECHOED_VOICE, Move.SELF, 1));
					move.pp = 15;
					move.priority = 0;
					move.recoil = 0;
					move.contact = false;
					move.protect = true;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = true;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.BULLDOZE:
					move.moveName = "Bulldoze";
					move.desc = "The user stomps down on the ground and attacks everything in the area. Hit Pokémon's Speed stat is reduced.";
					move.type = Type.GROUND;
					move.category = Move.PHYSICAL;
					move.power = 60;
					move.damageType = Move.NORMAL_DAMAGE;
					move.accuracy = 1;
					move.target = Move.OPPONENT;
					move.effects.push(new Effect(Effect.STAT_MOD, 0, Move.OPPONENT, 1, new <int>[0,0,0,0,0,-1,0,0,0]));
					move.pp = 20;
					move.priority = 0;
					move.recoil = 0;
					move.contact = false;
					move.protect = true;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.ROCK_SLIDE:
					move.moveName = "Rock Slide";
					move.desc = "Large boulders are hurled at the opposing team to inflict damage. They may also make the targets flinch.";
					move.type = Type.ROCK;
					move.category = Move.PHYSICAL;
					move.power = 75;
					move.damageType = Move.NORMAL_DAMAGE;
					move.accuracy = .9;
					move.target = Move.OPPONENT;
					move.effects.push(new Effect(Effect.STATUS, Status.FLINCH, Move.OPPONENT, .3));
					move.pp = 10;
					move.priority = 0;
					move.recoil = 0;
					move.contact = false;
					move.protect = true;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.ROCK_SMASH:
					move.moveName = "Rock Smash";
					move.desc = "The user attacks with a punch that can shatter a rock. It may also lower the target's Defense stat.";
					move.type = Type.FIGHTING;
					move.category = Move.PHYSICAL;
					move.power = 40;
					move.damageType = Move.NORMAL_DAMAGE;
					move.accuracy = 1;
					move.target = Move.OPPONENT;
					move.effects.push(new Effect(Effect.STAT_MOD, 0, Move.OPPONENT, .5, new <int>[0,0,-1,0,0,0,0,0]));
					move.pp = 15;
					move.priority = 0;
					move.recoil = 0;
					move.contact = true;
					move.protect = true;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.STRENGTH:
					move.moveName = "Strength";
					move.desc = "The target is slugged with a punch thrown at maximum power. This move can also be used to move boulders.";
					move.type = Type.NORMAL;
					move.category = Move.PHYSICAL;
					move.power = 80;
					move.damageType = Move.NORMAL_DAMAGE;
					move.accuracy = 1;
					move.target = Move.OPPONENT;
					move.pp = 15;
					move.priority = 0;
					move.recoil = 0;
					move.contact = true;
					move.protect = true;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.FIRE_FANG:
					move.moveName = "Fire Fang";
					move.desc = "The user bites with flame-cloaked fangs. It may also make the target flinch or leave it burned.";
					move.type = Type.FIRE;
					move.category = Move.PHYSICAL;
					move.power = 65;
					move.damageType = Move.NORMAL_DAMAGE;
					move.accuracy = .95;
					move.target = Move.OPPONENT;
					move.effects.push(new Effect(Effect.STATUS, Status.FLINCH, Move.OPPONENT, .1));
					move.effects.push(new Effect(Effect.STATUS, Status.BURN, Move.OPPONENT, .1));
					move.pp = 15;
					move.priority = 0;
					move.recoil = 0;
					move.contact = true;
					move.protect = true;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.THUNDER_FANG:
					move.moveName = "Thunder Fang";
					move.desc = "The user bites with electrified fangs. It may also make the target flinch or leave it with paralysis.";
					move.type = Type.ELECTRIC;
					move.category = Move.PHYSICAL;
					move.power = 65;
					move.damageType = Move.NORMAL_DAMAGE;
					move.accuracy = .95;
					move.target = Move.OPPONENT;
					move.effects.push(new Effect(Effect.STATUS, Status.FLINCH, Move.OPPONENT, .1));
					move.effects.push(new Effect(Effect.STATUS, Status.PARALYSIS, Move.OPPONENT, .1));
					move.pp = 15;
					move.priority = 0;
					move.recoil = 0;
					move.contact = true;
					move.protect = true;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.HORN_ATTACK:
					move.moveName = "Horn Attack";
					move.desc = "The target is jabbed with a sharply pointed horn to inflict damage.";
					move.type = Type.NORMAL;
					move.category = Move.PHYSICAL;
					move.power = 65;
					move.damageType = Move.NORMAL_DAMAGE;
					move.accuracy = 1;
					move.target = Move.OPPONENT;
					move.pp = 15;
					move.priority = 0;
					move.recoil = 0;
					move.contact = true;
					move.protect = true;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.RAPID_SPIN:
					move.moveName = "Rapid Spin";
					move.desc = "A spin attack that can also eliminate such moves as Bind, Wrap, Leech Seed, and Spikes.";
					move.type = Type.NORMAL;
					move.category = Move.PHYSICAL;
					move.power = 20;
					move.damageType = Move.NORMAL_DAMAGE;
					move.accuracy = 1;
					move.target = Move.OPPONENT;
					move.effects.push(new Effect(Effect.REMOVE_FIELD_EFFECT, 0, Move.SELF, 1));
					move.pp = 40;
					move.priority = 0;
					move.recoil = 0;
					move.contact = true;
					move.protect = true;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.KNOCK_OFF:
					move.moveName = "Knock Off";
					move.desc = "The user slaps down the target's held item, preventing that item from being used in the battle.";
					move.type = Type.DARK;
					move.category = Move.PHYSICAL;
					move.power = 20;
					move.damageType = Move.NORMAL_DAMAGE;
					move.accuracy = 1;
					move.target = Move.OPPONENT;
					move.effects.push(new Effect(Effect.REMOVE_ITEM, 0, Move.OPPONENT, 1));
					move.pp = 20;
					move.priority = 0;
					move.recoil = 0;
					move.contact = true;
					move.protect = true;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.MAGNITUDE:
					move.moveName = "Magnitude";
					move.desc = "The user looses a ground-shaking quake that varies in power.";
					move.type = Type.GROUND;
					move.category = Move.PHYSICAL;
					move.power = 0;
					move.damageType = Move.VARIABLE_DAMAGE;
					move.accuracy = 1;
					move.target = Move.OPPONENT;
					move.pp = 30;
					move.priority = 0;
					move.recoil = 0;
					move.contact = false;
					move.protect = true;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.FURY_ATTACK:
					move.moveName = "Fury Attack";
					move.desc = "The target is jabbed repeatedly with a horn or beak two to five times in a row.";
					move.type = Type.NORMAL;
					move.category = Move.PHYSICAL;
					move.power = 15;
					move.damageType = Move.NO_DAMAGE;
					move.accuracy = .85;
					move.target = Move.OPPONENT;
					move.effects.push(new Effect(Effect.MULTI_STRIKE_5, 0, Move.OPPONENT, 1));
					move.pp = 20;
					move.priority = 0;
					move.recoil = 0;
					move.contact = true;
					move.protect = true;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.ASSURANCE:
					move.moveName = "Assurance";
					move.desc = "If the target has already taken some damage in the same turn, this attack's power is doubled.";
					move.type = Type.DARK;
					move.category = Move.PHYSICAL;
					move.power = 50;
					move.damageType = Move.VARIABLE_DAMAGE;
					move.accuracy = 1;
					move.target = Move.OPPONENT;
					move.pp = 10;
					move.priority = 0;
					move.recoil = 0;
					move.contact = true;
					move.protect = true;
					move.magicCoat = false;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
					
				case Move.SCARY_FACE:
					move.moveName = "Scary Face";
					move.desc = "The user frightens the target with a scary face to harshly reduce its speed stat.";
					move.type = Type.NORMAL;
					move.category = Move.STATUS;
					move.power = 0;
					move.damageType = Move.NO_DAMAGE;
					move.accuracy = 1;
					move.effects.push(new Effect(Effect.STAT_MOD, 0, Move.OPPONENT, 1, new <int>[0,0,0,0,0,-2,0,0,0]));
					move.target = Move.OPPONENT;
					move.pp = 10;
					move.priority = 0;
					move.recoil = 0;
					move.contact = false;
					move.protect = true;
					move.magicCoat = true;
					move.snatch = false;
					move.sound = false;
					move.forcesSwitch = Move.NO_SWITCH;
					break;
			}
			
			return move;
		}
		
	}

}