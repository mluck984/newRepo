package game.inventory
{
	/**
	 * ...
	 * @author Matthew
	 */
	public class ItemHolder 
	{
		
		public function ItemHolder() 
		{
		}
		
		public static function getWildItem(num:int, chance:Number):Item
		{
			var item:Item = getItem(num);
			item.chance = chance;
			return item;
		}
		
		public static function getItem(num:int):Item
		{
			var item:Item = new Item();
			switch(num)
			{
				
			}
			return item;
		}
		
	}

}