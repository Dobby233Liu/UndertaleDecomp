global.decomp_cmd_give_items_id_name_map = [
	// 00 - 09
	"", // Null
	"MonsterCandy",
	"CroquetRoll",
	"Stick",
	"Bandage",
	"RockCandy",
	"PumpkinRings",
	"SpiderDonut",
	"StoicOnion",
	"GhostFruit",
	// 10 - 19
	"SpiderCider",
	"ButterscotchPie",
	"FadedRibbon",
	"ToyKnife",
	"ToughGlove",
	"ManlyBandanna",
	"SnowmanPiece",
	"NiceCream",
	"PuppydoughIceCream",
	"Bisicle",
	// 20 - 29
	"Unisicle",
	"CinnamonBun",
	"TemmieFlakes",
	"AbandonedQuiche",
	"OldTutu",
	"BalletShoes",
	"PunchCard",
	"AnnoyingDog",
	"DogSalad",
	"DogResidue29",
	// 30 - 39
	"DogResidue30",
	"DogResidue31",
	"DogResidue32",
	"DogResidue33",
	"DogResidue34",
	"AstronautFood",
	"InstantNoodles",
	"CrabApple",
	"HotDog",
	"HotCat",
	// 40 - 49
	"Glamburger",
	"SeaTea",
	"Starfait",
	"LegendaryHero",
	"ButtyGlasses",
	"TornNotebook",
	"StainedApron",
	"BurntPan",
	"CowboyHat",
	"EmptyGun",
	// 50 - 59
	"HeartLocket",
	"WornDagger",
	"RealKnife",
	"TheLocket",
	"BadMemory",
	"Dream",
	"UndynesLetter",
	"UndynesLetterEX",
	"PopatoChisps",
	"JunkFood",
	// 60 - 69
	"MysteryKey",
	"FaceSteak",
	"HushPuppy",
	"SnailPie",
	"TemyArmor"
];

function cmd_give_item(_args)
{
	if (array_length(_args) < 1) {
		command_writeline("Invalid Argument count for \"give_item\"!");
		return;
	}
	
	var item_name_or_id = _args[0];
	
	for (var i = 0; i < array_length(global.decomp_cmd_give_items_id_name_map); i++)
	{
		if (global.decomp_cmd_give_items_id_name_map[i] == item_name_or_id)
		{
			item_name_or_id = string(i);
			break;
		}
	}
	
	if (string_length(string_digits(item_name_or_id)) != string_length(item_name_or_id))
	{
		command_writeline("Item ID must be a number or a valid alias!");
		return;
	}
	
	var item_id = real(string_digits(item_name_or_id));
	
	scr_itemget(item_id);
	command_writeline(noroom ? "No room in inventory!" : "Item added!");
}