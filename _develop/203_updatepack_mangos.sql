--
-- Copyright (C) 2005-2013 MaNGOS <http://getmangos.com/>
-- Copyright (C) 2009-2013 MaNGOSZero <https://github.com/mangoszero>
--
-- This program is free software; you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation; either version 2 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program; if not, write to the Free Software
-- Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
--

-- drop conditions for recipes. each player can get any recipe (without a proper profession) Thanks kokeszko
DELETE FROM `conditions` WHERE condition_entry IN (6,10,13,16);
UPDATE creature_loot_template SET condition_id=0 WHERE condition_id IN (6,10,13,16);

-- Fix Quest 3441
UPDATE `creature_template` SET gossip_menu_id=1323 WHERE entry=8479;

DELETE FROM `gossip_menu_option` WHERE menu_id IN (1321,1322,1323);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
('1321','0','0','Let me confer with my colleagues.','1','1','1323','0','1321','0','0','','0'),
('1322','0','0','Continue please.','1','1','1321','0','0','0','0','','0'),
('1323','0','0','Tell me what drives this vengeance?','1','1','1322','0','0','0','0','','223'),
('1323','2','0','Kalaran, I have misplaced my torch. I require another.','1','1','-1','0','132302','0','0','','538'),
('1323','3','0','Kalaran, please enchant the torch.','1','1','0','0','0','0','0','','0');

DELETE FROM `dbscripts_on_gossip` WHERE id IN (1321,132302);
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
('1321','0','7','3441','0','0','0','0','0','0','0','0','0','0','0','0','quest 3441 complete of npc 8479'),
('132302','0','15','19797','0','0','0','0','0','0','0','0','0','0','0','0','cast Conjure Torch of Retribution');

DELETE FROM `conditions` WHERE condition_entry IN (223,224,225,538);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES
('223','9','3441','1'),
('224','24','10515','1'),
('225','8','3454','0'),
('538','-1','225','224');

DELETE FROM `gossip_menu` WHERE entry IN (1321,1322,1323);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
('1321','1955','0','0'),
('1322','1954','0','0'),
('1323','1953','0','0');

DELETE FROM `npc_text` WHERE id IN (1953,1954,1955);
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES
('1953','Vengeance shall be mine.','','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0'),
('1954','My father was slain by the filth that inhabits the cauldron. My pleas for assistance to the Stormwind magistrate fell on deaf ears. Nay, they want not to admit that this part of the world even exists, let alone send their precious military in to administer justice.$B$BI seek vengeance, $r, plain and simple. Is there a more passionate cause in this world?','','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0'),
('1955','As you can see, I am but one man with a lumbering oaf of a squire. The might of the Dark Iron dwarves and the beasts held in the grip of Ragnaros would surely overwhelm me alone, but I have the utmost confidence that such a brave and ambitious adventurer such as you would have no problem handling the denizens of the cauldron. Should you choose to assist me, I shall reward you with riches and wealth beyond your wildest dreams.','','0','1','0','1','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');


-- Cleanup
UPDATE gameobject SET state = 0 WHERE id IN (SELECT entry FROM gameobject_template WHERE type = 0 AND data0 = 1);
UPDATE creature_template SET unit_flags=unit_flags&~2048 WHERE unit_flags&2048=2048;
UPDATE creature_template SET unit_flags=unit_flags&~524288 WHERE unit_flags&524288=524288;
UPDATE creature_template SET unit_flags=unit_flags&~67108864 WHERE unit_flags&67108864=67108864;
UPDATE creature_template SET unit_flags=unit_flags&~8388608 WHERE unit_flags&8388608=8388608;
UPDATE creature, creature_template SET creature.curhealth=creature_template.minhealth,creature.curmana=creature_template.minmana WHERE creature.id=creature_template.entry and creature_template.RegenHealth = '1';
UPDATE creature_template SET dynamicflags = dynamicflags &~ 223;
UPDATE creature_template SET npcflag = npcflag&~16777216; -- UNIT_NPC_FLAG_SPELLCLICK
-- UPDATE creature_template c1, creature_template c2 SET c2.unit_class=c1.unit_class, c2.npcflag=c1.npcflag, c2.faction_A=c1.faction_A, c2.faction_H=c1.faction_H, c2.speed_walk=c1.speed_walk, c2.speed_run=c1.speed_run, c2.scale=c1.scale, c2.InhabitType=c1.InhabitType, c2.MovementType=c1.MovementType, c2.unit_flags=c1.unit_flags WHERE c2.entry=c1.difficulty_entry_1;
-- UPDATE creature_template c1, creature_template c2 SET c2.unit_class=c1.unit_class, c2.npcflag=c1.npcflag, c2.faction_A=c1.faction_A, c2.faction_H=c1.faction_H, c2.speed_walk=c1.speed_walk, c2.speed_run=c1.speed_run, c2.scale=c1.scale, c2.InhabitType=c1.InhabitType, c2.MovementType=c1.MovementType, c2.unit_flags=c1.unit_flags WHERE c2.entry=c1.difficulty_entry_2;
-- UPDATE creature_template c1, creature_template c2 SET c2.unit_class=c1.unit_class, c2.npcflag=c1.npcflag, c2.faction_A=c1.faction_A, c2.faction_H=c1.faction_H, c2.speed_walk=c1.speed_walk, c2.speed_run=c1.speed_run, c2.scale=c1.scale, c2.InhabitType=c1.InhabitType, c2.MovementType=c1.MovementType, c2.unit_flags=c1.unit_flags WHERE c2.entry=c1.difficulty_entry_3;
-- UPDATE gameobject_template SET flags=flags&~4 WHERE type IN (2,19,17);
UPDATE creature SET MovementType = 0 WHERE spawndist = 0 AND MovementType=1;
UPDATE creature SET spawndist=0 WHERE MovementType=0;
UPDATE quest_template SET SpecialFlags=SpecialFlags|1 WHERE QuestFlags=QuestFlags|4096;
UPDATE quest_template SET SpecialFlags=SpecialFlags|1 WHERE QuestFlags=QuestFlags|32768;
DELETE FROM go,gt USING gameobject go LEFT JOIN gameobject_template gt ON go.id=gt.entry WHERE gt.entry IS NULL;
DELETE FROM gi,gt USING gameobject_involvedrelation gi LEFT JOIN gameobject_template gt ON gi.id=gt.entry WHERE gt.entry IS NULL;
DELETE FROM gqr,gt USING gameobject_questrelation gqr LEFT JOIN gameobject_template gt ON gqr.id=gt.entry WHERE gt.entry IS NULL;
DELETE FROM ge,go USING game_event_gameobject ge LEFT JOIN gameobject go ON ge.guid=go.guid WHERE go.guid IS NULL;
DELETE FROM dbscripts_on_go_use WHERE id NOT IN (SELECT guid FROM gameobject);
DELETE FROM dbscripts_on_go_use WHERE command IN (11, 12) AND datalong!=0 AND datalong NOT IN (SELECT guid FROM gameobject);
DELETE FROM gameobject_battleground WHERE guid NOT IN (SELECT guid FROM gameobject);
DELETE FROM creature_battleground WHERE guid NOT IN (SELECT guid FROM creature);
DELETE FROM creature_addon WHERE guid NOT IN (SELECT guid FROM creature);
UPDATE creature_addon SET moveflags=moveflags &~ 0x00000100; -- SPLINEFLAG_DONE
UPDATE creature_addon SET moveflags=moveflags &~ 0x00000200; -- SPLINEFLAG_FALLING
UPDATE creature_addon SET moveflags=moveflags &~ 0x00000800; -- SPLINEFLAG_TRAJECTORY (can crash client)
UPDATE creature_addon SET moveflags=moveflags &~ 0x00200000; -- SPLINEFLAG_UNKNOWN3 (can crash client)
UPDATE creature_addon SET moveflags=moveflags &~ 0x08000000;
UPDATE creature_template_addon SET moveflags=moveflags &~ 0x00000100;
UPDATE creature_template_addon SET moveflags=moveflags &~ 0x00000200;
UPDATE creature_template_addon SET moveflags=moveflags &~ 0x00000800;
UPDATE creature_template_addon SET moveflags=moveflags &~ 0x00200000;
UPDATE creature_template_addon SET moveflags=moveflags &~ 0x08000000;
DELETE FROM npc_gossip WHERE npc_guid NOT IN (SELECT guid FROM creature);
DELETE FROM creature_movement WHERE id NOT IN (SELECT guid FROM creature);
DELETE FROM game_event_creature WHERE guid NOT IN (SELECT guid FROM creature);
DELETE FROM creature_questrelation WHERE id NOT IN (SELECT entry FROM creature_template);
DELETE FROM creature_onkill_reputation WHERE creature_id NOT IN (SELECT entry FROM creature_template);
UPDATE creature_template SET npcflag=npcflag|2 WHERE entry IN (SELECT id FROM creature_questrelation UNION SELECT id FROM creature_involvedrelation);

--UPDATE Database Version
UPDATE db_version set version = 'ZeroDatabase 2.0.3 for MaNGOSZero zXXXX+ and ScriptDevZero zXXXX+';