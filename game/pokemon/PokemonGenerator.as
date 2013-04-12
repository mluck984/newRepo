package game.pokemon
{
	/**
	 * ...
	 * @author Matthew
	 */
	public class PokemonGenerator 
	{
		
		public function PokemonGenerator() 
		{
		}
		
		public static function generateBasePokemon(species:int, lvl:int):Pokemon
		{
			var pokemon:Pokemon = PokemonHolder.getBasePokemon(species);
			pokemon.species = species;
			pokemon.level = lvl;
			pokemon.calculateStats();
			pokemon.calculateResistances();
			if (pokemon.genderRatio == Pokemon.GENDERLESS)
			{
				pokemon.gender = Pokemon.GENDERLESS;
			} else {
				pokemon.gender = Pokemon.MALE;
			}
			return pokemon;
		}
		
		public static function generateWildPokemon(species:int, lvl:int):Pokemon
		{
			var pokemon:Pokemon = PokemonGenerator.generateBasePokemon(species, lvl);
			
			var ivList:Vector.<int> = pokemon.ivs;
			for (var i:int = 0; i < 6; i++)
			{
				var rand:Number = Math.floor(Math.random() * 32);
				ivList[i] = rand;
			}
			
			rand = Math.floor(Math.random() * Nature.NATURE_LIST.length);
			pokemon.nature = Nature.NATURE_LIST[rand];
			pokemon.calculateStats();
			pokemon.calculateMoves();
			
			rand = Math.floor(Math.random() * pokemon.abilityList.length);
			pokemon.ability = pokemon.abilityList[rand];
			pokemon.activeAbility = pokemon.ability;
			
			if (pokemon.gender != Pokemon.GENDERLESS)
			{
				rand = Math.random();
				if (rand <= pokemon.genderRatio) {
					pokemon.gender = Pokemon.MALE;
				} else {
					pokemon.gender = Pokemon.FEMALE;
				}
			}
			return pokemon;
		}
		
	}

}