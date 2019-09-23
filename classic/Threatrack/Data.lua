-- Stolen from Spy add-on by Immolation.
-- https://www.curseforge.com/wow/addons/spy

-- Constants.
--
local DWARF = "DWARF";
local GNOME = "GNOME";
local HUMAN = "HUMAN";
local NIGHTELF = "NIGHTELF";
local ORC = "ORC";
local SCOURGE = "SCOURGE";
local TAUREN = "TAUREN";
local TROLL = "TROLL";
local DRUID = "DRUID";
local HUNTER = "HUNTER";
local MAGE = "MAGE";
local PALADIN = "PALADIN";
local PRIEST = "PRIEST";
local ROGUE = "ROGUE";
local SHAMAN = "SHAMAN";
local WARLOCK = "WARLOCK";
local WARRIOR = "WARRIOR";

-- Relation data between ability name and race/class.
--
-- Stolen from Spy add-on by Immolation.
-- https://www.curseforge.com/wow/addons/spy
--
THREATRACK_SPELL_DATA = {
	-- Racial Traits
	["Shadowmeld"] = {NIGHTELF, nil, 1},
	["Blood Fury"] = {ORC, nil, 1},
	["Will of the Forsaken"] = {SCOURGE, nil, 1},
	["Stoneform"] = {DWARF, nil, 1},
	["Berserking"] = {TROLL, nil, 1},
	["Hardiness"] = {ORC, nil, 1},
	["Sword Specialization"] = {HUMAN, nil, 1},
	["Escape Artist"] = {GNOME, nil, 1},
	["The Human Spirit"] = {HUMAN, nil, 1},
	["Regeneration"] = {TROLL, nil, 1},
	["Perception"] = {HUMAN, nil, 1},
	["Endurance"] = {TAUREN, nil, 1},
	["Bow Specialization"] = {TROLL, nil, 1},
	["Cultivation"] = {TAUREN, nil, 1},
	["Engineering Specialization"] = {GNOME, nil, 1},
	["War Stomp"] = {TAUREN, nil, 1},
	["Beast Slaying"] = {TROLL, nil, 1},
	["Find Treasure"] = {DWARF, nil, 1},
	["Axe Specialization"] = {ORC, nil, 1},
	["Cannibalize"] = {SCOURGE, nil, 1},
	["Diplomacy"] = {HUMAN, nil, 1},
	["Quickness"] = {NIGHTELF, nil, 1},
	["Throwing Specialization"] = {TROLL, nil, 1},
	["Mace Specialization"] = {HUMAN, nil, 1},
	["Gun Specialization"] = {DWARF, nil, 1},
	["Underwater Breathing"] = {SCOURGE, nil, 1},
	["Command"] = {ORC, nil, 1},
	["Nature Resistance"] = {NIGHTELF, nil, 1},
	["Frost Resistance"] = {DWARF, nil, 1},
	["Shadow Resistance"] = {SCOURGE, nil, 1},
	["Arcane Resistance"] = {GNOME, nil, 1},
	["Wisp Spirit"] = {NIGHTELF, nil, 1},
	-- Druid
	["Healing Touch"] = {nil, DRUID, 1},
	["Mark of the Wild"] = {nil, DRUID, 1},
	["Wrath"] = {nil, DRUID, 1},
	["Moonfire"] = {nil, DRUID, 4},
	["Rejuvenation"] = {nil, DRUID, 4},
	["Thorns"] = {nil, DRUID, 6},
	["Entangling Roots"] = {nil, DRUID, 8},
	["Bear Form"] = {nil, DRUID, 10},
	["Demoralizing Roar"] = {nil, DRUID, 10},
	["Growl"] = {nil, DRUID, 10},
	["Maul"] = {nil, DRUID, 10},
	["Teleport: Moonglade"] = {nil, DRUID, 10},
	["Enrage"] = {nil, DRUID, 12},
	["Regrowth"] = {nil, DRUID, 12},
	["Bash"] = {nil, DRUID, 14},
	["Aquatic Form"] = {nil, DRUID, 16},
	["Swipe"] = {nil, DRUID, 16},
	["Faerie Fire"] = {nil, DRUID, 18},
	["Hibernate"] = {nil, DRUID, 18},
	["Cat Form"] = {nil, DRUID, 20},
	["Claw"] = {nil, DRUID, 20},
	["Prowl"] = {nil, DRUID, 20},
	["Rebirth"] = {nil, DRUID, 20},
	["Rip"] = {nil, DRUID, 20},
	["Starfire"] = {nil, DRUID, 20},
	["Shred"] = {nil, DRUID, 22},
	["Soothe Animal"] = {nil, DRUID, 22},
	["Rake"] = {nil, DRUID, 24},
	["Remove Curse"] = {nil, DRUID, 24},
	["Tiger's Fury"] = {nil, DRUID, 24},
	["Abolish Poison"] = {nil, DRUID, 26},
	["Dash"] = {nil, DRUID, 26},
	["Challenging Roar"] = {nil, DRUID, 28},
	["Cower"] = {nil, DRUID, 28},
	["Tranquility"] = {nil, DRUID, 30},
	["Travel Form"] = {nil, DRUID, 30},
	["Ferocious Bite"] = {nil, DRUID, 32},
	["Ravage"] = {nil, DRUID, 32},
	["Frenzied Regeneration"] = {nil, DRUID, 36},
	["Pounce"] = {nil, DRUID, 36},
	["Dire Bear Form"] = {nil, DRUID, 40},
	["Innervate"] = {nil, DRUID, 40},
	["Barkskin"] = {nil, DRUID, 44},
	["Barkskin Effect (DND)"] = {nil, DRUID, 44},
	["Gift of the Wild"] = {nil, DRUID, 50},
	["Nature's Grasp"] = {nil, DRUID, 10},
	["Feral Charge"] = {nil, DRUID, 20},
	["Insect Swarm"] = {nil, DRUID, 20},
	["Omen of Clarity"] = {nil, DRUID, 20},
	["Faerie Fire (Feral)"] = {nil, DRUID, 30},
	["Moonkin Form"] = {nil, DRUID, 40},
	["Swiftmend"] = {nil, DRUID, 40},
	-- Hunter
	["Readiness"] = {nil, HUNTER, 1},
	["Auto Shot"] = {nil, HUNTER, 1},
	["Raptor Strike"] = {nil, HUNTER, 1},
	["Track Beasts"] = {nil, HUNTER, 1},
	["Aspect of the Monkey"] = {nil, HUNTER, 4},
	["Serpent Sting"] = {nil, HUNTER, 4},
	["Arcane Shot"] = {nil, HUNTER, 6},
	["Hunter's Mark"] = {nil, HUNTER, 6},
	["Concussive Shot"] = {nil, HUNTER, 8},
	["Aspect of the Hawk"] = {nil, HUNTER, 10},
	["Call Pet"] = {nil, HUNTER, 10},
	["Dismiss Pet"] = {nil, HUNTER, 10},
	["Feed Pet"] = {nil, HUNTER, 10},
	["Revive Pet"] = {nil, HUNTER, 10},
	["Tame Beast"] = {nil, HUNTER, 10},
	["Distracting Shot"] = {nil, HUNTER, 12},
	["Mend Pet"] = {nil, HUNTER, 12},
	["Wing Clip"] = {nil, HUNTER, 12},
	["Eagle Eye"] = {nil, HUNTER, 14},
	["Eyes of the Beast"] = {nil, HUNTER, 14},
	["Scare Beast"] = {nil, HUNTER, 14},
	["Immolation Trap"] = {nil, HUNTER, 16},
	["Mongoose Bite"] = {nil, HUNTER, 16},
	["Multi-Shot"] = {nil, HUNTER, 18},
	["Track Undead"] = {nil, HUNTER, 18},
	["Aspect of the Cheetah"] = {nil, HUNTER, 20},
	["Disengage"] = {nil, HUNTER, 20},
	["Freezing Trap"] = {nil, HUNTER, 20},
	["Scorpid Sting"] = {nil, HUNTER, 22},
	["Beast Lore"] = {nil, HUNTER, 24},
	["Track Hidden"] = {nil, HUNTER, 24},
	["Rapid Fire"] = {nil, HUNTER, 26},
	["Track Elementals"] = {nil, HUNTER, 26},
	["Frost Trap"] = {nil, HUNTER, 28},
	["Aspect of the Beast"] = {nil, HUNTER, 30},
	["Feign Death"] = {nil, HUNTER, 30},
	["Flare"] = {nil, HUNTER, 32},
	["Track Demons"] = {nil, HUNTER, 32},
	["Explosive Trap"] = {nil, HUNTER, 34},
	["Viper Sting"] = {nil, HUNTER, 36},
	["Aspect of the Pack"] = {nil, HUNTER, 40},
	["Track Giants"] = {nil, HUNTER, 40},
	["Volley"] = {nil, HUNTER, 40},
	["Aspect of the Wild"] = {nil, HUNTER, 46},
	["Track Dragonkin"] = {nil, HUNTER, 50},
	["Tranquilizing Shot"] = {nil, HUNTER, 60},
	["Aimed Shot"] = {nil, HUNTER, 20},
	["Deterrence"] = {nil, HUNTER, 20},
	["Counterattack"] = {nil, HUNTER, 30},
	["Intimidation"] = {nil, HUNTER, 30},
	["Scatter Shot"] = {nil, HUNTER, 30},
	["Bestial Wrath"] = {nil, HUNTER, 40},
	["Trueshot Aura"] = {nil, HUNTER, 40},
	["Wyvern Sting"] = {nil, HUNTER, 40},
	-- Mage
	["Arcane Intellect"] = {nil, MAGE, 1},
	["Fireball"] = {nil, MAGE, 1},
	["Frost Armor"] = {nil, MAGE, 1},
	["Frostbolt"] = {nil, MAGE, 4},
	["Conjure Water"] = {nil, MAGE, 4},
	["Fire Blast"] = {nil, MAGE, 6},
	["Conjure Food"] = {nil, MAGE, 6},
	["Arcane Missiles"] = {nil, MAGE, 8},
	["Polymorph"] = {nil, MAGE, 8},
	["Frost Nova"] = {nil, MAGE, 10},
	["Dampen Magic"] = {nil, MAGE, 12},
	["Slow Fall"] = {nil, MAGE, 12},
	["Arcane Explosion"] = {nil, MAGE, 14},
	["Detect Magic"] = {nil, MAGE, 16},
	["Flamestrike"] = {nil, MAGE, 16},
	["Amplify Magic"] = {nil, MAGE, 18},
	["Remove Lesser Curse"] = {nil, MAGE, 18},
	["Blink"] = {nil, MAGE, 20},
	["Blizzard"] = {nil, MAGE, 20},
	["Evocation"] = {nil, MAGE, 20},
	["Fire Ward"] = {nil, MAGE, 20},
	["Mana Shield"] = {nil, MAGE, 20},
	["Teleport: Ironforge"] = {nil, MAGE, 20},
	["Teleport: Orgrimmar"] = {nil, MAGE, 20},
	["Teleport: Stormwind"] = {nil, MAGE, 20},
	["Teleport: Undercity"] = {nil, MAGE, 20},
	["Frost Ward"] = {nil, MAGE, 22},
	["Scorch"] = {nil, MAGE, 22},
	["Counterspell"] = {nil, MAGE, 24},
	["Cone of Cold"] = {nil, MAGE, 26},
	["Conjure Mana Agate"] = {nil, MAGE, 28},
	["Ice Armor"] = {nil, MAGE, 30},
	["Teleport: Darnassus"] = {nil, MAGE, 30},
	["Teleport: Thunder Bluff"] = {nil, MAGE, 30},
	["Mage Armor"] = {nil, MAGE, 34},
	["Conjure Mana Jade"] = {nil, MAGE, 38},
	["Portal: Ironforge"] = {nil, MAGE, 40},
	["Portal: Orgrimmar"] = {nil, MAGE, 40},
	["Portal: Stormwind"] = {nil, MAGE, 40},
	["Portal: Undercity"] = {nil, MAGE, 40},
	["Conjure Mana Citrine"] = {nil, MAGE, 48},
	["Portal: Darnassus"] = {nil, MAGE, 50},
	["Portal: Thunder Bluff"] = {nil, MAGE, 50},
	["Arcane Brilliance"] = {nil, MAGE, 56},
	["Conjure Mana Ruby"] = {nil, MAGE, 58},
	["Polymorph: Cow"] = {nil, MAGE, 60},
	["Polymorph: Pig"] = {nil, MAGE, 60},
	["Polymorph: Turtle"] = {nil, MAGE, 60},
	["Cold Snap"] = {nil, MAGE, 20},
	["Pyroblast"] = {nil, MAGE, 20},
	["Blast Wave"] = {nil, MAGE, 30},
	["Ice Block"] = {nil, MAGE, 30},
	["Presence of Mind"] = {nil, MAGE, 30},
	["Arcane Power"] = {nil, MAGE, 40},
	["Combustion"] = {nil, MAGE, 40},
	["Ice Barrier"] = {nil, MAGE, 40},
	-- Paladin
	["Devotion Aura"] = {nil, PALADIN, 1},
	["Holy Light"] = {nil, PALADIN, 1},
	["Seal of Righteousness"] = {nil, PALADIN, 1},
	["Blessing of Might"] = {nil, PALADIN, 4},
	["Judgement"] = {nil, PALADIN, 4},
	["Divine Protection"] = {nil, PALADIN, 6},
	["Seal of the Crusader"] = {nil, PALADIN, 6},
	["Hammer of Justice"] = {nil, PALADIN, 8},
	["Purify"] = {nil, PALADIN, 8},
	["Blessing of Protection"] = {nil, PALADIN, 10},
	["Lay on Hands"] = {nil, PALADIN, 10},
	["Redemption"] = {nil, PALADIN, 12},
	["Blessing of Wisdom"] = {nil, PALADIN, 14},
	["Retribution Aura"] = {nil, PALADIN, 16},
	["Righteous Fury"] = {nil, PALADIN, 16},
	["Blessing of Freedom"] = {nil, PALADIN, 18},
	["Exorcism"] = {nil, PALADIN, 20},
	["Flash of Light"] = {nil, PALADIN, 20},
	["Sense Undead"] = {nil, PALADIN, 20},
	["Concentration Aura"] = {nil, PALADIN, 22},
	["Seal of Justice"] = {nil, PALADIN, 22},
	["Turn Undead"] = {nil, PALADIN, 24},
	["Blessing of Salvation"] = {nil, PALADIN, 26},
	["Shadow Resistance Aura"] = {nil, PALADIN, 28},
	["Divine Intervention"] = {nil, PALADIN, 30},
	["Seal of Light"] = {nil, PALADIN, 30},
	["Frost Resistance Aura"] = {nil, PALADIN, 32},
	["Divine Shield"] = {nil, PALADIN, 34},
	["Fire Resistance Aura"] = {nil, PALADIN, 36},
	["Seal of Wisdom"] = {nil, PALADIN, 38},
	["Blessing of Light"] = {nil, PALADIN, 40},
	["Summon Warhorse"] = {nil, PALADIN, 40},
	["Cleanse"] = {nil, PALADIN, 42},
	["Hammer of Wrath"] = {nil, PALADIN, 44},
	["Blessing of Sacrifice"] = {nil, PALADIN, 46},
	["Holy Wrath"] = {nil, PALADIN, 50},
	["Greater Blessing of Might"] = {nil, PALADIN, 52},
	["Greater Blessing of Wisdom"] = {nil, PALADIN, 54},
	["Greater Blessing of Kings"] = {nil, PALADIN, 60},
	["Greater Blessing of Light"] = {nil, PALADIN, 60},
	["Greater Blessing of Salvation"] = {nil, PALADIN, 60},
	["Greater Blessing of Sanctuary"] = {nil, PALADIN, 60},
	["Summon Charger"] = {nil, PALADIN, 60},
	["Blessing of Kings"] = {nil, PALADIN, 20},
	["Consecration"] = {nil, PALADIN, 20},
	["Seal of Command"] = {nil, PALADIN, 20},
	["Blessing of Sanctuary"] = {nil, PALADIN, 30},
	["Divine Favor"] = {nil, PALADIN, 30},
	["Sanctity Aura"] = {nil, PALADIN, 30},
	["Holy Shield"] = {nil, PALADIN, 40},
	["Holy Shock"] = {nil, PALADIN, 40},
	["Repentance"] = {nil, PALADIN, 40},
	-- Priest
	["Lesser Heal"] = {nil, PRIEST, 1},
	["Power Word: Fortitude"] = {nil, PRIEST, 1},
	["Smite"] = {nil, PRIEST, 1},
	["Shadow Word: Pain"] = {nil, PRIEST, 4},
	["Power Word: Shield"] = {nil, PRIEST, 6},
	["Fade"] = {nil, PRIEST, 8},
	["Renew"] = {nil, PRIEST, 8},
	["Desperate Prayer"] = {nil, PRIEST, 10},
	["Hex of Weakness"] = {nil, PRIEST, 10},
	["Mind Blast"] = {nil, PRIEST, 10},
	["Resurrection"] = {nil, PRIEST, 10},
	["Starshards"] = {nil, PRIEST, 10},
	["Touch of Weakness"] = {nil, PRIEST, 10},
	["Inner Fire"] = {nil, PRIEST, 12},
	["Psychic Scream"] = {nil, PRIEST, 14},
	["Heal"] = {nil, PRIEST, 16},
	["Dispel Magic"] = {nil, PRIEST, 18},
	["Devouring Plague"] = {nil, PRIEST, 20},
	["Elune's Grace"] = {nil, PRIEST, 20},
	["Fear Ward"] = {nil, PRIEST, 20},
	["Feedback"] = {nil, PRIEST, 20},
	["Flash Heal"] = {nil, PRIEST, 20},
	["Holy Fire"] = {nil, PRIEST, 20},
	["Mind Soothe"] = {nil, PRIEST, 20},
	["Shackle Undead"] = {nil, PRIEST, 20},
	["Shadowguard"] = {nil, PRIEST, 20},
	["Mind Vision"] = {nil, PRIEST, 22},
	["Mana Burn"] = {nil, PRIEST, 24},
	["Mind Control"] = {nil, PRIEST, 30},
	["Prayer of Healing"] = {nil, PRIEST, 30},
	["Shadow Protection"] = {nil, PRIEST, 30},
	["Abolish Disease"] = {nil, PRIEST, 32},
	["Levitate"] = {nil, PRIEST, 34},
	["Greater Heal"] = {nil, PRIEST, 40},
	["Prayer of Fortitude"] = {nil, PRIEST, 48},
	["Prayer of Shadow Protection"] = {nil, PRIEST, 56},
	["Prayer of Spirit"] = {nil, PRIEST, 60},
	["Holy Nova"] = {nil, PRIEST, 20},
	["Inner Focus"] = {nil, PRIEST, 20},
	["Mind Flay"] = {nil, PRIEST, 20},
	["Divine Spirit"] = {nil, PRIEST, 30},
	["Silence"] = {nil, PRIEST, 30},
	["Vampiric Embrace"] = {nil, PRIEST, 30},
	["Lightwell"] = {nil, PRIEST, 40},
	["Power Infusion"] = {nil, PRIEST, 40},
	["Shadowform"] = {nil, PRIEST, 40},
	-- Rogue
	["Eviscerate"] = {nil, ROGUE, 1},
	["Pick Lock"] = {nil, ROGUE, 1},
	["Sinister Strike"] = {nil, ROGUE, 1},
	["Stealth"] = {nil, ROGUE, 1},
	["Backstab"] = {nil, ROGUE, 4},
	["Pick Pocket"] = {nil, ROGUE, 4},
	["Gouge"] = {nil, ROGUE, 6},
	["Evasion"] = {nil, ROGUE, 8},
	["Sap"] = {nil, ROGUE, 10},
	["Slice and Dice"] = {nil, ROGUE, 10},
	["Sprint"] = {nil, ROGUE, 10},
	["Kick"] = {nil, ROGUE, 12},
	["Expose Armor"] = {nil, ROGUE, 14},
	["Garrote"] = {nil, ROGUE, 14},
	["Feint"] = {nil, ROGUE, 16},
	["Ambush"] = {nil, ROGUE, 18},
	["Poisons"] = {nil, ROGUE, 20},
	["Rupture"] = {nil, ROGUE, 20},
	["Crippling Poison"] = {nil, ROGUE, 20},
	["Instant Poison"] = {nil, ROGUE, 20},
	["Distract"] = {nil, ROGUE, 22},
	["Vanish"] = {nil, ROGUE, 22},
	["Detect Traps"] = {nil, ROGUE, 24},
	["Mind-numbing Poison"] = {nil, ROGUE, 24},
	["Cheap Shot"] = {nil, ROGUE, 26},
	["Disarm Trap"] = {nil, ROGUE, 30},
	["Kidney Shot"] = {nil, ROGUE, 30},
	["Deadly Poison"] = {nil, ROGUE, 30},
	["Wound Poison"] = {nil, ROGUE, 32},
	["Blind"] = {nil, ROGUE, 34},
	["Blinding Powder"] = {nil, ROGUE, 34},
	["Safe Fall"] = {nil, ROGUE, 40},
	["Ghostly Strike"] = {nil, ROGUE, 20},
	["Riposte"] = {nil, ROGUE, 20},
	["Blade Furry"] = {nil, ROGUE, 30},
	["Cold Blood"] = {nil, ROGUE, 30},
	["Hemorrhage"] = {nil, ROGUE, 30},
	["Preparation"] = {nil, ROGUE, 30},
	["Adrenaline Rush"] = {nil, ROGUE, 40},
	["Premeditation"] = {nil, ROGUE, 40},
	-- Shaman
	["Healing Wave"] = {nil, SHAMAN, 1},
	["Lightning Bolt"] = {nil, SHAMAN, 1},
	["Rockbiter Weapon"] = {nil, SHAMAN, 1},
	["Earth Shock"] = {nil, SHAMAN, 4},
	["Stoneskin Totem"] = {nil, SHAMAN, 4},
	["Earthbind Totem"] = {nil, SHAMAN, 6},
	["Lightning Shield"] = {nil, SHAMAN, 8},
	["Stoneclaw Totem"] = {nil, SHAMAN, 8},
	["Flame Shock"] = {nil, SHAMAN, 10},
	["Flametongue Weapon"] = {nil, SHAMAN, 10},
	["Searing Totem"] = {nil, SHAMAN, 10},
	["Strength of Earth Totem"] = {nil, SHAMAN, 10},
	["Ancestral Spirit"] = {nil, SHAMAN, 12},
	["Fire Nova Totem"] = {nil, SHAMAN, 12},
	["Purge"] = {nil, SHAMAN, 12},
	["Tremor Totem"] = {nil, SHAMAN, 18},
	["Frost Shock"] = {nil, SHAMAN, 20},
	["Frostbrand Weapon"] = {nil, SHAMAN, 20},
	["Ghost Wolf"] = {nil, SHAMAN, 20},
	["Healing Stream Totem"] = {nil, SHAMAN, 20},
	["Lesser Healing Wave"] = {nil, SHAMAN, 20},
	["Poison Cleansing Totem"] = {nil, SHAMAN, 22},
	["Water Breathing"] = {nil, SHAMAN, 22},
	["Frost Resistance Totem"] = {nil, SHAMAN, 24},
	["Far Sight"] = {nil, SHAMAN, 26},
	["Magma Totem"] = {nil, SHAMAN, 26},
	["Mana Spring Totem"] = {nil, SHAMAN, 26},
	["Fire Resistance Totem"] = {nil, SHAMAN, 28},
	["Flametongue Totem"] = {nil, SHAMAN, 28},
	["Water Walking"] = {nil, SHAMAN, 28},
	["Astral Recall"] = {nil, SHAMAN, 30},
	["Grounding Totem"] = {nil, SHAMAN, 30},
	["Nature Resistance Totem"] = {nil, SHAMAN, 30},
	["Reincarnation"] = {nil, SHAMAN, 30},
	["Windfury Weapon"] = {nil, SHAMAN, 30},
	["Chain Lightning"] = {nil, SHAMAN, 32},
	["Windfury Totem"] = {nil, SHAMAN, 32},
	["Sentry Totem"] = {nil, SHAMAN, 34},
	["Windwall Totem"] = {nil, SHAMAN, 36},
	["Disease Cleansing Totem"] = {nil, SHAMAN, 38},
	["Chain Heal"] = {nil, SHAMAN, 40},
	["Grace of Air Totem"] = {nil, SHAMAN, 42},
	["Tranquil Air Totem"] = {nil, SHAMAN, 50},
	["Parry"] = {nil, SHAMAN, 30},
	["Elemental Mastery"] = {nil, SHAMAN, 40},
	["Mana Tide Totem"] = {nil, SHAMAN, 40},
	["Stormstrike"] = {nil, SHAMAN, 40},
	-- Warlock
	["Demon Skin"] = {nil, WARLOCK, 1},
	["Immolate"] = {nil, WARLOCK, 1},
	["Shadow Bolt"] = {nil, WARLOCK, 1},
	["Summon Imp"] = {nil, WARLOCK, 1},
	["Corruption"] = {nil, WARLOCK, 4},
	["Curse of Weakness"] = {nil, WARLOCK, 4},
	["Life Tap"] = {nil, WARLOCK, 6},
	["Curse of Agony"] = {nil, WARLOCK, 8},
	["Fear"] = {nil, WARLOCK, 8},
	["Create Healthstone (Minor)"] = {nil, WARLOCK, 10},
	["Drain Soul"] = {nil, WARLOCK, 10},
	["Summon Voidwalker"] = {nil, WARLOCK, 10},
	["Health Funnel"] = {nil, WARLOCK, 12},
	["Curse of Recklessness"] = {nil, WARLOCK, 14},
	["Drain Life"] = {nil, WARLOCK, 14},
	["Unending Breath"] = {nil, WARLOCK, 16},
	["Searing Pain"] = {nil, WARLOCK, 18},
	["Create Soulstone (Minor)"] = {nil, WARLOCK, 18},
	["Demon Armor"] = {nil, WARLOCK, 20},
	["Rain of Fire"] = {nil, WARLOCK, 20},
	["Ritual of Summoning"] = {nil, WARLOCK, 20},
	["Summon Succubus"] = {nil, WARLOCK, 20},
	["Create Healthstone (Lesser)"] = {nil, WARLOCK, 22},
	["Eye of Kilrogg"] = {nil, WARLOCK, 22},
	["Drain Mana"] = {nil, WARLOCK, 24},
	["Sense Demons"] = {nil, WARLOCK, 24},
	["Curse of Tongues"] = {nil, WARLOCK, 26},
	["Detect Lesser Invisibility"] = {nil, WARLOCK, 26},
	["Banish"] = {nil, WARLOCK, 28},
	["Create Firestone (Lesser)"] = {nil, WARLOCK, 28},
	["Enslave Demon"] = {nil, WARLOCK, 30},
	["Hellfire"] = {nil, WARLOCK, 30},
	["Summon Felhunter"] = {nil, WARLOCK, 30},
	["Create Soulstone (Lesser)"] = {nil, WARLOCK, 30},
	["Curse of the Elements"] = {nil, WARLOCK, 32},
	["Shadow Ward"] = {nil, WARLOCK, 32},
	["Create Healthstone"] = {nil, WARLOCK, 34},
	["Create Firestone"] = {nil, WARLOCK, 36},
	["Create Spellstone"] = {nil, WARLOCK, 36},
	["Detect Invisibility"] = {nil, WARLOCK, 38},
	["Howl of Terror"] = {nil, WARLOCK, 40},
	["Summon Felsteed"] = {nil, WARLOCK, 40},
	["Create Soulstone"] = {nil, WARLOCK, 40},
	["Death Coil"] = {nil, WARLOCK, 42},
	["Curse of Shadow"] = {nil, WARLOCK, 44},
	["Create Healthstone (Greater)"] = {nil, WARLOCK, 46},
	["Create Firestone (Greater)"] = {nil, WARLOCK, 46},
	["Soul Fire"] = {nil, WARLOCK, 48},
	["Create Spellstone (Greater)"] = {nil, WARLOCK, 48},
	["Detect Greater Invisibility"] = {nil, WARLOCK, 50},
	["Inferno"] = {nil, WARLOCK, 50},
	["Create Soulstone (Greater)"] = {nil, WARLOCK, 50},
	["Create Firestone (Major)"] = {nil, WARLOCK, 56},
	["Create Healthstone (Major)"] = {nil, WARLOCK, 58},
	["Curse of Doom"] = {nil, WARLOCK, 60},
	["Ritual of Doom"] = {nil, WARLOCK, 60},
	["Summon Dreadsteed"] = {nil, WARLOCK, 60},
	["Create Soulstone (Major)"] = {nil, WARLOCK, 60},
	["Create Spellstone (Major)"] = {nil, WARLOCK, 60},
	["Amplify Curse"] = {nil, WARLOCK, 20},
	["Fel Domination"] = {nil, WARLOCK, 20},
	["Shadowburn"] = {nil, WARLOCK, 20},
	["Curse of Exhaustion"] = {nil, WARLOCK, 30},
	["Demonic Sacrifice"] = {nil, WARLOCK, 30},
	["Siphon Life"] = {nil, WARLOCK, 30},
	["Conflagrate"] = {nil, WARLOCK, 40},
	["Dark Pact"] = {nil, WARLOCK, 40},
	["Soul Link"] = {nil, WARLOCK, 40},
	-- Warrior
	["Battle Shout"] = {nil, WARRIOR, 1},
	["Battle Stance"] = {nil, WARRIOR, 1},
	["Heroic Strike"] = {nil, WARRIOR, 1},
	["Improved Pummel"] = {nil, WARRIOR, 1},
	["Charge"] = {nil, WARRIOR, 4},
	["Rend"] = {nil, WARRIOR, 4},
	["Thunder Clap"] = {nil, WARRIOR, 6},
	["Hamstring"] = {nil, WARRIOR, 8},
	["Bloodrage"] = {nil, WARRIOR, 10},
	["Defensive Stance"] = {nil, WARRIOR, 10},
	["Sunder Armor"] = {nil, WARRIOR, 10},
	["Taunt"] = {nil, WARRIOR, 10},
	["Overpower"] = {nil, WARRIOR, 12},
	["Shield Bash"] = {nil, WARRIOR, 12},
	["Demoralizing Shout"] = {nil, WARRIOR, 14},
	["Revenge"] = {nil, WARRIOR, 14},
	["Mocking Blow"] = {nil, WARRIOR, 16},
	["Shield Block"] = {nil, WARRIOR, 16},
	["Disarm"] = {nil, WARRIOR, 18},
	["Cleave"] = {nil, WARRIOR, 20},
	["Retaliation"] = {nil, WARRIOR, 20},
	["Intimidating Shout"] = {nil, WARRIOR, 22},
	["Execute"] = {nil, WARRIOR, 24},
	["Challenging Shout"] = {nil, WARRIOR, 26},
	["Shield Wall"] = {nil, WARRIOR, 28},
	["Berserker Stance"] = {nil, WARRIOR, 30},
	["Intercept"] = {nil, WARRIOR, 30},
	["Slam"] = {nil, WARRIOR, 30},
	["Berserker Rage"] = {nil, WARRIOR, 32},
	["Whirlwind"] = {nil, WARRIOR, 36},
	["Pummel"] = {nil, WARRIOR, 38},
	["Recklessness"] = {nil, WARRIOR, 50},
	["Last Stand"] = {nil, WARRIOR, 20},
	["Piercing Howl"] = {nil, WARRIOR, 20},
	["Concussion Blow"] = {nil, WARRIOR, 30},
	["Death Wish"] = {nil, WARRIOR, 30},
	["Sweeping Strikes"] = {nil, WARRIOR, 30},
	["Bloodthirst"] = {nil, WARRIOR, 40},
	["Mortal Strike"] = {nil, WARRIOR, 40},
	["Shield Slam"] = {nil, WARRIOR, 40}
};

THREATRACK_PET_SPELL_DATA = {
	-- Warlocks' Imp
	["Firebolt"] = {nil, WARLOCK, 1},
	["Blood Pact"] = {nil, WARLOCK, 4},
	["Phase Shift"] = {nil, WARLOCK, 12},
	["Fire Shield"] = {nil, WARLOCK, 14},
	-- Warlocks' Voidwalker
	["Torment"] = {nil, WARLOCK, 10},
	["Sacrifice"] = {nil, WARLOCK, 16},
	["Consume Shadows"] = {nil, WARLOCK, 18},
	["Suffering"] = {nil, WARLOCK, 24},
	-- Warlocks' Succubus
	["Lash of Pain"] = {nil, WARLOCK, 20},
	["Soothing Kiss"] = {nil, WARLOCK, 22},
	["Seduction"] = {nil, WARLOCK, 26},
	["Lesser Invisibility"] = {nil, WARLOCK, 32},
	-- Warlocks' Felhunter
	["Devour Magic"] = {nil, WARLOCK, 30},
	["Tainted Blood"] = {nil, WARLOCK, 32},
	["Spell Lock"] = {nil, WARLOCK, 36},
	["Paranoia"] = {nil, WARLOCK, 42},
	-- Hunter's Pets
	["Growl"] = {nil, HUNTER, 1},
	["Great Stamina"] = {nil, HUNTER, 1},
	["Natural Armor"] = {nil, HUNTER, 1},
	["Claw"] = {nil, HUNTER, 1},
	["Charge"] = {nil, HUNTER, 1},
	["Bite"] = {nil, HUNTER, 1},
	["Lightning Breath"] = {nil, HUNTER, 1},
	["Cower"] = {nil, HUNTER, 5},
	["Scorpid Poison"] = {nil, HUNTER, 8},
	["Cobra Reflexes"] = {nil, HUNTER, 10},
	["Furious Howl"] = {nil, HUNTER, 10},
	["Shell Shield"] = {nil, HUNTER, 20},
	["Shadow Resistance"] = {nil, HUNTER, 20},
	["Fire Resistance"] = {nil, HUNTER, 20},
	["Frost Resistance"] = {nil, HUNTER, 20},
	["Arcane Resistance"] = {nil, HUNTER, 20},
	["Nature Resistance"] = {nil, HUNTER, 20},
	["Dash"] = {nil, HUNTER, 30},
	["Prowl"] = {nil, HUNTER, 30},
	["Dive"] = {nil, HUNTER, 30},
	["Thunderstomp"] = {nil, HUNTER, 30}
};
