/*

	R.E.D. Modpack
	Base units configuration file
	by Gedemon (2012)

	First file to update the database, it set default R.E.D formations, scale and number of figures to all original units.

*/


-----------------------------------------------------------------------------
-- Global change (thanks to Nutty)
-----------------------------------------------------------------------------

--UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 18 WHERE UnitInfoType IN
--	(SELECT UnitArtInfo FROM Units WHERE MoveRate = 'BIPED');
-- to do : exclude settler from the above !!!

UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type IN (SELECT UnitMemberInfoType FROM ArtDefine_UnitInfoMemberInfos WHERE UnitInfoType IN
	(SELECT UnitArtInfo FROM Units WHERE MoveRate = 'BIPED'));

	-- todo: all other move rates...


-----------------------------------------------------------------------------
-- Base Units
-----------------------------------------------------------------------------

-- ANTI-AIRCRAFT GUN
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_ANTIAIRCRAFTGUN';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 4 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_ANTIAIRCRAFTGUN';
UPDATE ArtDefine_UnitInfos SET Formation = 'FourBigGuns' WHERE Type = 'ART_DEF_UNIT_ANTI_AIRCRAFT_GUN';

-- ANTI-TANK GUN
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_ANTITANKGUN';

-- ARCHER				
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_ARCHER';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_ARCHER_V2';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_ARCHER_V3';
DELETE FROM ArtDefine_UnitInfoMemberInfos WHERE UnitInfoType='ART_DEF_UNIT_ARCHER';
INSERT INTO ArtDefine_UnitInfoMemberInfos VALUES ('ART_DEF_UNIT_ARCHER','ART_DEF_UNIT_MEMBER_ARCHER_V2',"3");
INSERT INTO ArtDefine_UnitInfoMemberInfos VALUES ('ART_DEF_UNIT_ARCHER','ART_DEF_UNIT_MEMBER_ARCHER_V3',"3");
INSERT INTO ArtDefine_UnitInfoMemberInfos VALUES ('ART_DEF_UNIT_ARCHER','ART_DEF_UNIT_MEMBER_ARCHER',"4");
INSERT INTO ArtDefine_UnitInfoMemberInfos VALUES ('ART_DEF_UNIT_ARCHER','ART_DEF_UNIT_MEMBER_ARCHER_V2',"3");
INSERT INTO ArtDefine_UnitInfoMemberInfos VALUES ('ART_DEF_UNIT_ARCHER','ART_DEF_UNIT_MEMBER_ARCHER_V3',"3");

-- ARTILLERY
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_ARTILLERY';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 3 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_ARTILLERY';
UPDATE ArtDefine_UnitInfos SET Formation = 'FourBigGuns' WHERE Type = 'ART_DEF_UNIT_ARTILLERY';

-- ATOMIC BOMB
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_ATOMICBOMB';
UPDATE ArtDefine_UnitMemberCombats SET MoveRate = 1.5 WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_ATOMICBOMB';

-- BARBARIAN ARCHER
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_BARBARIAN_ARCHER_01';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_BARBARIAN_ARCHER_V2';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_BARBARIAN_ARCHER_V3';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 5 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_BARBARIAN_ARCHER_01';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 7 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_BARBARIAN_ARCHER_V2';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 6 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_BARBARIAN_ARCHER_V3';

-- BARBARIAN GALLEY
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.06 WHERE Type = 'ART_DEF_UNIT_MEMBER_BARBARIAN_GALLEY';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 3 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_BARBARIAN_GALLEY';
UPDATE ArtDefine_UnitInfos SET Formation = 'Flotilla' WHERE Type = 'ART_DEF_UNIT_BARBARIAN_GALLEY';

-- BARBARIAN SPEARMAN
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_BARBARIAN_SPEARMAN';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_BARBARIAN_SPEARMAN_V2';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_BARBARIAN_SPEARMAN_V3';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 6 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_BARBARIAN_SPEARMAN';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 7 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_BARBARIAN_SPEARMAN_V2';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 5 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_BARBARIAN_SPEARMAN_V3';

-- BARBARIAN SWORDSMAN
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_BARBARIAN_SWORDSMAN';			
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_BARBARIAN_SWORDSMAN_V2';		
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_BARBARIAN_SWORDSMAN_V3';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 6 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_BARBARIAN_SWORDSMAN';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 7 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_BARBARIAN_SWORDSMAN_V2';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 5 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_BARBARIAN_SWORDSMAN_V3';

-- BARBARIAN WARRIOR
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_BARBARIAN_EURO_ALPHA';			
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_BARBARIAN_EURO_BRAVO';			
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_BARBARIAN_EURO_CHARLIE';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 5 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_BARBARIAN_EURO_ALPHA';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 7 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_BARBARIAN_EURO_BRAVO';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 6 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_BARBARIAN_EURO_CHARLIE';

-- BATTLESHIP				
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.105 WHERE Type = 'ART_DEF_UNIT_MEMBER_BATTLESHIP';
UPDATE ArtDefine_UnitMemberInfos SET Model = 'Battleship_Generic.fxsxml' WHERE Type = 'ART_DEF_UNIT_MEMBER_BATTLESHIP';

-- BOMBER				
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_BOMBER';
UPDATE ArtDefine_UnitMemberCombats SET MoveRate = 1.7 WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_BOMBER';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 3 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_BOMBER';

-- CANNON
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_CANNON';
UPDATE ArtDefine_UnitInfos SET Formation = 'CannonLine' WHERE Type = 'ART_DEF_UNIT_CANNON';

-- CARAVEL
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.10 WHERE Type = 'ART_DEF_UNIT_MEMBER_CARAVEL';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 3 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_CARAVEL';
UPDATE ArtDefine_UnitInfos SET Formation = 'Colomb' WHERE Type = 'ART_DEF_UNIT_CARAVEL';

-- CARRIER
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.105 WHERE Type = 'ART_DEF_UNIT_MEMBER_CARRIER';
UPDATE ArtDefine_UnitMemberInfos SET Model = 'Carrier_Generic.fxsxml' WHERE Type = 'ART_DEF_UNIT_MEMBER_CARRIER';

-- CATAPULT
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_CATAPULT';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 4 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_CATAPULT';
UPDATE ArtDefine_UnitInfos SET Formation = 'ThreeBigGuns' WHERE Type = 'ART_DEF_UNIT_CATAPULT';

-- CAVALRY
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.085 WHERE Type = 'ART_DEF_UNIT_MEMBER_CAVALRY';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 7 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_CAVALRY';

-- CHARIOT ARCHER
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.085 WHERE Type = 'ART_DEF_UNIT_MEMBER_CHARIOTARCHER';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 3 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_CHARIOTARCHER';

-- CROSSBOWMAN
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_CROSSBOWMAN';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 15 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_CROSSBOWMAN';
UPDATE ArtDefine_UnitInfos SET Formation = 'Crossbowman' WHERE Type = 'ART_DEF_UNIT_CROSSBOWMAN';

-- DESTROYER
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.12 WHERE Type = 'ART_DEF_UNIT_MEMBER_DESTROYER';
UPDATE ArtDefine_UnitMemberInfos SET Model = 'Destroyer_Generic.fxsxml' WHERE Type = 'ART_DEF_UNIT_MEMBER_DESTROYER';

-- FIGHTER
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.07 WHERE Type = 'ART_DEF_UNIT_MEMBER_FIGHTER';
UPDATE ArtDefine_UnitMemberCombats SET MoveRate = 2.0 WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_FIGHTER';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 4 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_FIGHTER';
UPDATE ArtDefine_UnitInfos SET Formation = 'FighterDiamond' WHERE Type = 'ART_DEF_UNIT_FIGHTER';

-- FRIGATE
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.115 WHERE Type = 'ART_DEF_UNIT_MEMBER_FRIGATE';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_FRIGATE';
UPDATE ArtDefine_UnitInfos SET Formation = 'Nelson' WHERE Type = 'ART_DEF_UNIT_FRIGATE';

-- GALLEON
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.10 WHERE Type = 'ART_DEF_UNIT_MEMBER_GALLEON';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 3 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_GALLEON';
UPDATE ArtDefine_UnitInfos SET Formation = 'Flotilla' WHERE Type = 'ART_DEF_UNIT_GALLEON';

-- GALLEY
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.10 WHERE Type = 'ART_DEF_UNIT_MEMBER_GALLEY';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 5 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_GALLEY';
UPDATE ArtDefine_UnitInfos SET Formation = 'Flotilla' WHERE Type = 'ART_DEF_UNIT_GALLEY';

-- GUIDED MISSILE
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.14 WHERE Type = 'ART_DEF_UNIT_MEMBER_GUIDEDMISSILE';

-- HELICOPTER GUNSHIP
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.10 WHERE Type = 'ART_DEF_UNIT_MEMBER_HELICOPTERGUNSHIP';

-- GREAT ARTIST
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_GREATARTIST_EARLY_FLUTE';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_GREATARTIST_EARLY_TAMBOURINE';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_GREATARTIST_EARLY_FLAGBEARER';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_GREATARTIST_EARLY_BAGPIPER';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_GREATARTIST_EARLY_BIGDRUMMER';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_GREATARTIST_EARLY_DRUMMER';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.08 WHERE Type = 'ART_DEF_UNIT_MEMBER_GREATARTIST_LATE';

-- GREAT ENGINEER
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_GREATENGINEER_EARLY';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.08 WHERE Type = 'ART_DEF_UNIT_MEMBER_GREATENGINEER_LATE';

-- GREAT GENERAL
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_GREATGENERAL_EARLY';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_GREATGENERAL_LATE';

-- GREAT MARCHANT
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_GREATMERCHANT_EARLY_LEADER';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_GREATMERCHANT_EARLY_CAMEL_V1';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_GREATMERCHANT_EARLY_CAMEL_V2';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.085 WHERE Type = 'ART_DEF_UNIT_MEMBER_GREATMERCHANT_LATE';

-- GREAT SCIENTIST
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_GREATSCIENTIST_EARLY';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_GREATSCIENTIST_LATE';

-- HORSEMAN
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.085 WHERE Type = 'ART_DEF_UNIT_MEMBER_HORSEMAN';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 7 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_HORSEMAN';

-- INFANTRY (infantry for vanilla, late infantry for G&K)
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_INFANTRY';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 18 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_INFANTRY';
UPDATE Units SET UnitArtInfo = "ART_DEF_UNIT_INFANTRY" WHERE Type = 'UNIT_INFANTRY'; 
UPDATE ArtDefine_UnitMemberInfos SET Model = 'Infantry_Generic.fxsxml' WHERE Type = 'ART_DEF_UNIT_MEMBER_INFANTRY';
/*
keeping vanilla UNIT_INFANTRY definition here, in case it's patched out of G&K as it's not used in it...
INSERT INTO ArtDefine_UnitInfoMemberInfos VALUES ("ART_DEF_UNIT_INFANTRY","ART_DEF_UNIT_MEMBER_INFANTRY","18");
INSERT INTO ArtDefine_UnitInfos VALUES ("ART_DEF_UNIT_INFANTRY","1","UnFormed");
INSERT INTO ArtDefine_UnitMemberCombatWeapons VALUES ("ART_DEF_UNIT_MEMBER_INFANTRY","0","0","",null,null,null,null,null,"",null,null,null,null,null,null,null,null,"BULLET","BULLET");
INSERT INTO ArtDefine_UnitMemberCombats VALUES ("ART_DEF_UNIT_MEMBER_INFANTRY","Idle Attack RunCharge AttackCity Bombard Death BombardDefend Run Fortify CombatReady Walk AttackCharge","",null,"12",null,null,null,null,"0.3499999940395355",null,null,null,null,null,null,null,null,null,null,"8","1",null,null,null,null,"1","1",null,null,null,null,null,null,"");
INSERT INTO ArtDefine_UnitMemberInfos VALUES ("ART_DEF_UNIT_MEMBER_INFANTRY","0.09",null,"","Assets/Units/Infantry/Infantry.fxsxml","CLOTH","FLESH");
*/

-- IRONCLAD
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.10 WHERE Type = 'ART_DEF_UNIT_MEMBER_IRONCLAD';

-- JETFIGHTER
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.105 WHERE Type = 'ART_DEF_UNIT_MEMBER_JETFIGHTER';
UPDATE ArtDefine_UnitMemberCombats SET MoveRate = 2.5 WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_JETFIGHTER';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_JETFIGHTER';
UPDATE ArtDefine_UnitInfos SET Formation = 'FighterWing' WHERE Type = 'ART_DEF_UNIT_JETFIGHTER';
UPDATE ArtDefine_UnitMemberInfos SET Model = 'JetFighter_Generic.fxsxml' WHERE Type = 'ART_DEF_UNIT_MEMBER_JETFIGHTER';

-- KNIGHT
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.085 WHERE Type = 'ART_DEF_UNIT_MEMBER_KNIGHT';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 7 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_KNIGHT';

-- LANCER
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.085 WHERE Type = 'ART_DEF_UNIT_MEMBER_LANCER';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 7 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_LANCER';
UPDATE ArtDefine_UnitInfos SET Formation = 'WedgeCavalry' WHERE Type = 'ART_DEF_UNIT_LANCER';

-- LONGSWORDSMAN
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_LONGSWORDSMAN';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 16 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_LONGSWORDSMAN';

-- MECH
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.065 WHERE Type = 'ART_DEF_UNIT_MEMBER_MECH';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 5 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_MECH';
UPDATE ArtDefine_UnitInfos SET Formation = 'AssaultMech' WHERE Type = 'ART_DEF_UNIT_MECH';

-- MECHANIZED INFANTRY
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.10 WHERE Type = 'ART_DEF_UNIT_MEMBER_MECHANIZEDINFANTRY';

-- MISSILE CRUISER
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.11 WHERE Type = 'ART_DEF_UNIT_MEMBER_MISSILECRUISER';

-- MOBILE SAM
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.11 WHERE Type = 'ART_DEF_UNIT_MEMBER_MOBILESAM';

-- MODERN ARMOR
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.10 WHERE Type = 'ART_DEF_UNIT_MEMBER_MODERNARMOR';

-- MUSKETMAN
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_MUSKETMAN';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 19 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_MUSKETMAN';

-- NUCLEAR MISSILE
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.14 WHERE Type = 'ART_DEF_UNIT_MEMBER_NUCLEARMISSILE';

-- NUCLEAR SUBMARINE
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.12 WHERE Type = 'ART_DEF_UNIT_MEMBER_NUCLEARSUBMARINE';

-- PARATROOPER (changed to Danrell WWII generic models for consistency with civilization specific models)
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_PARATROOPER';
DELETE FROM ArtDefine_UnitInfoMemberInfos WHERE UnitInfoType='ART_DEF_UNIT_PARATROOPER';
INSERT INTO ArtDefine_UnitInfoMemberInfos VALUES ('ART_DEF_UNIT_PARATROOPER','ART_DEF_UNIT_MEMBER_PARATROOPER',"4");
INSERT INTO ArtDefine_UnitInfoMemberInfos VALUES ('ART_DEF_UNIT_PARATROOPER','ART_DEF_UNIT_MEMBER_PARATROOPER_V2',"2");
INSERT INTO ArtDefine_UnitInfoMemberInfos VALUES ('ART_DEF_UNIT_PARATROOPER','ART_DEF_UNIT_MEMBER_PARATROOPER',"4");
INSERT INTO ArtDefine_UnitInfoMemberInfos VALUES ('ART_DEF_UNIT_PARATROOPER','ART_DEF_UNIT_MEMBER_PARATROOPER_V2',"2");
-- V1
UPDATE ArtDefine_UnitMemberInfos SET Model = 'Paratrooper_Generic_MG.fxsxml' WHERE Type = 'ART_DEF_UNIT_MEMBER_PARATROOPER';
-- V2
INSERT INTO "ArtDefine_UnitMemberCombats" ('UnitMemberType', 'EnableActions', 'DisableActions', 'MoveRadius', 'ShortMoveRadius', 'ChargeRadius', 'AttackRadius', 'RangedAttackRadius', 'MoveRate', 'ShortMoveRate', 'TurnRateMin', 'TurnRateMax', 'TurnFacingRateMin', 'TurnFacingRateMax', 'RollRateMin', 'RollRateMax', 'PitchRateMin', 'PitchRateMax', 'LOSRadiusScale', 'TargetRadius', 'TargetHeight', 'HasShortRangedAttack', 'HasLongRangedAttack', 'HasLeftRightAttack', 'HasStationaryMelee', 'HasStationaryRangedAttack', 'HasRefaceAfterCombat', 'ReformBeforeCombat', 'HasIndependentWeaponFacing', 'HasOpponentTracking', 'HasCollisionAttack', 'AttackAltitude', 'AltitudeDecelerationDistance', 'OnlyTurnInMovementActions', 'RushAttackFormation')
	SELECT	("ART_DEF_UNIT_MEMBER_PARATROOPER_V2"), "EnableActions", "DisableActions", "MoveRadius", "ShortMoveRadius", "ChargeRadius", "AttackRadius", "RangedAttackRadius", 
			"MoveRate", "ShortMoveRate", "TurnRateMin", "TurnRateMax", "TurnFacingRateMin", "TurnFacingRateMax", "RollRateMin", "RollRateMax", "PitchRateMin", "PitchRateMax", "LOSRadiusScale", "TargetRadius", "TargetHeight", "HasShortRangedAttack", "HasLongRangedAttack", "HasLeftRightAttack", "HasStationaryMelee", "HasStationaryRangedAttack", "HasRefaceAfterCombat", "ReformBeforeCombat", "HasIndependentWeaponFacing", "HasOpponentTracking", "HasCollisionAttack", "AttackAltitude", "AltitudeDecelerationDistance", "OnlyTurnInMovementActions", "RushAttackFormation"
	FROM "ArtDefine_UnitMemberCombats" WHERE (UnitMemberType = "ART_DEF_UNIT_MEMBER_PARATROOPER");
INSERT INTO "ArtDefine_UnitMemberCombatWeapons" ('UnitMemberType', 'Index', 'SubIndex', 'ID', 'VisKillStrengthMin', 'VisKillStrengthMax', 'ProjectileSpeed', 'ProjectileTurnRateMin', 'ProjectileTurnRateMax', 'HitEffect', 'HitEffectScale', 'HitRadius', 'ProjectileChildEffectScale', 'AreaDamageDelay', 'ContinuousFire', 'WaitForEffectCompletion', 'TargetGround', 'IsDropped', 'WeaponTypeTag', 'WeaponTypeSoundOverrideTag')
	SELECT ("ART_DEF_UNIT_MEMBER_PARATROOPER_V2"), "Index", "SubIndex", "ID", "VisKillStrengthMin", "VisKillStrengthMax", "ProjectileSpeed", "ProjectileTurnRateMin", "ProjectileTurnRateMax", "HitEffect", "HitEffectScale", "HitRadius", "ProjectileChildEffectScale", "AreaDamageDelay", "ContinuousFire", "WaitForEffectCompletion", "TargetGround", "IsDropped", "WeaponTypeTag", "WeaponTypeSoundOverrideTag"
	FROM "ArtDefine_UnitMemberCombatWeapons" WHERE (UnitMemberType = "ART_DEF_UNIT_MEMBER_PARATROOPER");
INSERT INTO "ArtDefine_UnitMemberInfos" ("Type", "Scale", "ZOffset", "Domain", "Model", "MaterialTypeTag", "MaterialTypeSoundOverrideTag")
	SELECT	("ART_DEF_UNIT_MEMBER_PARATROOPER_V2"), "Scale", "ZOffset", "Domain", 
			("Paratrooper_Generic.fxsxml"), "MaterialTypeTag", "MaterialTypeSoundOverrideTag"
	FROM "ArtDefine_UnitMemberInfos" WHERE (Type = "ART_DEF_UNIT_MEMBER_PARATROOPER");

-- PIKEMAN
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.085 WHERE Type = 'ART_DEF_UNIT_MEMBER_PIKEMAN';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 16 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_PIKEMAN';

-- RIFLEMAN
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_RIFLEMAN';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 19 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_RIFLEMAN';

-- ROCKET ARTILLERY
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_ROCKETARTILLERY';

-- SCOUT
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.08 WHERE Type = 'ART_DEF_UNIT_MEMBER_SCOUT';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 6 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_SCOUT';

-- SETTLER AFRICAN
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_AFRIMALE1';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_AFRICAMEL';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_AFRIFEMALE1';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_AFRIFEMALE2';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_AFRIFEMALE3';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_AFRIFEMALE4';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_AFRIMALE2';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_AFRIMALE3';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_AFRIMALE4';

-- SETTLER AMERINDIAN					
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_AMERMALE1';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_AMERLLAMA';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_AMERFEMALE1';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_AMERFEMALE2';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_AMERFEMALE3';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_AMERFEMALE4';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_AMERMALE2';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_AMERMALE3';						
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_AMERMALE4';

-- SETTLER ASIAN
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.055 WHERE Type = 'ART_DEF_UNIT_MEMBER_SETTLERS_ASIAN_OX';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_SETTLERS_ASIAN_F1';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_SETTLERS_ASIAN_F2';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_SETTLERS_ASIAN_F3';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_SETTLERS_ASIAN_F4';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_SETTLERS_ASIAN_M1';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_SETTLERS_ASIAN_M2';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_SETTLERS_ASIAN_M3';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_SETTLERS_ASIAN_M4';

-- SETTLER EURO
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.085 WHERE Type = 'ART_DEF_UNIT_MEMBER_EURODONKEY';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_EUROFEMALE18';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_EUROFEMALE25';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_EUROFEMALE35';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_EUROFEMALE40';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_EUROMALE20';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_EUROMALE25';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_EUROMALE35';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_EUROMALE45';

-- SPACE SHIP PARTS
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.12 WHERE Type = 'ART_DEF_UNIT_MEMBER_SS_BOOSTER';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.12 WHERE Type = 'ART_DEF_UNIT_MEMBER_SS_CAPSULE';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.12 WHERE Type = 'ART_DEF_UNIT_MEMBER_SS_ENGINE';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.12 WHERE Type = 'ART_DEF_UNIT_MEMBER_SS_STASIS_CHAMBER';

-- SPEARMAN
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_SPEARMAN';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_SPEARMAN_V2';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_SPEARMAN_V3';
DELETE FROM ArtDefine_UnitInfoMemberInfos WHERE UnitInfoType='ART_DEF_UNIT_SPEARMAN';
INSERT INTO ArtDefine_UnitInfoMemberInfos VALUES ('ART_DEF_UNIT_SPEARMAN','ART_DEF_UNIT_MEMBER_SPEARMAN_V2',"4");
INSERT INTO ArtDefine_UnitInfoMemberInfos VALUES ('ART_DEF_UNIT_SPEARMAN','ART_DEF_UNIT_MEMBER_SPEARMAN',"3");
INSERT INTO ArtDefine_UnitInfoMemberInfos VALUES ('ART_DEF_UNIT_SPEARMAN','ART_DEF_UNIT_MEMBER_SPEARMAN_V3',"2");
INSERT INTO ArtDefine_UnitInfoMemberInfos VALUES ('ART_DEF_UNIT_SPEARMAN','ART_DEF_UNIT_MEMBER_SPEARMAN',"5");
INSERT INTO ArtDefine_UnitInfoMemberInfos VALUES ('ART_DEF_UNIT_SPEARMAN','ART_DEF_UNIT_MEMBER_SPEARMAN_V2',"2");
INSERT INTO ArtDefine_UnitInfoMemberInfos VALUES ('ART_DEF_UNIT_SPEARMAN','ART_DEF_UNIT_MEMBER_SPEARMAN_V3',"4");

-- STEALTH BOMBER
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.10 WHERE Type = 'ART_DEF_UNIT_MEMBER_STEALTHBOMBER';
UPDATE ArtDefine_UnitMemberCombats SET MoveRate = 2.35 WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_STEALTHBOMBER';

-- SUBMARINE
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.12 WHERE Type = 'ART_DEF_UNIT_MEMBER_SUBMARINE';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 3 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_SUBMARINE';
UPDATE ArtDefine_UnitInfos SET Formation = 'Wolfpack' WHERE Type = 'ART_DEF_UNIT_SUBMARINE';
UPDATE ArtDefine_UnitMemberInfos SET Model = 'Submarine_Generic.fxsxml' WHERE Type = 'ART_DEF_UNIT_MEMBER_SUBMARINE';

-- SWORDSMAN
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_SWORDSMAN';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_SWORDSMAN_V2';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_SWORDSMAN_V3';
UPDATE ArtDefine_UnitInfos SET Formation = 'UnFormed' WHERE Type = 'ART_DEF_UNIT_SWORDSMAN';
DELETE FROM ArtDefine_UnitInfoMemberInfos WHERE UnitInfoType='ART_DEF_UNIT_SWORDSMAN';
INSERT INTO ArtDefine_UnitInfoMemberInfos VALUES ('ART_DEF_UNIT_SWORDSMAN','ART_DEF_UNIT_MEMBER_SWORDSMAN_V2',"2");
INSERT INTO ArtDefine_UnitInfoMemberInfos VALUES ('ART_DEF_UNIT_SWORDSMAN','ART_DEF_UNIT_MEMBER_SWORDSMAN',"3");
INSERT INTO ArtDefine_UnitInfoMemberInfos VALUES ('ART_DEF_UNIT_SWORDSMAN','ART_DEF_UNIT_MEMBER_SWORDSMAN_V3',"3");
INSERT INTO ArtDefine_UnitInfoMemberInfos VALUES ('ART_DEF_UNIT_SWORDSMAN','ART_DEF_UNIT_MEMBER_SWORDSMAN_V2',"3");
INSERT INTO ArtDefine_UnitInfoMemberInfos VALUES ('ART_DEF_UNIT_SWORDSMAN','ART_DEF_UNIT_MEMBER_SWORDSMAN',"3");
INSERT INTO ArtDefine_UnitInfoMemberInfos VALUES ('ART_DEF_UNIT_SWORDSMAN','ART_DEF_UNIT_MEMBER_SWORDSMAN_V3',"2");

-- TANK
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.12 WHERE Type = 'ART_DEF_UNIT_MEMBER_TANK';

-- TRANSPORT
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.065 WHERE Type = 'ART_DEF_UNIT_MEMBER_TRANSPORT';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 3 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_TRANSPORT';
UPDATE ArtDefine_UnitInfos SET Formation = 'Flotilla' WHERE Type = 'ART_DEF_UNIT_TRANSPORT';

-- TREBUCHET
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_TREBUCHET';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 3 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_TREBUCHET';
UPDATE ArtDefine_UnitInfos SET Formation = 'FourBigGuns' WHERE Type = 'ART_DEF_UNIT_TREBUCHET';

-- TRIREME
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.054 WHERE Type = 'ART_DEF_UNIT_MEMBER_TRIREME';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_TRIREME';
UPDATE ArtDefine_UnitInfos SET Formation = 'Flotilla' WHERE Type = 'ART_DEF_UNIT_TRIREME';

-- WARRIOR
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_WARRIOR';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_WARRIOR_V2';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_WARRIOR_V4';
DELETE FROM ArtDefine_UnitInfoMemberInfos WHERE UnitInfoType='ART_DEF_UNIT__WARRIOR';
INSERT INTO ArtDefine_UnitInfoMemberInfos VALUES ('ART_DEF_UNIT__WARRIOR','ART_DEF_UNIT_MEMBER_WARRIOR_V2',"2");
INSERT INTO ArtDefine_UnitInfoMemberInfos VALUES ('ART_DEF_UNIT__WARRIOR','ART_DEF_UNIT_MEMBER_WARRIOR_V4',"3");
INSERT INTO ArtDefine_UnitInfoMemberInfos VALUES ('ART_DEF_UNIT__WARRIOR','ART_DEF_UNIT_MEMBER_WARRIOR',"8");
INSERT INTO ArtDefine_UnitInfoMemberInfos VALUES ('ART_DEF_UNIT__WARRIOR','ART_DEF_UNIT_MEMBER_WARRIOR_V2',"3");
INSERT INTO ArtDefine_UnitInfoMemberInfos VALUES ('ART_DEF_UNIT__WARRIOR','ART_DEF_UNIT_MEMBER_WARRIOR_V4',"2");

-- WORKBOAT
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.055 WHERE Type = 'ART_DEF_UNIT_MEMBER_WORKBOAT';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.057 WHERE Type = 'ART_DEF_UNIT_MEMBER_WORKBOAT_INDUSTRIAL';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 3 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_WORKBOAT';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_WORKBOAT_INDUSTRIAL';
UPDATE ArtDefine_UnitInfos SET Formation = 'Flotilla' WHERE Type = 'ART_DEF_UNIT_WORKBOAT';
UPDATE ArtDefine_UnitInfos SET Formation = 'Flotilla' WHERE Type = 'ART_DEF_UNIT_WORKBOAT_LATE';

-- WORKER
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_WORKER_EURO';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_WORKER_EURO_LATE';

-----------------------------------------------------------------------------
-- Unique Units (Vanilla)
-----------------------------------------------------------------------------

-- AMERICAN B-17
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.10 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_AMERICAN_B17';
UPDATE ArtDefine_UnitMemberCombats SET MoveRate = 1.7 WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_U_AMERICAN_B17';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 3 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_AMERICAN_B17';

-- AMERICAN MINUTEMAN
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_AMERICAN_MINUTEMAN';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 19 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_AMERICAN_MINUTEMAN';

-- ARABIAN CAMEL ARCHER
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.085 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_ARABIAN_CAMELARCHER';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 7 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_ARABIAN_CAMELARCHER';

-- AZTEC JAGUAR
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_AZTEC_JAGUAR';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 18 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_AZTEC_JAGUAR';

-- CHINESE CHU-KO-NU				
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_CHINESE_CHUKONU';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 15 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_CHINESE_CHUKONU';
UPDATE ArtDefine_UnitInfos SET Formation = 'Crossbowman' WHERE Type = 'ART_DEF_UNIT_U_CHINESE_CHUKONU';

-- EGYPTIAN WARCHARIOT
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.085 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_EGYPTIAN_WARCHARIOT';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 3 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_EGYPTIAN_WARCHARIOT';

-- ENGLISH LONGBOWMAN
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_ENGLISH_LONGBOWMAN';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 19 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_ENGLISH_LONGBOWMAN';
UPDATE ArtDefine_UnitInfos SET Formation = 'Agincourt' WHERE Type = 'ART_DEF_UNIT_U_ENGLISH_LONGBOWMAN';

-- ENGLISH SHIP OF THE LINE
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.11 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_ENGLISH_SHIPOFTHELINE';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_ENGLISH_SHIPOFTHELINE';
UPDATE ArtDefine_UnitInfos SET Formation = 'Nelson' WHERE Type = 'ART_DEF_UNIT_U_ENGLISH_SHIPOFTHELINE';

-- FRENCH FOREIGN LEGION
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_FRENCH_FOREIGNLEGION';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 18 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_FRENCH_FOREIGNLEGION';

-- FRENCH MUSKETEER
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.085 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_FRENCH_MUSKETEER';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 19 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_FRENCH_MUSKETEER';

-- GERMAN LANDSKNECHT
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_GERMAN_LANDSKNECHT_A';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_GERMAN_LANDSKNECHT_B';
DELETE FROM ArtDefine_UnitInfoMemberInfos WHERE UnitInfoType='ART_DEF_UNIT_U_GERMAN_LANDSKNECHT';
INSERT INTO ArtDefine_UnitInfoMemberInfos VALUES ('ART_DEF_UNIT_U_GERMAN_LANDSKNECHT','ART_DEF_UNIT_MEMBER_U_GERMAN_LANDSKNECHT_A',"5");
INSERT INTO ArtDefine_UnitInfoMemberInfos VALUES ('ART_DEF_UNIT_U_GERMAN_LANDSKNECHT','ART_DEF_UNIT_MEMBER_U_GERMAN_LANDSKNECHT_B',"6");
INSERT INTO ArtDefine_UnitInfoMemberInfos VALUES ('ART_DEF_UNIT_U_GERMAN_LANDSKNECHT','ART_DEF_UNIT_MEMBER_U_GERMAN_LANDSKNECHT_A',"5");

-- GERMAN PANZER
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.11 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_GERMAN_PANZER';

-- GREEK COMPANION CAVALRY
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.085 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_GREEK_COMPANIONCAVALRY';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 7 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_GREEK_COMPANIONCAVALRY';
UPDATE ArtDefine_UnitInfos SET Formation = 'WedgeCavalry' WHERE Type = 'ART_DEF_UNIT_U_GREEK_COMPANIONCAVALRY';

-- GREEK HOPLITE
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_GREEK_HOPLITE';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 18 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_GREEK_HOPLITE';
UPDATE ArtDefine_UnitInfos SET Formation = 'ElitePhalanx' WHERE Type = 'ART_DEF_UNIT_U_GREEK_HOPLITE';

-- INDIAN WARELEPHANT
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.085 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_INDIAN_WARELEPHANT';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 3 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_INDIAN_WARELEPHANT';

-- IROQUOIAN MOHAWK WARRIOR
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_IROQUOIAN_MOHAWKWARRIOR';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 18 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_IROQUOIAN_MOHAWKWARRIOR';

-- JAPANES SAMOURAI
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_JAPANESE_SAMURAI';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 18 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_JAPANESE_SAMURAI';

-- JAPANESE ZERO
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.06 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_JAPANESE_ZERO';
UPDATE ArtDefine_UnitMemberCombats SET MoveRate = 2.0 WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_U_JAPANESE_ZERO';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 4 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_JAPANESE_ZERO';
UPDATE ArtDefine_UnitInfos SET Formation = 'FighterDiamond' WHERE Type = 'ART_DEF_UNIT_U_JAPANESE_ZERO';

-- OTTOMAN JANISSARY
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_OTTOMAN_JANISSARY';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 19 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_OTTOMAN_JANISSARY';

--OTTOMAN SIPAHI
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.085 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_OTTOMAN_SIPAHI';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 7 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_OTTOMAN_SIPAHI';
UPDATE ArtDefine_UnitInfos SET Formation = 'WedgeCavalry' WHERE Type = 'ART_DEF_UNIT_U_OTTOMAN_SIPAHI';

-- PERSIAN IMMORTAL
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_PERSIAN_IMMORTAL';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 20 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_PERSIAN_IMMORTAL';

-- ROMAN BALLISAT
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_ROMAN_BALLISTA';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 4 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_ROMAN_BALLISTA';
UPDATE ArtDefine_UnitInfos SET Formation = 'FourBigGuns' WHERE Type = 'ART_DEF_UNIT_U_ROMAN_BALLISTA';

-- ROMAN LEGION
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_ROMAN_LEGION';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 16 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_ROMAN_LEGION';
UPDATE ArtDefine_UnitInfos SET Formation = 'Square' WHERE Type = 'ART_DEF_UNIT_U_ROMAN_LEGION';

-- RUSSIAN COSSAK
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.085 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_RUSSIAN_COSSACK';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.085 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_RUSSIAN_COSSACK_V2';			
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.085 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_RUSSIAN_COSSACK_V3';
DELETE FROM ArtDefine_UnitInfoMemberInfos WHERE UnitInfoType='ART_DEF_UNIT_U_RUSSIAN_COSSACK';
INSERT INTO ArtDefine_UnitInfoMemberInfos VALUES ('ART_DEF_UNIT_U_RUSSIAN_COSSACK','ART_DEF_UNIT_MEMBER_U_RUSSIAN_COSSACK',"1");
INSERT INTO ArtDefine_UnitInfoMemberInfos VALUES ('ART_DEF_UNIT_U_RUSSIAN_COSSACK','ART_DEF_UNIT_MEMBER_U_RUSSIAN_COSSACK_V2',"2");
INSERT INTO ArtDefine_UnitInfoMemberInfos VALUES ('ART_DEF_UNIT_U_RUSSIAN_COSSACK','ART_DEF_UNIT_MEMBER_U_RUSSIAN_COSSACK_V3',"2");
INSERT INTO ArtDefine_UnitInfoMemberInfos VALUES ('ART_DEF_UNIT_U_RUSSIAN_COSSACK','ART_DEF_UNIT_MEMBER_U_RUSSIAN_COSSACK',"1");
INSERT INTO ArtDefine_UnitInfoMemberInfos VALUES ('ART_DEF_UNIT_U_RUSSIAN_COSSACK','ART_DEF_UNIT_MEMBER_U_RUSSIAN_COSSACK_V2',"1");

-- SIAMESE WAR ELEPHANT
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.085 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_SIAMESE_WARELEPHANT';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 3 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_SIAMESE_WARELEPHANT';

-- SONGHAI MUSLIM CAVALRY			
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.085 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_SONGHAI_MUSLIMCAVALRY';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 7 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_SONGHAI_MUSLIMCAVALRY';
UPDATE ArtDefine_UnitInfos SET Formation = 'WedgeCavalry' WHERE Type = 'ART_DEF_UNIT_U_SONGHAI_MUSLIMCAVALRY';

-----------------------------------------------------------------------------
-- Unique Units (DLC)
-----------------------------------------------------------------------------

-- MOGOLIAN GREAT GENERAL
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.085 WHERE Type = 'ART_DEF_UNIT_MEMBER_GREATGENERAL_KHAN';

-- MONGOLIAN KESHIK
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.085 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_MONGOLIAN_KESHIK';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 7 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_MONGOLIAN_KESHIK';

-- SPANISH CONQUISTADOR			
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.085 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_SPANISH_CONQUISTADOR';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 7 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_SPANISH_CONQUISTADOR';

-- INCAN SLINGER
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_INCAN_SLINGER';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 16 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_INCAN_SLINGER';

-- SPANISH TERCIO
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_SPANISH_TERCIO_ARCABUCERO';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_SPANISH_TERCIO_PIQUERO';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 9 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_SPANISH_TERCIO_PIQUERO';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 9 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_SPANISH_TERCIO_ARCABUCERO';
UPDATE ArtDefine_UnitInfos SET Formation = 'Tercio' WHERE Type = 'ART_DEF_UNIT_U_SPANISH_TERCIO';

-- POLYNESIAN WAR CANOE
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.04 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_POLYNESIAN_WAR_CANOE';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 5 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_POLYNESIAN_WAR_CANOE';
UPDATE ArtDefine_UnitInfos SET Formation = 'Flotilla' WHERE Type = 'ART_DEF_UNIT_U_POLYNESIAN_WAR_CANOE';

-- POLYNESIAN MAORI WARRIOR
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.088 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_POLYNESIAN_MAORI_WARRIOR';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 18 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_POLYNESIAN_MAORI_WARRIOR';

-- DANISH BERSERKER
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.098 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_DANISH_BERSERKER';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 18 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_DANISH_BERSERKER';

-- DANISH SKY INFANTRY
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.087 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_DANISH_SKY_INFANTRY';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 19 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_DANISH_SKY_INFANTRY';

-- DANISH LONGBOAT
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.055 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_DANISH_LONGBOAT';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 4 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_DANISH_LONGBOAT';
UPDATE ArtDefine_UnitInfos SET Formation = 'Flotilla' WHERE Type = 'ART_DEF_UNIT_U_DANISH_LONGBOAT';

-- KOREAN HWACHA
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.085 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_KOREAN_HWACHA';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 3 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_KOREAN_HWACHA';
UPDATE ArtDefine_UnitInfos SET Formation = 'FourBigGuns' WHERE Type = 'ART_DEF_UNIT_U_KOREAN_HWACHA';

-- KOREAN TURTLESHIP
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.11 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_KOREAN_TURTLESHIP';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_KOREAN_TURTLESHIP';
UPDATE ArtDefine_UnitInfos SET Formation = 'Flotilla' WHERE Type = 'ART_DEF_UNIT_U_KOREAN_TURTLESHIP';

-- BABYLONIAN BOWMAN
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_BABYLONIAN_BOWMAN';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 16 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_BABYLONIAN_BOWMAN';

-----------------------------------------------------------------------------
-- Gods & Kings units
-----------------------------------------------------------------------------


-- AUSTRIAN HUSSAR
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.085 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_AUSTRIAN_HUSSAR';

-- BYZANTIUM CATAPHRACT
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.085 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_BYZANTIUM_CATAPHRACT';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 7 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_BYZANTIUM_CATAPHRACT';
UPDATE ArtDefine_UnitInfos SET Formation = 'WedgeCavalry' WHERE Type = 'ART_DEF_UNIT_U_BYZANTIUM_CATAPHRACT';

-- BYZANTIUM DROMON
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.11 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_BYZANTIUM_DROMON';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_BYZANTIUM_DROMON';
UPDATE ArtDefine_UnitInfos SET Formation = 'Flotilla' WHERE Type = 'ART_DEF_UNIT_U_BYZANTIUM_DROMON';

-- CARTHAGE AFRICANFOREST ELEPHANT
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.085 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_CARTHAGE_AFRICANFOREST_ELEPHANT';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 3 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_CARTHAGE_AFRICANFOREST_ELEPHANT';

-- CARTHAGE QUINQUEREME
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.05 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_CARTHAGE_QUINQUEREME';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_CARTHAGE_QUINQUEREME';
UPDATE ArtDefine_UnitInfos SET Formation = 'Colomb' WHERE Type = 'ART_DEF_UNIT_U_CARTHAGE_QUINQUEREME';

-- CELT PICTISH WARRIOR
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_CELT_PICTISH_WARRIOR';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 18 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_CELT_PICTISH_WARRIOR';

-- DUTCH SEA BEGGARS
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.10 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_DUTCH_SEA_BEGGARS';
--UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_DUTCH_SEA_BEGGARS'; -- better alone
UPDATE ArtDefine_UnitInfos SET Formation = 'Flotilla' WHERE Type = 'ART_DEF_UNIT_U_DUTCH_SEA_BEGGARS';

-- ETHIOPIA MEHAL SEFARI
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.085 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_ETHIOPIA_MEHAL_SEFARI';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 19 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_ETHIOPIA_MEHAL_SEFARI';

-- GALLEASS
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_GALLEASS';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 3 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_GALLEASS';
UPDATE ArtDefine_UnitInfos SET Formation = 'Colomb' WHERE Type = 'ART_DEF_UNIT_GALLEASS';

-- GREAT PROPHET
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_GREAT_PROPHET';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_GREAT_PROPHET_MALE';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.085 WHERE Type = 'ART_DEF_UNIT_MEMBER_GREAT_PROPHET_FEMALE';

-- INQUISITOR
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_INQUISITOR';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_INQUISITOR_01';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_INQUISITOR_02';

-- MISSIONARY
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_MISSIONARY';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_MISSIONARY_01';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_MISSIONARY_02';

-- GREAT ADMIRAL
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.10 WHERE Type = 'ART_DEF_UNIT_MEMBER_GREAT_ADMIRAL';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.10 WHERE Type = 'ART_DEF_UNIT_MEMBER_GREAT_ADMIRAL_LATE';

-- PRIVATEER
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_XP_PRIVATEER';

-- HUNS BATTERING RAM
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.075 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_HUNS_BATTERING_RAM';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 3 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_HUNS_BATTERING_RAM';
UPDATE ArtDefine_UnitInfos SET Formation = 'CannonLine' WHERE Type = 'ART_DEF_UNIT_U_HUNS_BATTERING_RAM';

-- HUNS HORSE ARCHER
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.085 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_HUNS_HORSE_ARCHER';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 7 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_HUNS_HORSE_ARCHER';

-- MARINE
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_MARINE';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 18 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_MARINE';

-- MAYAN ATLALIST
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_MAYAN_ATLALIST';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 18 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_MAYAN_ATLALIST';

-- COMPOSITE BOWMAN
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_COMPOSITE_BOWMAN';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 18 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_COMPOSITE_BOWMAN';

-- MACHINEGUN
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_MACHINEGUN';

-- SWEDISH CAROLEAN
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_SWEDISH_CAROLEAN';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 19 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_SWEDISH_CAROLEAN';

-- SWEDISH HAKKAPELITTA
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.085 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_SWEDISH_HAKKAPELITTA';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 7 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_SWEDISH_HAKKAPELITTA';
UPDATE ArtDefine_UnitInfos SET Formation = 'WedgeCavalry' WHERE Type = 'ART_DEF_UNIT_U_SWEDISH_HAKKAPELITTA';


-- WW1 BOMBER
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.075 WHERE Type = 'ART_DEF_UNIT_MEMBER_WW1_BOMBER';
UPDATE ArtDefine_UnitMemberCombats SET MoveRate = 1.5 WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_WW1_BOMBER';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_WW1_BOMBER';

-- WW1 FIGHTER
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.07 WHERE Type = 'ART_DEF_UNIT_MEMBER_WW1_FIGHTER';
UPDATE ArtDefine_UnitMemberCombats SET MoveRate = 1.8 WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_WW1_FIGHTER';

-- WW1 INFANTRY
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_WW1_INFANTRY';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 18 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_WW1_INFANTRY';

-- WW1 TANK
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.12 WHERE Type = 'ART_DEF_UNIT_MEMBER_WW1_TANK';

-- WW2 INFANTRY
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_WW2_INFANTRY';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 18 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_WW2_INFANTRY';

-- GATLINGGUN
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.085 WHERE Type = 'ART_DEF_UNIT_MEMBER_GATLINGGUN';

-- AUSTRIAN HUSSAR
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.085 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_AUSTRIAN_HUSSAR';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 7 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_AUSTRIAN_HUSSAR';


-----------------------------------------------------------------------------
-- Additional units (Scenarios)
-----------------------------------------------------------------------------

-- PRIVATEER
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.14 WHERE Type = 'ART_DEF_UNIT_MEMBER_PRIVATEER';

-- SAXON HUSCARL
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_SAXON_HUSCARL';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 16 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_SAXON_HUSCARL';
UPDATE ArtDefine_UnitInfos SET Formation = 'UnFormed' WHERE Type = 'ART_DEF_UNIT_U_SAXON_HUSCARL';

-- HITTITE WAR CHARIOT
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_HITTITE_WARCHARIOT';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 3 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_HITTITE_WARCHARIOT';
UPDATE ArtDefine_UnitInfos SET Formation = 'ChariotElephant' WHERE Type = 'ART_DEF_UNIT_U_HITTITE_WARCHARIOT';

-- SUMERIAN PHALANX
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.085 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_SUMERIAN_PHALANX';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 20 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_SUMERIAN_PHALANX';

-- SPANISH GALLEON
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.15 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_SPANISH_GALLEON';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_SPANISH_GALLEON';
UPDATE ArtDefine_UnitInfos SET Formation = 'Flotilla' WHERE Type = 'ART_DEF_UNIT_U_SPANISH_GALLEON';

-- SPANISH TREASURE CART
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.063 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_SPANISH_TREASURE_CART';

-- GADRAUHTS SWORDSMAN
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_GADRAUHTS_SWORDSMAN';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 16 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_GADRAUHTS_SWORDSMAN';


-----------------------------------------------------------------------------
-- Brave New World units
-----------------------------------------------------------------------------

-- CARGO SHIP
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.085 WHERE Type = 'ART_DEF_UNIT_MEMBER_CARGO_SHIP';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.085 WHERE Type = 'ART_DEF_UNIT_MEMBER_CARGO_SHIP_MID';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 3 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_CARGO_SHIP';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 3 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_CARGO_SHIP_MID';
UPDATE ArtDefine_UnitInfos SET Formation = 'Flotilla' WHERE Type = 'ART_DEF_UNIT_CARGO_SHIP';
UPDATE ArtDefine_UnitInfos SET Formation = 'Flotilla' WHERE Type = 'ART_DEF_UNIT_CARGO_SHIP_RENAISSANCE';

-- CARAVAN
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.085 WHERE Type = 'ART_DEF_UNIT_MEMBER_CARAVAN';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.085 WHERE Type = 'ART_DEF_UNIT_MEMBER_CARAVAN_F1';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.085 WHERE Type = 'ART_DEF_UNIT_MEMBER_CARAVAN_F2';

-- PORTUGUESE CARRACK
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_PORTUGUESE_CARRACK';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 3 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_PORTUGUESE_CARRACK';
UPDATE ArtDefine_UnitInfos SET Formation = 'Flotilla' WHERE Type = 'ART_DEF_UNIT_U_PORTUGUESE_CARRACK';

-- VENETIAN GALLEASS
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.10 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_VENETIAN_GALLEASS';

-- ARCHAEOLOGIST
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_ARCHAEOLOGIST';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_ARCHAEOLOGIST_F1';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_ARCHAEOLOGIST_F2';

-- POLISH WINGED HUSSAR
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.085 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_POLISH_WINGED_HUSSAR';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 7 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_POLISH_WINGED_HUSSAR';

-- BAZOOKA_INFANTRY
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_BAZOOKA_INFANTRY';

-- GREAT_ARTIST
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_GREAT_ARTIST';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_GREAT_ARTIST_F1';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_GREAT_ARTIST_F2';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_GREAT_ARTIST_LATE';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_GREAT_ARTIST_LATE_F1';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_GREAT_ARTIST_LATE_F2';

-- GREAT_WRITER
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_GREAT_WRITER';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_GREAT_WRITER_F1';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_GREAT_WRITER_F2';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_GREAT_WRITER_LATE';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_GREAT_WRITER_LATE_F1';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_GREAT_WRITER_LATE_F2';

-- GREAT_MUSICIAN
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_GREAT_MUSICIAN';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_GREAT_MUSICIAN_F1';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_GREAT_MUSICIAN_F2';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_GREAT_MUSICIAN_LATE';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_GREAT_MUSICIAN_LATE_F1';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_GREAT_MUSICIAN_LATE_F2';

-- VENETIAN_MERCHANT
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_VENETIAN_MERCHANT';

-- HAND_AXE_BARBARIAN
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.085 WHERE Type = 'ART_DEF_UNIT_MEMBER_HAND_AXE_BARBARIAN';

-- BRAZILIAN_PRACINHAS
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.085 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_BRAZILIAN_PRACINHAS';

-- INDONESIAN_KRIS_SWORDSMAN
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.085 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_INDONESIAN_KRIS_SWORDSMAN';

-- MORROCAN_BERBER_CAVALRY
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.085 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_MORROCAN_BERBER_CAVALRY';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 7 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_MORROCAN_BERBER_CAVALRY';

-- SHOSHONE_PATHFINDER
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.085 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_SHOSHONE_PATHFINDER';

-- ZULU_IMPI_WARRIOR
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.085 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_ZULU_IMPI_WARRIOR';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.085 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_ZULU_IMPI_WARRIOR_V2';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.085 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_ZULU_IMPI_WARRIOR_V3';

-- ASSYRIAN_SIEGE_TOWER
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_ASSYRIAN_SIEGE_TOWER';

-- SHOSHONE_COMANCHE_RIDERS
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.085 WHERE Type = 'ART_DEF_UNIT_MEMBER_U_SHOSHONE_COMANCHE_RIDERS';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 7 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_SHOSHONE_COMANCHE_RIDERS';


-- CONFEDERATE_ARTILLERY_NAPOLEON
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.085 WHERE Type = 'ART_DEF_UNIT_MEMBER_CONFEDERATE_ARTILLERY_NAPOLEON';

-- CONFEDERATE_ARTILLERY_PARROTT
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.085 WHERE Type = 'ART_DEF_UNIT_MEMBER_CONFEDERATE_ARTILLERY_PARROTT';

-- UNION_ARTILLERY_NAPOLEON
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.085 WHERE Type = 'ART_DEF_UNIT_MEMBER_UNION_ARTILLERY_NAPOLEON';

-- UNION_ARTILLERY_PARROTT
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.085 WHERE Type = 'ART_DEF_UNIT_MEMBER_UNION_ARTILLERY_PARROTT';

-- MILITARY_ENGINEER
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_MILITARY_ENGINEER';

-- CONFEDERATE_GREAT_GENERAL
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_CONFEDERATE_GREAT_GENERAL';

-- UNION_GREAT_GENERAL
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_UNION_GREAT_GENERAL';

-- GREAT EXPLORER
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_GREAT_EXPLORER';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_GREAT_EXPLORER_F1';
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.09 WHERE Type = 'ART_DEF_UNIT_MEMBER_GREAT_EXPLORER_F2';

-- XCOM_SQUAD
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.085 WHERE Type = 'ART_DEF_UNIT_MEMBER_XCOM_SQUAD';