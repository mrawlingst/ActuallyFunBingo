extends Node

# Version of game data
# vA.B.C
# A = Major update
# B = New milestones (more than removal)
# C = Removed milestones (more than additions)
var version = "1.1.1"
var helpLink = "https://darksouls.wiki.fextralife.com/Dark+Souls+Wiki"

var milestones = {
    # NON-EXCLUSIVE
    # ENEMIES
    "Kill Armored Boar (Parish)": 0,
    "Kill Black Knight (Burg)": 0,
    "Kill Black Knight (Parish)": 0,
    "Kill Black Knight (Darkroot Basin)": 0,
    "Kill Black Knight (Catacombs)": 0,
    "Kill Black Knight (Tomb of Giants)": 0,
    "Kill both Black Knights (Asylum)": 0,
    "Kill Mimic (Sen's Fortress)": 0,
    "Kill Mimic (Anor Londo)": 0,
    "Kill Mimic (Duke's Archives)": 0,
    "Kill Crystal Lizard (Burg)": 0,
    "Kill Crystal Lizard (Darkroot Basin)": 0,
    "Kill Crystal Lizard (Catacombs)": 0,
    "Kill Crystal Lizard (Tomb of Giants)": 0,
    "Kill 5 Crystal Lizards (Great Hollow)": 0,
    "Kill Crystal Lizard (Lost Izalith)": 0,
    "Kill Crystal Lizard (Duke's Archives)": 0,
    "Kill Crystal Lizard (Crystal Cave)": 0,
    "Kill Crystal Lizard (Royal Woods)": 0,
    "Kill Crystal Lizard (Oolacile Township)": 0,
    "Kill Titanite Demon (Darkroot Garden)": 0,
    "Kill Titanite Demon (Sen's Fortress)": 0,
    "Kill Titanite Demon (Anor Londo)": 0,
    "Kill Titanite Demon (Catacombs)": 0,
    "Kill Titanite Demon (Lost Izalith)": 0,
    "Kill Channeler (Depths)": 0,
    "Kill Channeler (Parish)": 0,
    
    "4 Attunement Slots": 0,
    "Invade Lautrec": 0,
    "+10 Armor": 0,

    # NPCS
    "Kill Andre of Astora": 0,
    "Kill Giant Blacksmith": 0,
    "Kill Rickert of Vinheim": 0,
    "Kill Vamos": 0,
    "Kill Anastacia of Astora": 0,
    "Kill Big Hat Logan": 0,
    "Kill Crestfallen Merchant": 0,
    "Force Darkstalker Kaathe to retreat": 0,
    "Kill Domhnall of Zena": 0,
    "Kill Dusk of Oolacile": 0,
    "Kill Eingyi": 0,
    "Kill Elizabeth": 0,
    "Kill Griggs of Vinheim": 0,
    "Kill Hawkeye Gough": 0,
    "Kill Ingward": 0,
    "Force Kingseeker Frampt to retreat": 0,
    "Kill Lady of the Darkling": 0,
    "Kill Laurentius of the Great Swamp": 0,
    "Kill Marvellous Chester": 0,
    "Kill Oswald of Carim": 0,
    "Kill Patches": 0,
    "Kill Petrus of Thorolund": 0,
    "Kill Quelana of Izalith": 0,
    "Kill Rhea of Thorolund": 0,
    "Kill Shiva of the East": 0,
    "Force Snuggly the Crow to retreat": 0,
    "Kill Undead Merchant (Female)": 0,
    "Kill Undead Merchant (Male)": 0,
    "Kill Alvina of the Darkroot Wood": 0,
    "Kill Dark Sun Gwyndolin": 0,
    "Kill Gwynevere, Princess of Sunlight": 0,
    "Kill Quelaag's sister": 0,
    "Kill Solaire of Astora": 0,
    "Kill Black Iron Tarkus": 0,
    "Kill Knight Lautrec of Carim": 0,
    "Kill Maneater Mildred": 0,
    "Kill Paladin Leeroy": 0,
    "Kill Witch Beatrice": 0,
    "Kill Oscar, Knight of Astora": 0,
    "Kill Sieglinde of Catarina": 0,
    "Kill Siegmeyer of Catarina": 0,
    "Kill Vince and Nico of Thorolund": 0,
    "Kill Crestfallen Warrior": 0,
    "Kill Lord's Blade Ciaran": 0,

    # GESTURES
    "Learn 'Proper Bow' gesture": 0,
    "Learn 'Hurrah!' gesture": 0,
    "Learn 'Shrug' gesture": 0,
    "Learn 'Look Skyward' gesture": 0,
    "Learn 'Well! What is it!' gesture": 0,
    "Learn 'Prostration' gesture": 0,
    "Learn 'Praise the sun' gesture": 0,
    "Learn 'Joy' gesture": 0,
    "Learn 'Prayer' gesture": 0,

    # RINGS
    "Tiny Being's Ring": 0,
    "Cloranthy Ring": 0,
    "Havel's Ring": 0,
    "Ring of Steel Protection": 0,
    "Spell Stoneplate Ring": 0,
    "Flame Stoneplate Ring": 0,
    "Thunder Stoneplate Ring": 0,
    "Speckled Stoneplate Ring": 0,
    "Bloodbite Ring": 0,
    "Poisonbite Ring": 0,
    "Cursebite Ring": 0,
    "Red Tearstone Ring": 0,
    "Blue Tearstone Ring": 0,
    "Ring of Sacrifice": 0,
    "Rare Ring of Sacrifice": 0,
    "Bellowing Dragoncrest Ring": 0,
    "Lingering Dragoncrest Ring": 0,
    "Slumbering Dragoncrest Ring": 0,
    "Dusk Crown Ring": 0,
    "White Seance Ring": 0,
    "Darkmoon Seance Ring": 0,
    "Ring of the Sun's Firstborn": 0,
    "Darkmoon Blade of Covenant": 0,
    "Leo Ring": 0,
    "Wolf Ring": 0,
    "Hawk Ring": 0,
    "Hornet Ring": 0,
    "Dark Wood Grain Ring": 0,
    "Rusted Iron Ring": 0,
    "Covetous Gold Serpent Ring": 0,
    "Covetous Silver Serpent Ring": 0,
    "Covenant of Artorias": 0,
    "Orange Charred Ring": 0,
    "Old Witch's Ring": 0,
    "Cat Covenant Ring": 0,
    "Ring of Fog": 0,
    "Ring of Favor and Protection": 0,
    "Ring of the Evil Eye": 0,
    "East Wood Grain Ring": 0,
    "Ring of the Sun Princess": 0,
    "Calamity Ring": 0,

    # Miracles
    "Force (M)": 0,
    "Emit Force (M)": 0,
    "Wrath of the Gods (M)": 0,
    "Heal (M)": 0,
    "Great Heal Excerpt (M)": 0,
    "Great Heal (M)": 0,
    "Soothing Sunlight (M)": 0,
    "Replenishment (M)": 0,
    "Bountiful Sunlight (M)": 0,
    "Lightning Spear (M)": 0,
    "Great Lightning Spear (M)": 0,
    "Sunlight Spear (M)": 0,
    "Homeward (M)": 0,
    "Magic Barrier (M)": 0,
    "Great Magic Barrier (M)": 0,
    "Seek Guidance (M)": 0,
    "Karmic Justice (M)": 0,
    "Tranquil Walk of Peace (M)": 0,
    "Vow of Silence (M)": 0,
    "Gravelord Sword Dance (M)": 0,
    "Gravelord Greatsword Dance (M)": 0,
    "Sunlight Blade (M)": 0,

    # Pyromancies
    "Fireball (P)": 0,
    "Fire Orb (P)": 0,
    "Great Fireball (P)": 0,
    "Flash Sweat (P)": 0,
    "Combustion (P)": 0,
    "Great Combustion (P)": 0,
    "Fire Whip (P)": 0,
    "Chaos Fire Whip (P)": 0,
    "Fire Surge (P)": 0,
    "Acid Surge (P)": 0,
    "Firestorm (P)": 0,
    "Chaos Storm (P)": 0,
    "Fire Tempest (P)": 0,
    "Great Chaos Fireball (P)": 0,
    "Power Within (P)": 0,
    "Iron Flesh (P)": 0,
    "Poison Mist (P)": 0,
    "Toxic Mist (P)": 0,
    "Undead Rapport (P)": 0,
    "Black Flame (P)": 0,

    # Sorceries
    "Soul Arrow (S)": 0,
    "Great Soul Arrow (S)": 0,
    "Heavy Soul Arrow (S)": 0,
    "Great Heavy Soul Arrow (S)": 0,
    "Homing Soulmass (S)": 0,
    "Hush (S)": 0,
    "Cast Light (S)": 0,
    "Soul Spear (S)": 0,
    "Crystal Soul Spear (S)": 0,
    "Crystal Magic Weapon (S)": 0,
    "Homing Crystal Soulmass (S)": 0,
    "Remedy (S)": 0,
    "Resist Curse (S)": 0,
    "Repair (S)": 0,
    "Hidden Body (S)": 0,
    "Chameleon (S)": 0,
    "Hidden Weapon (S)": 0,
    "Magic Shield (S)": 0,
    "Strong Magic Shield (S)": 0,
    "Magic Weapon (S)": 0,
    "Great Magic Weapon (S)": 0,
    "Aural Decoy (S)": 0,
    "White Dragon Breath (S)": 0,
    "Fall Control (S)": 0,
    "Dark Orb (S)": 0,
    "Dark Bead (S)": 0,
    "Dark Fog (S)": 0,
    "Pursuers (S)": 0,

    # CATALYSTS
    "Sorcerer's Catalyst": 0,
    "Izalith Catalyst": 0,
    "Logan's Catalyst": 0,
    "Beatrice's Catalyst": 0,
    "Oolacile Ivory Catalyst": 0,
    "Demon's Catalyst": 0,
    "Tin Banishment Catalyst": 0,
    "Tin Crystallization Catalyst": 0,
    "Oolacile Catalyst": 0,

    # TALISMANS
    "Talisman": 0,
    "Canvas Talisman": 0,
    "Throrlunnd Talisman": 0,
    "Ivory Talisman": 0,
    "Sunlight Talisman": 0,
    "Velka's Talisman": 0,

    # DAGGERS
    "Dagger": 0,
    "Parrying Dagger": 0,
    "Priscilla's Dagger": 0,

    # STRAIGHT SWORDS
    "Broadsword": 0,
    "Shortsword": 0,
    "Longsword": 0,
    "Sunlight Straight Sword": 0,
    "Astora's Straight Sword": 0,
    "Drake Sword": 0,
    "Darksword": 0,
    "Crystal Straight Sword": 0,

    # GREATSWORDS
    "Bastard Sword": 0,
    "Claymore": 0,
    "Flamberge": 0,
    "Crystal Greatsword": 0,
    "Moonlight Greatsword": 0,
    "Stone Greatsword": 0,
    "Obsidian Greatsword": 0,

    # ULTRA GREATSWORDS
    "Dragon Greatsword": 0,
    "Greatsword": 0,
    "Zweihander": 0,
    "Demon Great Machete": 0,

    # CURVED SWORDS
    "Scimitar": 0,
    "Shotel": 0,
    "Falchion": 0,

    # KATANAS
    "Uchigatana": 0,
    "Washing Pole": 0,
    "Iaito": 0,

    # CURVED GREATSWORDS
    "Server": 0,
    "Murakumo": 0,
    "Gravelord Sword": 0,

    # PIERCING SWORDS
    "Rapier": 0,
    "Estoc": 0,
    "Mail Breaker": 0,
    "Ricard's Rapier": 0,
    "Velka's Rapier": 0,

    # AXES
    "Hand Axe": 0,
    "Gargoyle Tail Axe": 0,
    "Battle Axe": 0,
    "Butcher Knife": 0,
    "Crescent Axe": 0,

    # GREAT AXES
    "Demon's Greataxe": 0,
    "Greataxe": 0,
    "Dragon King Greataxe": 0,

    # HAMMERS
    "Club": 0,
    "Reinforced Club": 0,
    "Mace": 0,
    "Morning Star": 0,
    "Warpick": 0,
    "Blacksmith Hammer": 0,
    "Blacksmith Giant Hammer": 0,
    "Hammer of Vamos": 0,

    # GREAT HAMMERS
    "Demon's Great Hammer": 0,
    "Great Club": 0,
    "Dragon Tooth": 0,
    "Grant": 0,

    # FIST WEAPONS
    "Caestus": 0,
    "Claw": 0,
    "Dark Hand": 0,

    # SPEARS
    "Spear": 0,
    "Winged Spear": 0,
    "Demon's Spear": 0,
    "Pike": 0,
    "Partizan": 0,

    # HALBERDS
    "Halberd": 0,
    "Great Scythe": 0,
    "Scythe": 0,
    "Lucerne": 0,
    "Giant's Halberd": 0,

    # WHIPS
    "Whip": 0,
    "Notched Whip": 0,
    "Guardian Tail": 0,

    # BOWS
    "Short Bow": 0,
    "Longbow": 0,
    "Composite Bow": 0,
    "Black Bow of Pharis": 0,

    # GREATBOWS
    "Dragonslayer Greatbow": 0,
    "Gough's Greatbow": 0,

    # CROSSBOWS
    "Light Crossbow": 0,
    "Heavy Crossbow": 0,
    "Sniper Crossbow": 0,
    "Avelyn": 0,

    # SMALL SHIELDS
    "Small Leather Shield": 0,
    "Leather Shield": 0,
    "Target Shield": 0,
    "Buckler": 0,
    "Warrior's Round Shield": 0,
    "Caduceus Round Shield": 0,
    "Effigy Shield": 0,
    "Plank Shield": 0,

    # STANDARD SHIELDS
    "Wooden Shield": 0,
    "East-West Shield": 0,
    "Large Leather Shield": 0,
    "Heater Shield": 0,
    "Knight Shield": 0,
    "Tower Kite Shield": 0,
    "Caduceus Kite Shield": 0,
    "Balder Shield": 0,
    "Sunlight Shield": 0,
    "Iron Round Shield": 0,
    "Pierce Shield": 0,
    "Crest Shield": 0,
    "Dragon Crest Shield": 0,
    "Crystal Shield": 0,
    "Sanctus": 0,
    "Bloodshield": 0,
    "Spider Shield": 0,
    "Grass Crest Shield": 0,

    # GREATSHIELDS
    "Tower Shield": 0,
    "Eagle Shield": 0,
    "Black Iron Greatshield": 0,
    "Havel's Greatshield": 0,
    "Giant Shield": 0,
    "Cleansing Greatshield": 0,

    # BOSSES
    "Defeat 6 bosses": 0,
    "Defeat Capra Demon": 0,
    "Defeat Centipede Demon": 0,
    "Defeat Crossbreed Priscilla": 0,
    "Defeat Dark Sun Gwyndolin": 0,
    "Defeat Demon Firesage": 0,
    "Defeat Gaping Dragon": 0,
    "Defeat Moonlight Butterfly": 0,
    "Defeat Stray Demon": 0,
    "Defeat Taurus Demon": 0,

    # NPC INVADERS
    "Defeat Maneater Mildred": 0,
    "Defeat Paladin Leeroy": 0,
    "Defeat Xanthous King Jeremiah": 0,
    "Defeat Darkwraith Kirk": 0,
    "Defeat Marvelous Chester": 0,

    # LIGHT ARMOR SET
    "Obtain Shadow set": 0,
    "Obtain Black Sorcerer set": 0,
    "Obtain Maiden set": 0,
    "Obtain Antiquated set": 0,
    "Obtain Painting Guardian set": 0,
    "Obtain Dingy set": 0,
    "Obtain Gwyndolin Moonlight set": 0,
    "Obtain Big Hat's set": 0,
    "Obtain Gold-Hemmed Black set": 0,
    "Obtain Crimson set": 0,
    "Obtain Black set": 0,
    "Obtain Witch set": 0,
    "Obtain Xanthous set": 0,
    "Obtain Chain set": 0,
    "Obtain Chester's set": 0,
    "Obtain Lord's Blade set": 0,

    # MEDIUM ARMOR SET
    "Obtain Iron set": 0,
    "Obtain Eastern set": 0,
    "Obtain Adventureer's set": 0,
    "Obtain Balder set": 0,
    "Obtain Channeler's set": 0,
    "Obtain Thorns set": 0,
    "Obtain Dark set": 0,
    "Obtain Elite Knight set": 0,
    "Obtain Crystalline set": 0,
    "Obtain Brass set": 0,
    "Obtain Favor set": 0,
    "Obtain Catarina set": 0,
    "Obtain Silver Knight set": 0,
    "Obtain Black Knight set": 0,
    "Obtain Paladin set": 0,
    "Obtain Cleric set": 0,
    "Obtain Steel set": 0,
    "Obtain Artorias set": 0,
    "Obtain Gough's set": 0,

    # HEAVY ARMOR SET
    "Obtain Black Iron set": 0,
    "Obtain Giant Armor set": 0,
    "Obtain Havel's set": 0,
    "Obtain Iron Golem set": 0,
    "Obtain Stone Knight set": 0,
    "Obtain Guardian set": 0,

    # UNIQUE ARMOR
    "Obtain Royal Helm": 0,

    # CONSUMABLES
    "Divine Blessing (2)": 0,
    "Prism Stones (20)": 0,
    "Repair Powder (20)": 0,
    "Transient Curse(4)": 0,
    "Homeward Bone (20)": 0,
    "Green Blossom (10)": 0,
    "Bloodred Moss Clump (10)": 0,
    "Purple Moss Clump (10)": 0,
    "Blooming Purple Moss Clump (5)": 0,
    "Purging Stone (2)": 0,
    "Charcoal Pine Resin (5)": 0,
    "Rotten Pine Resin (5)": 0,
    "Gold Pine Resin (3)": 0,
    "Egg Vermifuge (5)": 0,
    "Fire Keeper Soul (1)": 0,

    # KEY ITEMS
    "Repairbox": 0,
    "Weapon Smithbox": 0,
    "Amor Smithbox": 0,
    "Bottomless Box": 0,
    "Rite of Kindling": 0,
    "Lordvessel": 0,
    "Soul of Four Kings": 0,
    "Soul of Seath the Scaleless": 0,
    "Soul of Gravelord Nito": 0,
    "Soul of Bed of Chaos": 0,

    # KEYS
    "Undead Asylum F2 West Key": 0,
    "Master Key": 0,
    "Residence Key": 0,
    "Mystery Key": 0,
    "Basement Key": 0,
    "Key to Depths": 0,
    "Sewer Chamber Key": 0,
    "Blighttown Key": 0,
    "Watchtower Basement Key": 0,
    "Key to New Londo Ruins": 0,
    "Key to the Seal": 0,
    "Cage Key": 0,
    "Archive Tower Cell Key": 0,
    "Archive Prison Extra Key": 0,
    "Archive Tower Giant Door Key": 0,
    "Archive Tower Giant Cell Key": 0,
    "Annex Key": 0,
    "Crest of Artorias": 0,
    "Peculiar Doll": 0,
    "Broken Pendant": 0,
    "Crest Key": 0,

    # MULTIPLAYER ITEMS
    "Orange Guidance Soapstone": 0,
    "White Sign Soapstone": 0,
    "Red Sign Soapstone": 0,
    "Cracked Red Eye Orb (5)": 0,
    "Red Eye Orb": 0,
    "Blue Eye Orb": 0,
    "Dried Finger": 0,
    "Book of the Guilty": 0,
    "Indictment": 0,
    "Servant Roster": 0,
    "Dragon Eye": 0,
    "Eye of Death (3)": 0,
    "Souvenir of Reprisal": 0,

    # ORES
    "Titanite Shard (5)": 0,
    "Large Titanite Shard (5)": 0,
    "Titanite Chunk (2)": 0,
    "Green Titanite Shard (5)": 0,
    "Twinkling Titanite (5)": 0,

    # PROJECTILES
    "Firebomb (20)": 0,
    "Black Firebomb (20)": 0,
    "Dung Pie (20)": 0,
    "Throwing Knife (99)": 0,
    "Poison Throwing Knife (20)": 0,
    "Alluring Skull (20)": 0,
    "Lloyd's Talisman (10)": 0,

    # SOULS
    "Soul of a Hero (1)": 0,
    "Soul of a Great Hero (1)": 0,

    # TOOLS
    "Skull Lantern": 0,
    "Binoculars": 0,
    "Dragon Head Stone": 0,
    "Dragon Torso Stone": 0,
    "Black Eye Orb": 0,
    "Silver Pendant": 0,

    # UNEQUIPPABLE
    "Rubbish (1)": 0,
    "Copper Coin": 0,
    "Silver Coin": 0,
    "Gold Coin": 0,

    ####################
    
    # CONVENANTS - 1
    "Join Warrior of Sunlight": 1,
    "Join Princess Guard": 1,
    "Join Way of White": 1,
    "Join Darkwraith": 1,
    "Join Forest Hunter": 1,
    "Join Path of the Dragon": 1,
    "Join Blade of the Dark Moon": 1,
    "Join Gravelord Servant": 1,
    "Join Chaos Servant": 1,

    # SOUL OF THE MOONLIGHT BUTTERFLY - 2
    "Soul of the Moonlight Butterfly": 2,
    "Moonlight Butterfly Horn": 2,
    "Crystal Ring Shield": 2,

    # SOUL OF QUELAAG - 3
    "Soul of Quelaag": 3,
    "Quelaag's Furysword": 3,
    "Chaos Blade": 3,

    # CORE OF AN IRON GOLEM - 4
    "Core of an Iron Golem": 4,
    "Dragon Bone Fist": 4,
    "Golem Axe": 4,

    # SOUL OF ORNSTEIN AND SMOUGH - 5
    "Soul of Ornstein": 5,
    "Dragonslayer Spear": 5,
    "Soul of Smough": 5,
    "Smough's Hammer": 5,
    "Obtain Ornstein's set": 5,
    "Obtain Smough's set": 5,
    
    # SOUL OF SIF - 6
    "Soul of Sif": 6,
    "Greatsword of Artorias": 6,
    "Cursed Greatsword of Artorias": 6,
    "Greatshield of Artorias": 6,

    # SOUL OF GWYNDOLIN - 7
    "Soul of Gwyndolin": 7,
    "Darkmoon Bow": 7,
    "Tin Darkmoon Catalyst": 7,

    # SOUL OF PRISCILLA - 8
    "Soul of Priscilla": 8,
    "Lifehunt Scythe": 8,

    # SOUL OF GWYN, LORD OF CINDER - 9
    "Soul of Gwyn, Lord of Cider": 9,
    
    # SOUL OF MANUS - 10
    "Soul of Manus": 10,
    "Manus Catalyst": 10,
    
    # SOUL OF ARTORIAS - 11
    "Soul of Artorias": 11,
    "Abyss Greatsword": 11,
    "Dark Silver Tracer": 11,
    "Gold Tracer": 11,
    
    # ATTRIBUTES - 12
    "36 Vitality": 12,
    "36 Attunement": 12,
    "36 Endurance": 12,
    "36 Strength": 12,
    "36 Dexterity": 12,
    "36 Resistance": 12,
    "36 Intelligence": 12,
    "36 Faith": 12,

    # FLAMES - 13
    "Pyromancy Flame": 13,
    "Pyromancy Flame (Upgraded)": 13,

    # PINWHEEL MASKS - 14
    "Obtain Mask of the Father": 14,
    "Obtain Mask of the Mother": 14,
    "Obtain Mask of the Child": 14,

    # WEAPON/ARMOR UPGRADES - 15
    "+10 Weapon (Normal)": 15,
    "+5 Weapon (Lightning)": 15,
    "+5 Weapon (Crystal)": 15,
    "+5 Weapon (Divine)": 15,
    "+5 Weapon (Occult)": 15,
    "+5 Weapon (Magic)": 15,
    "+5 Weapon (Enchanted)": 15,
    "+5 Weapon (Fire)": 15,
    "+5 Weapon (Chaos)": 15,
    "+5 Weapon (Dragon)": 15,
    "+5 Weapon (Raw)": 15,
    "+10 Shield (Normal)": 15,
    "+5 Shield (Lightning)": 15,
    "+5 Shield (Crystal)": 15,
    "+5 Shield (Divine)": 15,
    "+5 Shield (Magic)": 15,
    "+5 Shield (Fire)": 15,
    "+5 Shield (Dragon)": 15,
    "Large Ember": 15,
    "Very Large Ember": 15,
    "Divine Ember": 15,
    "Large Divine Ember": 15,
    "Dark Ember": 15,
    "Large Magic Ember": 15,
    "Enchanted Ember": 15,
    "Crystal Ember": 15,
    "Large Flame Ember": 15,
    "Chaos Flame Ember": 15,
}

# Dark Souls Classes
var ds_classes = [
    "Bandit",
    "Cleric",
    "Deprived",
    "Hunter",
    "Knight",
    "Pyromancer",
    "Sorcerer",
    "Thief",
    "Wanderer",
    "Warrior"
]

# Dark Souls Gifts
var ds_gifts = [
    "Binoculars",
    "Black Firebomb",
    "Divine Blessing",
    "Master Key",
    "Old Witch's Ring",
    "Pendant",
    "Tiny Being's Ring",
    "Twin Humanities"
]

# Return game specfic info for info label
func info():
    randomize()
    
    var current_class = ds_classes[randi() % ds_classes.size()]
    var current_gift = ds_gifts[randi() % ds_gifts.size()]
    var txt = "Class: [b]" + current_class + "[/b]\tGift: [b]" + current_gift + "[/b]"
    
    return txt
