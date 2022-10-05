-- npc professions tailor
DELETE FROM `gossip_menu_option` WHERE `MenuID` IN (8530,8531,8532) AND `OptionID` IN (1,2);
INSERT INTO `gossip_menu_option`(`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES
(8531, 1, 0, 'Please teach me how to become a Spellcloth tailor', 20241, 0, 0, 0, 0, 0, 200000, '*WARNING!* You can only select one tailoring specialization.', 20246, 0),
(8531, 2, 0, 'I wish to unlearn Spellfire Tailoring', 21566, 0, 0, 0, 0, 0, 1500000, 'Forgetting your skill in Spellfire Tailoring is not something to do lightly.  If you choose to abandon it you will forget all recipes that require Spellfire Tailoring to create!$b$bAre you absolutely sure?', 21660, 0),
(8530, 1, 0, 'Please teach me how to become a Mooncloth tailor', 20240, 0, 0, 0, 0, 0, 200000, '*WARNING!* You can only select one tailoring specialization.', 20247, 0),
(8530, 2, 0, 'I wish to unlearn Mooncloth Tailoring', 21659, 0, 0, 0, 0, 0, 1500000, 'Forgetting your skill in Mooncloth Tailoring is not something to do lightly.  If you choose to abandon it you will forget all recipes that require Mooncloth Tailoring to create!$b$bAre you absolutely sure?', 21662, 0),
(8532, 1, 0, 'Please teach me how to become a Shadoweave tailor', 20237, 0, 0, 0, 0, 0, 200000, '*WARNING!* You can only select one tailoring specialization.', 20248, 0),
(8532, 2, 0, 'I wish to unlearn Shadoweave Tailoring', 21658, 0, 0, 0, 0, 0, 1500000, 'Forgetting your skill in Shadoweave Tailoring is not something to do lightly.  If you choose to abandon it you will forget all recipes that require Shadoweave Tailoring to create!$b$bAre you absolutely sure?', 21661, 0);

-- npc professions alchemy (https://tbc.wowhead.com/spell=41564/unlearn-elixir-mastery#comments)
UPDATE `creature_template` SET `ScriptName`='npc_prof_alchemy' WHERE `entry` IN (17909,19052,22427);
DELETE FROM `gossip_menu_option` WHERE `MenuID` IN (7571,8540,8542) AND `OptionID` IN (1,2);
INSERT INTO `gossip_menu_option`(`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES
(8542, 1, 0, 'I\'ve trained as an alchemist once again.  I wish to specialize in transmutations.', 20292, 0, 0, 0, 0, 0, 200000, NULL, 0, 0),
(8542, 2, 0, 'I wish to unlearn Transmutation Mastery.', 21876, 0, 0, 0, 0, 0, 1500000, 'Forgetting your skill in Transmutation Mastery is not something to do lightly.Are you absolutely sure?', 21872, 0),
(8540, 1, 0, 'I\'ve trained as an alchemist once again.  I wish to specialize in elixirs.', 20289, 0, 0, 0, 0, 0, 200000, NULL, 0, 0),
(8540, 2, 0, 'I wish to unlearn Elixir Mastery.', 21875, 0, 0, 0, 0, 0, 1500000, 'Forgetting your skill in Elixir Mastery is not something to do lightly.Are you absolutely sure?', 21871, 0),
(7571, 1, 0, 'I\'ve trained as an alchemist once again.  I wish to specialize in potions.', 20287, 0, 0, 0, 0, 0, 200000, NULL, 0, 0),
(7571, 2, 0, 'I wish to unlearn Potion Mastery.', 21874, 0, 0, 0, 0, 0, 1500000, 'Forgetting your skill in Potion Mastery is not something to do lightly.Are you absolutely sure?', 21870, 0);

-- npc professions leatherworking
UPDATE `creature_template` SET `gossip_menu_id`=3071 WHERE `entry`=7871;
DELETE FROM `gossip_menu_option` WHERE `MenuID` IN (3067,3068,3069,3070,3071,3072) AND `OptionID` IN (1,2,3,4);
INSERT INTO `gossip_menu_option`(`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES
(3067, 1, 0, 'I am absolutely certain that I want to learn dragonscale leatherworking.', 11889, 0, 0, 0, 0, 0, 200000, NULL, 0, 0),
(3067, 2, 0, 'I wish to unlearn dragonscale leatherworking!', 18977, 0, 0, 0, 0, 0, 250000, 'Forgetting dragonscale leatherworking is not something to do lightly.  If you choose to abandon it you will forget all recipes that require dragonscale leatherworking as well!', 18976, 0),
(3067, 3, 0, 'I wish to unlearn dragonscale leatherworking!', 18977, 0, 0, 0, 0, 0, 500000, 'Forgetting dragonscale leatherworking is not something to do lightly.  If you choose to abandon it you will forget all recipes that require dragonscale leatherworking as well!', 18976, 0),
(3067, 4, 0, 'I wish to unlearn dragonscale leatherworking!', 18977, 0, 0, 0, 0, 0, 1000000, 'Forgetting dragonscale leatherworking is not something to do lightly.  If you choose to abandon it you will forget all recipes that require dragonscale leatherworking as well!', 18976, 0),
(3068, 1, 0, 'I am absolutely certain that I want to learn dragonscale leatherworking.', 11889, 0, 0, 0, 0, 0, 200000, NULL, 0, 0),
(3068, 2, 0, 'I wish to unlearn dragonscale leatherworking!', 18977, 0, 0, 0, 0, 0, 250000, 'Forgetting dragonscale leatherworking is not something to do lightly.  If you choose to abandon it you will forget all recipes that require dragonscale leatherworking as well!', 18976, 0),
(3068, 3, 0, 'I wish to unlearn dragonscale leatherworking!', 18977, 0, 0, 0, 0, 0, 500000, 'Forgetting dragonscale leatherworking is not something to do lightly.  If you choose to abandon it you will forget all recipes that require dragonscale leatherworking as well!', 18976, 0),
(3068, 4, 0, 'I wish to unlearn dragonscale leatherworking!', 18977, 0, 0, 0, 0, 0, 1000000, 'Forgetting dragonscale leatherworking is not something to do lightly.  If you choose to abandon it you will forget all recipes that require dragonscale leatherworking as well!', 18976, 0),
(3070, 1, 0, 'I am absolutely certain that I want to learn elemental leatherworking.', 11890, 0, 0, 0, 0, 0, 200000, NULL, 0, 0),
(3070, 2, 0, 'I wish to unlearn elemental leatherworking!', 18917, 0, 0, 0, 0, 0, 250000, 'Forgetting elemental leatherworking is not something to do lightly.  If you choose to abandon it you will forget all recipes that require elemental leatherworking as well!', 18923, 0),
(3070, 3, 0, 'I wish to unlearn elemental leatherworking!', 18917, 0, 0, 0, 0, 0, 500000, 'Forgetting elemental leatherworking is not something to do lightly.  If you choose to abandon it you will forget all recipes that require elemental leatherworking as well!', 18923, 0),
(3070, 4, 0, 'I wish to unlearn elemental leatherworking!', 18917, 0, 0, 0, 0, 0, 1000000, 'Forgetting elemental leatherworking is not something to do lightly.  If you choose to abandon it you will forget all recipes that require elemental leatherworking as well!', 18923, 0),
(3069, 1, 0, 'I am absolutely certain that I want to learn elemental leatherworking.', 11890, 0, 0, 0, 0, 0, 200000, NULL, 0, 0),
(3069, 2, 0, 'I wish to unlearn elemental leatherworking!', 18917, 0, 0, 0, 0, 0, 250000, 'Forgetting elemental leatherworking is not something to do lightly.  If you choose to abandon it you will forget all recipes that require elemental leatherworking as well!', 18923, 0),
(3069, 3, 0, 'I wish to unlearn elemental leatherworking!', 18917, 0, 0, 0, 0, 0, 500000, 'Forgetting elemental leatherworking is not something to do lightly.  If you choose to abandon it you will forget all recipes that require elemental leatherworking as well!', 18923, 0),
(3069, 4, 0, 'I wish to unlearn elemental leatherworking!', 18917, 0, 0, 0, 0, 0, 1000000, 'Forgetting elemental leatherworking is not something to do lightly.  If you choose to abandon it you will forget all recipes that require elemental leatherworking as well!', 18923, 0),
(3072, 1, 0, 'I am absolutely certain that I want to learn tribal leatherworking.', 11891, 0, 0, 0, 0, 0, 200000, NULL, 0, 0),
(3072, 2, 0, 'I wish to unlearn tribal leatherworking!', 18975, 0, 0, 0, 0, 0, 250000, 'Forgetting tribal leatherworking is not something to do lightly.  If you choose to abandon it you will forget all recipes that require tribal leatherworking as well!', 18974, 0),
(3072, 3, 0, 'I wish to unlearn tribal leatherworking!', 18975, 0, 0, 0, 0, 0, 500000, 'Forgetting tribal leatherworking is not something to do lightly.  If you choose to abandon it you will forget all recipes that require tribal leatherworking as well!', 18974, 0),
(3072, 4, 0, 'I wish to unlearn tribal leatherworking!', 18975, 0, 0, 0, 0, 0, 1000000, 'Forgetting tribal leatherworking is not something to do lightly.  If you choose to abandon it you will forget all recipes that require tribal leatherworking as well!', 18974, 0),
(3071, 1, 0, 'I am absolutely certain that I want to learn tribal leatherworking.', 11891, 0, 0, 0, 0, 0, 200000, NULL, 0, 0),
(3071, 2, 0, 'I wish to unlearn tribal leatherworking!', 18975, 0, 0, 0, 0, 0, 250000, 'Forgetting tribal leatherworking is not something to do lightly.  If you choose to abandon it you will forget all recipes that require tribal leatherworking as well!', 18974, 0),
(3071, 3, 0, 'I wish to unlearn tribal leatherworking!', 18975, 0, 0, 0, 0, 0, 500000, 'Forgetting tribal leatherworking is not something to do lightly.  If you choose to abandon it you will forget all recipes that require tribal leatherworking as well!', 18974, 0),
(3071, 4, 0, 'I wish to unlearn tribal leatherworking!', 18975, 0, 0, 0, 0, 0, 1000000, 'Forgetting tribal leatherworking is not something to do lightly.  If you choose to abandon it you will forget all recipes that require tribal leatherworking as well!', 18974, 0);

-- npc professions blacksmithing
DELETE FROM `gossip_menu_option` WHERE `MenuID` IN (3182,3187,3201,3202,597,3203) AND `OptionID` IN (1,2);
DELETE FROM `gossip_menu_option` WHERE `MenuID` IN (6090,6089,6091) AND `OptionID` IN (1,2,3,4);
INSERT INTO `gossip_menu_option`(`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES
(3182, 1, 0, 'I wish to become a weaponsmith.', 6477, 0, 0, 0, 0, 0, 0, NULL, 0, 0),
(3182, 2, 0, 'I wish to become an armorsmith.', 6476, 0, 0, 0, 0, 0, 0, NULL, 0, 0),
(3187, 1, 0, 'I wish to become a weaponsmith.', 6477, 0, 0, 0, 0, 0, 0, NULL, 0, 0),
(3187, 2, 0, 'I wish to become an armorsmith.', 6476, 0, 0, 0, 0, 0, 0, NULL, 0, 0),
(3201, 1, 0, 'I wish to unlearn Weaponsmithing!', 19007, 0, 0, 0, 0, 0, 50000, 'Forgetting your Weaponsmithing skill is not something to do lightly.  If you choose to abandon it you will forget all recipes that require Weaponsmithing to create!', 19008, 0),
(3201, 2, 0, 'I wish to unlearn Weaponsmithing!', 19007, 0, 0, 0, 0, 0, 100000, 'Forgetting your Weaponsmithing skill is not something to do lightly.  If you choose to abandon it you will forget all recipes that require Weaponsmithing to create!', 19008, 0),
(3202, 1, 0, 'I wish to unlearn Weaponsmithing!', 19007, 0, 0, 0, 0, 0, 50000, 'Forgetting your Weaponsmithing skill is not something to do lightly.  If you choose to abandon it you will forget all recipes that require Weaponsmithing to create!', 19008, 0),
(3202, 2, 0, 'I wish to unlearn Weaponsmithing!', 19007, 0, 0, 0, 0, 0, 100000, 'Forgetting your Weaponsmithing skill is not something to do lightly.  If you choose to abandon it you will forget all recipes that require Weaponsmithing to create!', 19008, 0),
(597, 1, 0, 'I wish to unlearn Armorsmithing!', 19010, 0, 0, 0, 0, 0, 50000, 'Forgetting your Armorsmithing skill is not something to do lightly.  If you choose to abandon it you will forget all recipes that require Armorsmithing to create!', 19011, 0),
(597, 2, 0, 'I wish to unlearn Armorsmithing!', 19010, 0, 0, 0, 0, 0, 100000, 'Forgetting your Armorsmithing skill is not something to do lightly.  If you choose to abandon it you will forget all recipes that require Armorsmithing to create!', 19011, 0),
(3203, 1, 0, 'I wish to unlearn Armorsmithing!', 19010, 0, 0, 0, 0, 0, 50000, 'Forgetting your Armorsmithing skill is not something to do lightly.  If you choose to abandon it you will forget all recipes that require Armorsmithing to create!', 19011, 0),
(3203, 2, 0, 'I wish to unlearn Armorsmithing!', 19010, 0, 0, 0, 0, 0, 100000, 'Forgetting your Armorsmithing skill is not something to do lightly.  If you choose to abandon it you will forget all recipes that require Armorsmithing to create!', 19011, 0),
(6090, 1, 0, 'Please teach me how to become a hammersmith, Lilith.', 9988, 0, 0, 0, 0, 0, 0, NULL, 0, 0),
(6090, 2, 0, 'I wish to unlearn Hammersmithing!', 18990, 0, 0, 0, 0, 0, 250000, 'Forgetting your Hammersmithing skill is not something to do lightly.  If you choose to abandon it you will forget all recipes that require Hammersmithing to create!', 18991, 0),
(6090, 3, 0, 'I wish to unlearn Hammersmithing!', 18990, 0, 0, 0, 0, 0, 500000, 'Forgetting your Hammersmithing skill is not something to do lightly.  If you choose to abandon it you will forget all recipes that require Hammersmithing to create!', 18991, 0),
(6090, 4, 0, 'I wish to unlearn Hammersmithing!', 18990, 0, 0, 0, 0, 0, 1000000, 'Forgetting your Hammersmithing skill is not something to do lightly.  If you choose to abandon it you will forget all recipes that require Hammersmithing to create!', 18991, 0),
(6089, 1, 0, 'Please teach me how to become an axesmith, Kilram.', 9985, 0, 0, 0, 0, 0, 0, NULL, 0, 0),
(6089, 2, 0, 'I wish to unlearn Axesmithing!', 18986, 0, 0, 0, 0, 0, 250000, 'Forgetting your Axesmithing skill is not something to do lightly.  If you choose to abandon it you will forget all recipes that require Axesmithing to create!', 18987, 0),
(6089, 3, 0, 'I wish to unlearn Axesmithing!', 18986, 0, 0, 0, 0, 0, 500000, 'Forgetting your Axesmithing skill is not something to do lightly.  If you choose to abandon it you will forget all recipes that require Axesmithing to create!', 18987, 0),
(6089, 4, 0, 'I wish to unlearn Axesmithing!', 18986, 0, 0, 0, 0, 0, 1000000, 'Forgetting your Axesmithing skill is not something to do lightly.  If you choose to abandon it you will forget all recipes that require Axesmithing to create!', 18987, 0),
(6091, 1, 0, 'Please teach me how to become a swordsmith, Seril.', 9991, 0, 0, 0, 0, 0, 0, NULL, 0, 0),
(6091, 2, 0, 'I wish to unlearn Swordsmithing!', 18982, 0, 0, 0, 0, 0, 250000, 'Forgetting your swordsmithing skill is not something to do lightly.  If you choose to abandon it you will forget all recipes that require swordsmithing to create!', 18983, 0),
(6091, 3, 0, 'I wish to unlearn Swordsmithing!', 18982, 0, 0, 0, 0, 0, 500000, 'Forgetting your swordsmithing skill is not something to do lightly.  If you choose to abandon it you will forget all recipes that require swordsmithing to create!', 18983, 0),
(6091, 4, 0, 'I wish to unlearn Swordsmithing!', 18982, 0, 0, 0, 0, 0, 1000000, 'Forgetting your swordsmithing skill is not something to do lightly.  If you choose to abandon it you will forget all recipes that require swordsmithing to create!', 18983, 0);

-- npc professions engineering
DELETE FROM `gossip_menu_option` WHERE `MenuID` IN (6092,6094,8308,8306) AND `OptionID` IN (2);
INSERT INTO `gossip_menu_option`(`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES
(6092, 2, 0, 'This Dimensional Imploder sounds dangerous!  How can I make one?', 9994, 0, 0, 0, 0, 0, 0, NULL, 0, 0),
(6094, 2, 0, 'I must build a beacon for this marvelous device!', 9997, 0, 0, 0, 0, 0, 0, NULL, 0, 0),
(8308, 2, 0, 'This Dimensional Imploder sounds dangerous!  How can I make one?', 9994, 0, 0, 0, 0, 0, 0, NULL, 0, 0),
(8306, 2, 0, 'I must build a beacon for this marvelous device!', 9997, 0, 0, 0, 0, 0, 0, NULL, 0, 0);

-- add rift Creature Text
DELETE FROM `creature_text` WHERE (`CreatureID`,`GroupID`) IN ((21104,1),(21104,2),(21148,1),(21148,2),(17839,1),(17839,2),(21140,1),(21140,2));
INSERT INTO `creature_text`(`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(21104, 1, 0, 'History is about to be rewritten!', 14, 0, 100, 0, 0, 0, 15180, 0, 'Rift Keeper say respawn'),
(21104, 1, 1, 'Let the siege begin!', 14, 0, 100, 0, 0, 0, 15181, 0, 'Rift Keeper say respawn'),
(21104, 1, 2, 'The sands of time shall be scattered to the winds!', 14, 0, 100, 0, 0, 0, 15179, 0, 'Rift Keeper say respawn'),
(21104, 2, 0, 'No! The rift...!', 14, 0, 100, 0, 0, 0, 15187, 0, 'Rift Keeper say death'),
(21104, 2, 1, 'You will never defeat us all!', 14, 0, 100, 0, 0, 0, 15185, 0, 'Rift Keeper say death'),
(21104, 2, 2, 'You will accomplish nothing!', 14, 0, 100, 0, 0, 0, 15186, 0, 'Rift Keeper say death'),
(21148, 1, 0, 'History is about to be rewritten!', 14, 0, 100, 0, 0, 0, 15180, 0, 'Rift Keeper say respawn'),
(21148, 1, 1, 'Let the siege begin!', 14, 0, 100, 0, 0, 0, 15181, 0, 'Rift Keeper say respawn'),
(21148, 1, 2, 'The sands of time shall be scattered to the winds!', 14, 0, 100, 0, 0, 0, 15179, 0, 'Rift Keeper say respawn'),
(21148, 2, 0, 'No! The rift...!', 14, 0, 100, 0, 0, 0, 15187, 0, 'Rift Keeper say death'),
(21148, 2, 1, 'You will never defeat us all!', 14, 0, 100, 0, 0, 0, 15185, 0, 'Rift Keeper say death'),
(21148, 2, 2, 'You will accomplish nothing!', 14, 0, 100, 0, 0, 0, 15186, 0, 'Rift Keeper say death'),
(17839, 1, 0, 'History is about to be rewritten!', 14, 0, 100, 0, 0, 0, 15180, 0, 'Rift Lord say respawn'),
(17839, 1, 1, 'Let the siege begin!', 14, 0, 100, 0, 0, 0, 15181, 0, 'Rift Lord say respawn'),
(17839, 1, 2, 'The sands of time shall be scattered to the winds!', 14, 0, 100, 0, 0, 0, 15179, 0, 'Rift Lord say respawn'),
(17839, 2, 0, 'No! The rift...!', 14, 0, 100, 0, 0, 0, 15187, 0, 'Rift Lord say death'),
(17839, 2, 1, 'You will never defeat us all!', 14, 0, 100, 0, 0, 0, 15185, 0, 'Rift Lord say death'),
(17839, 2, 2, 'You will accomplish nothing!', 14, 0, 100, 0, 0, 0, 15186, 0, 'Rift Lord say death'),
(21140, 1, 0, 'History is about to be rewritten!', 14, 0, 100, 0, 0, 0, 15180, 0, 'Rift Lord say respawn'),
(21140, 1, 1, 'Let the siege begin!', 14, 0, 100, 0, 0, 0, 15181, 0, 'Rift Lord say respawn'),
(21140, 1, 2, 'The sands of time shall be scattered to the winds!', 14, 0, 100, 0, 0, 0, 15179, 0, 'Rift Lord say respawn'),
(21140, 2, 0, 'No! The rift...!', 14, 0, 100, 0, 0, 0, 15187, 0, 'Rift Lord say death'),
(21140, 2, 1, 'You will never defeat us all!', 14, 0, 100, 0, 0, 0, 15185, 0, 'Rift Lord say death'),
(21140, 2, 2, 'You will accomplish nothing!', 14, 0, 100, 0, 0, 0, 15186, 0, 'Rift Lord say death');

-- add say respawn and death text for Rift Creatures
DELETE FROM `smart_scripts` WHERE (`entryorguid`,`source_type`) IN ((21104,0),(21148,0),(17839,0),(21140,0));
INSERT INTO `smart_scripts`(`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(21104, 0, 1, 0, 0, 0, 20, 7, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Rift Keeper - In Combat - Say Line 0'),
(21104, 0, 2, 0, 0, 0, 100, 2, 7200, 12200, 11900, 29600, 0, 11, 36275, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Rift Keeper - In Combat - Cast \'Shadow Bolt Volley\''),
(21104, 0, 3, 0, 0, 0, 100, 4, 7200, 12000, 11100, 24200, 0, 11, 38533, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Rift Keeper - In Combat - Cast \'Shadow Bolt Volley\''),
(21104, 0, 4, 0, 0, 0, 100, 2, 7300, 19500, 20300, 45900, 0, 11, 36276, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Rift Keeper - In Combat - Cast \'Curse of Vulnerability\''),
(21104, 0, 5, 0, 0, 0, 100, 4, 6200, 21500, 12000, 21700, 0, 11, 36276, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Rift Keeper - In Combat - Cast \'Curse of Vulnerability\''),
(21104, 0, 6, 0, 0, 0, 100, 6, 2500, 26300, 16900, 25300, 0, 11, 12542, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 'Rift Keeper - In Combat - Cast \'Fear\''),
(21104, 0, 7, 0, 2, 0, 100, 7, 0, 30, 0, 0, 0, 11, 8269, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Rift Keeper - Between 0-30% Health - Cast \'Frenzy\''),
(21104, 0, 8, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rift Keeper - On Respawn - Say Respawn'),
(21104, 0, 9, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rift Keeper - On Death - Say Death'),
(21148, 0, 1, 0, 0, 0, 20, 7, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Rift Keeper - In Combat - Say Line 0'),
(21148, 0, 2, 0, 0, 1, 100, 4, 13300, 34500, 27500, 27500, 0, 11, 13323, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 'Rift Keeper - In Combat - Cast \'Polymorph\''),
(21148, 0, 3, 0, 0, 1, 100, 2, 0, 0, 7300, 16900, 0, 11, 36279, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Rift Keeper - In Combat - Cast \'Frostbolt\''),
(21148, 0, 4, 0, 0, 1, 100, 4, 0, 0, 2400, 3600, 0, 11, 38534, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Rift Keeper - In Combat - Cast \'Frostbolt\''),
(21148, 0, 5, 0, 0, 1, 100, 2, 12400, 12400, 13900, 14500, 0, 11, 36277, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Rift Keeper - In Combat - Cast \'Pyroblast\''),
(21148, 0, 6, 0, 0, 1, 100, 4, 18200, 29300, 14400, 25200, 0, 11, 38535, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Rift Keeper - In Combat - Cast \'Pyroblast\''),
(21148, 0, 7, 0, 0, 1, 100, 2, 9800, 9800, 13400, 13400, 0, 11, 36278, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Rift Keeper - In Combat - Cast \'Blast Wave\''),
(21148, 0, 8, 0, 0, 1, 100, 4, 11100, 31400, 15800, 27700, 0, 11, 38536, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Rift Keeper - In Combat - Cast \'Blast Wave\''),
(21148, 0, 9, 0, 2, 0, 100, 7, 0, 30, 0, 0, 0, 11, 8269, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Rift Keeper - Between 0-30% Health - Cast \'Frenzy\''),
(21148, 0, 10, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rift Keeper - On Respawn - Say Respawn'),
(21148, 0, 11, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rift Keeper - On Death - Say Death'),
(17839, 0, 1, 0, 0, 0, 20, 7, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Rift Lord - In Combat - Say Line 0 (No Repeat) (Dungeon)'),
(17839, 0, 2, 0, 0, 0, 100, 2, 4800, 18800, 18100, 38500, 0, 11, 11428, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Rift Lord - In Combat - Cast \'Knockdown\' (No Repeat) (Dungeon)'),
(17839, 0, 3, 0, 0, 0, 100, 4, 6200, 18800, 13300, 19100, 0, 11, 11428, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Rift Lord - In Combat - Cast \'Knockdown\' (No Repeat) (Dungeon)'),
(17839, 0, 4, 0, 0, 0, 100, 2, 6100, 18000, 10800, 15800, 0, 11, 15708, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Rift Lord - In Combat - Cast \'Mortal Strike\' (No Repeat) (Dungeon)'),
(17839, 0, 5, 0, 0, 0, 100, 4, 4900, 17700, 10300, 14500, 0, 11, 35054, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Rift Lord - In Combat - Cast \'Mortal Strike\' (No Repeat) (Dungeon)'),
(17839, 0, 6, 0, 0, 0, 90, 2, 7200, 11800, 15500, 26500, 0, 11, 9080, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Rift Lord - In Combat - Cast \'Hamstring\' (No Repeat) (Dungeon)'),
(17839, 0, 7, 0, 0, 0, 90, 4, 4600, 15700, 11600, 18100, 0, 11, 9080, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Rift Lord - In Combat - Cast \'Hamstring\' (No Repeat) (Dungeon)'),
(17839, 0, 8, 0, 2, 0, 100, 7, 0, 30, 0, 0, 0, 11, 8269, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Rift Lord - Between 0-30% Health - Cast \'Frenzy\' (No Repeat) (Dungeon)'),
(17839, 0, 10, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rift Lord - On Respawn - Say Respawn'),
(17839, 0, 11, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rift Lord - On Death - Say Death'),
(21140, 0, 1, 0, 0, 0, 20, 7, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Rift Lord - In Combat - Say Line 0 (No Repeat) (Dungeon)'),
(21140, 0, 2, 0, 0, 2, 90, 6, 5900, 12000, 6000, 9600, 0, 11, 16145, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Rift Lord - In Combat - Cast \'Sunder Armor\' (No Repeat) (Dungeon)'),
(21140, 0, 3, 0, 0, 2, 90, 2, 5100, 27600, 10900, 26600, 0, 11, 36214, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Rift Lord - In Combat - Cast \'Thunderclap\' (No Repeat) (Dungeon)'),
(21140, 0, 4, 0, 0, 2, 90, 4, 5100, 19100, 11800, 16900, 0, 11, 38537, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Rift Lord - In Combat - Cast \'Thunderclap\' (No Repeat) (Dungeon)'),
(21140, 0, 5, 0, 2, 0, 100, 7, 0, 30, 0, 0, 0, 11, 8269, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Rift Lord - Between 0-30% Health - Cast \'Frenzy\' (No Repeat) (Dungeon)'),
(21140, 0, 6, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rift Lord - On Respawn - Say Respawn'),
(21140, 0, 7, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rift Lord - On Death - Say Death');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (21104,21148,17839,21140);
