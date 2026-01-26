/datum/advclass/thug
	name = "Thug"
	tutorial = "Maybe you've never been the smartest person in town, but you may have been the sturdiest; Good enough for soilers to pay you to cart around saigashit, good enough for miners to offload some of their work to you, good enough for a carpenter who doesn't want to pay top mams for chopped wood, and good enough for just about anyone who wants a meathead to look scary with."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_NO_CONSTRUCT
	outfit = /datum/outfit/job/roguetown/adventurer/thug
	category_tags = list(CTAG_TOWNER)
	traits_applied = list(TRAIT_SEEPRICES_SHITTY)
	cmode_music = 'sound/music/combat_bum.ogg'
	maximum_possible_slots = 4 // i dont want an army of towner thugs
	classes = list("Goon" = "You're a goon, a low-lyfe thug in a painful world - not good enough for war, not smart enough for peace. What you lack in station you make up for in daring.",
					"Wise Guy" = "You're smarter than the rest, by a stone's throw - and you know better than to get up close and personal. Unlike most others, you can read.",
					"Big Man" = "More akin to a cabbage-fed monster than a normal man, your size and strength are your greatest weapons; though they hardly supplement what's missing of your brains.")

/datum/outfit/job/roguetown/adventurer/thug/pre_equip(mob/living/carbon/human/H)
	..()

	H.adjust_blindness(-3)
	var/classes = list("Goon","Wise Guy","Big Man")
	var/classchoice = input("Choose your archetypes", "Available archetypes") as anything in classes

	switch(classchoice)
		if("Goon")
			H.set_blindness(0)
			to_chat(H, span_warning("You're a goon, a low-lyfe thug in a painful world - not good enough for war, not smart enough for peace. What you lack in station you make up for in daring."))
			H.adjust_skillrank_up_to(/datum/skill/combat/wrestling, SKILL_LEVEL_JOURNEYMAN, TRUE)
			H.adjust_skillrank_up_to(/datum/skill/combat/unarmed, SKILL_LEVEL_JOURNEYMAN, TRUE)
			H.adjust_skillrank_up_to(/datum/skill/combat/axes, SKILL_LEVEL_APPRENTICE, TRUE)
			H.adjust_skillrank_up_to(/datum/skill/combat/knives, SKILL_LEVEL_APPRENTICE, TRUE)
			H.adjust_skillrank_up_to(/datum/skill/combat/maces, SKILL_LEVEL_JOURNEYMAN, TRUE)
			H.adjust_skillrank_up_to(/datum/skill/craft/cooking, SKILL_LEVEL_NOVICE, TRUE)
			H.adjust_skillrank_up_to(/datum/skill/misc/athletics, SKILL_LEVEL_EXPERT, TRUE)
			H.adjust_skillrank_up_to(/datum/skill/misc/swimming, SKILL_LEVEL_JOURNEYMAN, TRUE)
			H.adjust_skillrank_up_to(/datum/skill/misc/climbing, SKILL_LEVEL_JOURNEYMAN, TRUE) 
			H.adjust_skillrank_up_to(/datum/skill/labor/mining, SKILL_LEVEL_NOVICE, TRUE)
			H.adjust_skillrank_up_to(/datum/skill/labor/lumberjacking, SKILL_LEVEL_APPRENTICE, TRUE)
			H.adjust_skillrank_up_to(/datum/skill/labor/farming, SKILL_LEVEL_NOVICE, TRUE)
			H.adjust_skillrank_up_to(/datum/skill/labor/fishing, SKILL_LEVEL_APPRENTICE, TRUE)
			H.adjust_skillrank_up_to(/datum/skill/misc/sneaking, SKILL_LEVEL_APPRENTICE, TRUE)
			H.adjust_skillrank_up_to(/datum/skill/misc/stealing, SKILL_LEVEL_JOURNEYMAN, TRUE)
			H.change_stat("strength", 2)
			H.change_stat("endurance", 1)
			H.change_stat("constitution", 3)
			H.change_stat("speed", -1)
			H.change_stat("intelligence", -1)
			backpack_contents = list(
				/obj/item/flashlight/flare/torch/metal = 1,
				/obj/item/recipe_book/survival = 1,
				/obj/item/storage/belt/rogue/pouch/coins/poor = 1,
				/obj/item/rogueweapon/scabbard/sheath = 1,
				/obj/item/rogueweapon/huntingknife = 1,
				)
			var/options = list("Frypan", "Knuckles", "Navaja", "Bare Hands", "My Trusty Cudgel", "Whatever I Can Find")
			var/option_choice = input("Choose your means.", "TAKE UP ARMS") as anything in options
			switch(option_choice)
				if("Frypan")
					H.adjust_skillrank_up_to(/datum/skill/craft/cooking, SKILL_LEVEL_EXPERT, TRUE) // expert cook; expert pan-handler
					r_hand = /obj/item/cooking/pan
				if("Knuckles")
					H.adjust_skillrank_up_to(/datum/skill/combat/unarmed, SKILL_LEVEL_EXPERT, TRUE)
					r_hand = /obj/item/rogueweapon/knuckles/bronzeknuckles
				if("Navaja") //Switchblade aura farm
					H.adjust_skillrank_up_to(/datum/skill/combat/knives, SKILL_LEVEL_EXPERT, TRUE)
					r_hand = /obj/item/rogueweapon/huntingknife/idagger/navaja
				if("Bare Hands")
					H.adjust_skillrank_up_to(/datum/skill/combat/unarmed, SKILL_LEVEL_EXPERT, TRUE)
					ADD_TRAIT(H, TRAIT_CIVILIZEDBARBARIAN, TRAIT_GENERIC)
				if("My Trusty Cudgel") //The classic.
					H.adjust_skillrank_up_to(/datum/skill/combat/maces, SKILL_LEVEL_EXPERT, TRUE)
					r_hand = /obj/item/rogueweapon/mace/cudgel
				if("Whatever I Can Find") // random weapon from the dungeon table; could be a wooden club, could be a halberd
					H.adjust_skillrank_up_to(/datum/skill/combat/swords, SKILL_LEVEL_APPRENTICE, TRUE)
					H.adjust_skillrank_up_to(/datum/skill/combat/polearms, SKILL_LEVEL_APPRENTICE, TRUE)
					H.adjust_skillrank_up_to(/datum/skill/combat/whipsflails, SKILL_LEVEL_APPRENTICE, TRUE)
					r_hand = /obj/effect/spawner/lootdrop/roguetown/dungeon/weapons
		if("Wise Guy")
			H.set_blindness(0)
			to_chat(H, span_warning("You're smarter than the rest, by a stone's throw - and you know better than to get up close and personal. Unlike most others, you can read."))
			H.adjust_skillrank_up_to(/datum/skill/combat/wrestling, SKILL_LEVEL_NOVICE, TRUE)
			H.adjust_skillrank_up_to(/datum/skill/combat/unarmed, SKILL_LEVEL_NOVICE, TRUE)
			H.adjust_skillrank_up_to(/datum/skill/craft/alchemy, SKILL_LEVEL_APPRENTICE, TRUE) // vaguely smart, capable of making pyrotechnics
			H.adjust_skillrank_up_to(/datum/skill/craft/crafting, SKILL_LEVEL_APPRENTICE, TRUE)
			H.adjust_skillrank_up_to(/datum/skill/craft/weaponsmithing, SKILL_LEVEL_NOVICE, TRUE)
			H.adjust_skillrank_up_to(/datum/skill/craft/armorsmithing, SKILL_LEVEL_NOVICE, TRUE)
			H.adjust_skillrank_up_to(/datum/skill/misc/athletics, SKILL_LEVEL_APPRENTICE, TRUE)
			H.adjust_skillrank_up_to(/datum/skill/misc/swimming, SKILL_LEVEL_APPRENTICE, TRUE)
			H.adjust_skillrank_up_to(/datum/skill/misc/climbing, SKILL_LEVEL_APPRENTICE, TRUE) 
			H.adjust_skillrank_up_to(/datum/skill/labor/farming, SKILL_LEVEL_APPRENTICE, TRUE)
			H.adjust_skillrank_up_to(/datum/skill/labor/fishing, SKILL_LEVEL_APPRENTICE, TRUE)
			H.adjust_skillrank_up_to(/datum/skill/misc/reading, SKILL_LEVEL_APPRENTICE, TRUE)
			H.adjust_skillrank_up_to(/datum/skill/misc/sneaking, SKILL_LEVEL_JOURNEYMAN, TRUE)
			H.adjust_skillrank_up_to(/datum/skill/misc/stealing, SKILL_LEVEL_JOURNEYMAN, TRUE)
			H.change_stat("speed", 2)
			H.change_stat("intelligence", 2)
			H.change_stat("endurance", -2)
			H.change_stat("constitution", -2)
			ADD_TRAIT(H, TRAIT_NUTCRACKER, TRAIT_GENERIC) // very smart
			ADD_TRAIT(H, TRAIT_CICERONE, TRAIT_GENERIC)
			backpack_contents = list(
				/obj/item/flashlight/flare/torch/metal = 1,
				/obj/item/recipe_book/survival = 1,
				/obj/item/storage/belt/rogue/pouch/coins/poor = 1,
				/obj/item/rogueweapon/scabbard/sheath = 1,
				/obj/item/rogueweapon/huntingknife = 1,
				)
			var/options = list("Stone Sling", "Magic Bricks", "Lockpicking Equipment")
			var/option_choice = input("Choose your means.", "TAKE UP ARMS") as anything in options
			switch(option_choice)
				if("Stone Sling")
					H.adjust_skillrank_up_to(/datum/skill/combat/slings, SKILL_LEVEL_EXPERT, TRUE)
					r_hand = /obj/item/gun/ballistic/revolver/grenadelauncher/sling
					l_hand = /obj/item/quiver/sling
				if("Magic Bricks")
					H.adjust_skillrank_up_to(/datum/skill/magic/arcane, SKILL_LEVEL_EXPERT, TRUE) // i fear not the man that has practiced a thousand moves one time, but the man that has practiced one move a thousand times
					H.mind.AddSpell(new /obj/effect/proc_holder/spell/self/magicians_brick)
				if("Lockpicking Equipment")
					H.adjust_skillrank_up_to(/datum/skill/misc/sneaking, SKILL_LEVEL_NOVICE, TRUE) // specialized into stealing; but good luck fighting
					H.adjust_skillrank_up_to(/datum/skill/misc/stealing, SKILL_LEVEL_NOVICE, TRUE)
					H.adjust_skillrank_up_to(/datum/skill/misc/lockpicking, SKILL_LEVEL_JOURNEYMAN, TRUE)
					ADD_TRAIT(H, TRAIT_LIGHT_STEP, TRAIT_GENERIC)
					r_hand = /obj/item/lockpickring/mundane
		if("Big Man")
			H.set_blindness(0)
			to_chat(H, span_warning("More akin to a cabbage-fed monster than a normal man, your size and strength are your greatest weapons; though they hardly supplement what's missing of your brains."))
			H.adjust_skillrank_up_to(/datum/skill/combat/wrestling, SKILL_LEVEL_JOURNEYMAN, TRUE) // knows very few practical skills; you're a moron
			H.adjust_skillrank_up_to(/datum/skill/combat/unarmed, SKILL_LEVEL_JOURNEYMAN, TRUE)
			H.adjust_skillrank_up_to(/datum/skill/misc/athletics, SKILL_LEVEL_MASTER, TRUE) // absolutely unrelenting
			H.adjust_skillrank_up_to(/datum/skill/misc/swimming, SKILL_LEVEL_APPRENTICE, TRUE)
			H.adjust_skillrank_up_to(/datum/skill/misc/climbing, SKILL_LEVEL_APPRENTICE, TRUE) 
			H.adjust_skillrank_up_to(/datum/skill/labor/mining, SKILL_LEVEL_JOURNEYMAN, TRUE)
			H.adjust_skillrank_up_to(/datum/skill/labor/lumberjacking, SKILL_LEVEL_JOURNEYMAN, TRUE)
			H.change_stat("strength", 3)
			H.change_stat("endurance", 2)
			H.change_stat("constitution", 5) // fatass
			H.change_stat("speed", -4)
			H.change_stat("intelligence", -6)
			H.change_stat("perception", -3)
			backpack_contents = list(
				/obj/item/flashlight/flare/torch/metal = 1,
				/obj/item/recipe_book/survival = 1,
				/obj/item/storage/belt/rogue/pouch/coins/poor = 1,
				/obj/item/rogueweapon/scabbard/sheath = 1,
				/obj/item/rogueweapon/huntingknife = 1,
				)
			ADD_TRAIT(H, TRAIT_STEELHEARTED, TRAIT_GENERIC)
			ADD_TRAIT(H, TRAIT_HARDDISMEMBER, TRAIT_GENERIC) // like a brick wall
			var/options = list("Hands-On", "Big Axe")
			var/option_choice = input("Choose your means.", "TAKE UP ARMS") as anything in options
			switch(option_choice) // you are big dumb guy, none of your options give you expert-level weapons skill
				if("Hands-On")
					ADD_TRAIT(H, TRAIT_BASHDOORS, TRAIT_GENERIC) // deal 200 damage to a door you sprint-charge into
					ADD_TRAIT(H, TRAIT_CIVILIZEDBARBARIAN, TRAIT_GENERIC)
				if("Big Axe")
					H.adjust_skillrank_up_to(/datum/skill/combat/axes, SKILL_LEVEL_JOURNEYMAN, TRUE)
					r_hand = /obj/item/rogueweapon/greataxe // not steel
			var/prev_real_name = H.real_name
			var/prev_name = H.name
			var/prefix = "Big" // if i see someone named "Boss" pick big man for this bit i will kill them
			H.real_name = "[prefix] [prev_real_name]"
			H.name = "[prefix] [prev_name]"

	belt = /obj/item/storage/belt/rogue/leather/rope
	shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/random
	pants = /obj/item/clothing/under/roguetown/tights/random
	shoes = /obj/item/clothing/shoes/roguetown/shortboots
	backr = /obj/item/storage/backpack/rogue/satchel
	wrists = /obj/item/clothing/wrists/roguetown/bracers/leather
	gloves = /obj/item/clothing/gloves/roguetown/fingerless
	neck = /obj/item/storage/belt/rogue/pouch/coins/poor
	armor = /obj/item/clothing/suit/roguetown/armor/leather

	H.grant_language(/datum/language/thievescant)
