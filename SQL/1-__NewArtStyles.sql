/*

	R.E.D. Modpack
	New ArtStyles
	by Gedemon (2012)

	Add new Art Style types (Mideast, Norse, etc...)

	Must be done here before filling the table, so it takes only vanilla ethnic units (aka Settlers), the continental ethnic units for major civs are added in "3-CivilizationArtStyle.sql"

*/

--------------------------------------------------------------------------------------------------------------------------------------
--  Minor Civs New ArtStyle initialization
--------------------------------------------------------------------------------------------------------------------------------------

-- Correct style
UPDATE MinorCivilizations SET ArtStyleType = 'ARTSTYLE_MIDDLE_EAST'
	WHERE Type = 'MINOR_CIV_ZANZIBAR' OR Type = 'MINOR_CIV_MARRAKECH';
	
UPDATE Civilizations SET ArtStyleType = 'ARTSTYLE_GRECO_ROMAN', ArtStylePrefix = 'MEDITERRANEAN'
	WHERE Type = 'CIVILIZATION_BRAZIL' OR Type = 'CIVILIZATION_PORTUGAL';

-- MIDDLE EAST (new suffix type)
UPDATE MinorCivilizations SET ArtStyleSuffix = "_MIDEAST" 
	WHERE Type = 'MINOR_SIDON' OR Type = 'MINOR_TYRE' OR Type = 'MINOR_CIV_JERUSALEM' OR Type = 'MINOR_CIV_YEREVAN' OR  Type = 'MINOR_CIV_MARRAKECH' OR Type = 'MINOR_CIV_ORMUS';
INSERT INTO "ArtDefine_UnitInfos" ('Type','DamageStates','Formation')
	SELECT	REPLACE("Type", '_AFRI', '_MIDEAST'), "DamageStates", "Formation"
	FROM "ArtDefine_UnitInfos" WHERE Type LIKE '%_AFRI';
INSERT INTO "ArtDefine_UnitInfoMemberInfos" ('UnitInfoType','UnitMemberInfoType','NumMembers')
	SELECT	REPLACE("UnitInfoType", '_AFRI', '_MIDEAST'), "UnitMemberInfoType", "NumMembers"
	FROM "ArtDefine_UnitInfoMemberInfos" WHERE UnitInfoType LIKE '%_AFRI';

-- SOUTH AMERICA (new suffix type)
UPDATE MinorCivilizations SET ArtStyleSuffix = "_SOUTHAM" 
	WHERE Type = 'MINOR_CIV_RIO_DE_JANEIRO' OR Type = 'MINOR_CIV_LA_VENTA';
INSERT INTO "ArtDefine_UnitInfos" ('Type','DamageStates','Formation')
	SELECT	REPLACE("Type", '_AMER', '_SOUTHAM'), "DamageStates", "Formation"
	FROM "ArtDefine_UnitInfos" WHERE Type LIKE '%_AMER';
INSERT INTO "ArtDefine_UnitInfoMemberInfos" ('UnitInfoType','UnitMemberInfoType','NumMembers')
	SELECT	REPLACE("UnitInfoType", '_AMER', '_SOUTHAM'), "UnitMemberInfoType", "NumMembers"
	FROM "ArtDefine_UnitInfoMemberInfos" WHERE UnitInfoType LIKE '%_AMER';