/*

	R.E.D. Modpack
	Ethnic Diversity graphic configuration
	by Gedemon (2012)

	This file must update the database before any Civilization's Units SQL file.

	It set one artstyle suffix by civilization, ethnic units will refer to that artstyle

	It also duplicate unit entry with regional artstyle for each new civilization artstyle created
	For example, asian settler (ART_DEF_UNIT__SETTLER_ASIA) entries will be duplicated for Siam, Japan, etc... new artstyle suffix

	Note : there's no _EURO or _MED tag defined in base game units, but the civilization table refers to them, and they could be useful for global regional units

	Those "global" units should be defined BEFORE this file update the database (ie: in the continent files).

*/

--------------------------------------------------------------------------------------------------------------------------------------
-- Set almost all units to have cultural variation
--------------------------------------------------------------------------------------------------------------------------------------

UPDATE Units SET UnitArtInfoCulturalVariation = 1 WHERE UnitArtInfoEraVariation <> 1;

	
--------------------------------------------------------------------------------------------------------------------------------------
-- Vanilla Major Civ
--------------------------------------------------------------------------------------------------------------------------------------

-- AMERICA
UPDATE Civilizations SET ArtStyleSuffix = "_AMERICA" WHERE Type = 'CIVILIZATION_AMERICA';
INSERT INTO "ArtDefine_UnitInfos" ('Type','DamageStates','Formation')
	SELECT	REPLACE("Type", '_EURO', '_AMERICA'), "DamageStates", "Formation"
	FROM "ArtDefine_UnitInfos" WHERE Type LIKE '%_EURO';
INSERT INTO "ArtDefine_UnitInfoMemberInfos" ('UnitInfoType','UnitMemberInfoType','NumMembers')
	SELECT	REPLACE("UnitInfoType", '_EURO', '_AMERICA'), "UnitMemberInfoType", "NumMembers"
	FROM "ArtDefine_UnitInfoMemberInfos" WHERE UnitInfoType LIKE '%_EURO';
	
-- ARABIA
UPDATE Civilizations SET ArtStyleSuffix = "_ARABIA" WHERE Type = 'CIVILIZATION_ARABIA';
INSERT INTO "ArtDefine_UnitInfos" ('Type','DamageStates','Formation')
	SELECT	REPLACE("Type", '_MIDEAST', '_ARABIA'), "DamageStates", "Formation"
	FROM "ArtDefine_UnitInfos" WHERE Type LIKE '%_MIDEAST';
INSERT INTO "ArtDefine_UnitInfoMemberInfos" ('UnitInfoType','UnitMemberInfoType','NumMembers')
	SELECT	REPLACE("UnitInfoType", '_MIDEAST', '_ARABIA'), "UnitMemberInfoType", "NumMembers"
	FROM "ArtDefine_UnitInfoMemberInfos" WHERE UnitInfoType LIKE '%_MIDEAST';
	
-- AZTEC
UPDATE Civilizations SET ArtStyleSuffix = "_AZTEC" WHERE Type = 'CIVILIZATION_AZTEC';
INSERT INTO "ArtDefine_UnitInfos" ('Type','DamageStates','Formation')
	SELECT	REPLACE("Type", '_SOUTHAM ', '_AZTEC'), "DamageStates", "Formation"
	FROM "ArtDefine_UnitInfos" WHERE Type LIKE '%_SOUTHAM ';
INSERT INTO "ArtDefine_UnitInfoMemberInfos" ('UnitInfoType','UnitMemberInfoType','NumMembers')
	SELECT	REPLACE("UnitInfoType", '_SOUTHAM ', '_AZTEC'), "UnitMemberInfoType", "NumMembers"
	FROM "ArtDefine_UnitInfoMemberInfos" WHERE UnitInfoType LIKE '%_SOUTHAM ';

-- BABYLON
UPDATE Civilizations SET ArtStyleSuffix = "_BABYLON" WHERE Type = 'CIVILIZATION_BABYLON';
INSERT INTO "ArtDefine_UnitInfos" ('Type','DamageStates','Formation')
	SELECT	REPLACE("Type", '_MIDEAST', '_BABYLON'), "DamageStates", "Formation"
	FROM "ArtDefine_UnitInfos" WHERE Type LIKE '%_MIDEAST';
INSERT INTO "ArtDefine_UnitInfoMemberInfos" ('UnitInfoType','UnitMemberInfoType','NumMembers')
	SELECT	REPLACE("UnitInfoType", '_MIDEAST', '_BABYLON'), "UnitMemberInfoType", "NumMembers"
	FROM "ArtDefine_UnitInfoMemberInfos" WHERE UnitInfoType LIKE '%_MIDEAST';

-- CHINA
UPDATE Civilizations SET ArtStyleSuffix = "_CHINA" WHERE Type = 'CIVILIZATION_CHINA';
INSERT INTO "ArtDefine_UnitInfos" ('Type','DamageStates','Formation')
	SELECT	REPLACE("Type", '_ASIA', '_CHINA'), "DamageStates", "Formation"
	FROM "ArtDefine_UnitInfos" WHERE Type LIKE '%_ASIA';
INSERT INTO "ArtDefine_UnitInfoMemberInfos" ('UnitInfoType','UnitMemberInfoType','NumMembers')
	SELECT	REPLACE("UnitInfoType", '_ASIA', '_CHINA'), "UnitMemberInfoType", "NumMembers"
	FROM "ArtDefine_UnitInfoMemberInfos" WHERE UnitInfoType LIKE '%_ASIA';

-- DENMARK
UPDATE Civilizations SET ArtStyleSuffix = "_DENMARK" WHERE Type = 'CIVILIZATION_DENMARK';
INSERT INTO "ArtDefine_UnitInfos" ('Type','DamageStates','Formation')
	SELECT	REPLACE("Type", '_EURO', '_DENMARK'), "DamageStates", "Formation"
	FROM "ArtDefine_UnitInfos" WHERE Type LIKE '%_EURO';
INSERT INTO "ArtDefine_UnitInfoMemberInfos" ('UnitInfoType','UnitMemberInfoType','NumMembers')
	SELECT	REPLACE("UnitInfoType", '_EURO', '_DENMARK'), "UnitMemberInfoType", "NumMembers"
	FROM "ArtDefine_UnitInfoMemberInfos" WHERE UnitInfoType LIKE '%_EURO';
	
-- EGYPT
UPDATE Civilizations SET ArtStyleSuffix = "_EGYPT" WHERE Type = 'CIVILIZATION_EGYPT';
INSERT INTO "ArtDefine_UnitInfos" ('Type','DamageStates','Formation')
	SELECT	REPLACE("Type", '_MIDEAST', '_EGYPT'), "DamageStates", "Formation"
	FROM "ArtDefine_UnitInfos" WHERE Type LIKE '%_MIDEAST';
INSERT INTO "ArtDefine_UnitInfoMemberInfos" ('UnitInfoType','UnitMemberInfoType','NumMembers')
	SELECT	REPLACE("UnitInfoType", '_MIDEAST', '_EGYPT'), "UnitMemberInfoType", "NumMembers"
	FROM "ArtDefine_UnitInfoMemberInfos" WHERE UnitInfoType LIKE '%_MIDEAST';
	
-- ENGLAND
UPDATE Civilizations SET ArtStyleSuffix = "_ENGLAND" WHERE Type = 'CIVILIZATION_ENGLAND';
INSERT INTO "ArtDefine_UnitInfos" ('Type','DamageStates','Formation')
	SELECT	REPLACE("Type", '_EURO', '_ENGLAND'), "DamageStates", "Formation"
	FROM "ArtDefine_UnitInfos" WHERE Type LIKE '%_EURO';
INSERT INTO "ArtDefine_UnitInfoMemberInfos" ('UnitInfoType','UnitMemberInfoType','NumMembers')
	SELECT	REPLACE("UnitInfoType", '_EURO', '_ENGLAND'), "UnitMemberInfoType", "NumMembers"
	FROM "ArtDefine_UnitInfoMemberInfos" WHERE UnitInfoType LIKE '%_EURO';

-- FRANCE
UPDATE Civilizations SET ArtStyleSuffix = "_FRANCE" WHERE Type = 'CIVILIZATION_FRANCE';
INSERT INTO "ArtDefine_UnitInfos" ('Type','DamageStates','Formation')
	SELECT	REPLACE("Type", '_EURO', '_FRANCE'), "DamageStates", "Formation"
	FROM "ArtDefine_UnitInfos" WHERE Type LIKE '%_EURO';
INSERT INTO "ArtDefine_UnitInfoMemberInfos" ('UnitInfoType','UnitMemberInfoType','NumMembers')
	SELECT	REPLACE("UnitInfoType", '_EURO', '_FRANCE'), "UnitMemberInfoType", "NumMembers"
	FROM "ArtDefine_UnitInfoMemberInfos" WHERE UnitInfoType LIKE '%_EURO';

-- GERMANY
UPDATE Civilizations SET ArtStyleSuffix = "_GERMANY" WHERE Type = 'CIVILIZATION_GERMANY';
INSERT INTO "ArtDefine_UnitInfos" ('Type','DamageStates','Formation')
	SELECT	REPLACE("Type", '_EURO', '_GERMANY'), "DamageStates", "Formation"
	FROM "ArtDefine_UnitInfos" WHERE Type LIKE '%_EURO';
INSERT INTO "ArtDefine_UnitInfoMemberInfos" ('UnitInfoType','UnitMemberInfoType','NumMembers')
	SELECT	REPLACE("UnitInfoType", '_EURO', '_GERMANY'), "UnitMemberInfoType", "NumMembers"
	FROM "ArtDefine_UnitInfoMemberInfos" WHERE UnitInfoType LIKE '%_EURO';

-- GREECE
UPDATE Civilizations SET ArtStyleSuffix = "_GREECE" WHERE Type = 'CIVILIZATION_GREECE';
INSERT INTO "ArtDefine_UnitInfos" ('Type','DamageStates','Formation')
	SELECT	REPLACE("Type", '_MED', '_GREECE'), "DamageStates", "Formation"
	FROM "ArtDefine_UnitInfos" WHERE Type LIKE '%_MED';
INSERT INTO "ArtDefine_UnitInfoMemberInfos" ('UnitInfoType','UnitMemberInfoType','NumMembers')
	SELECT	REPLACE("UnitInfoType", '_MED', '_GREECE'), "UnitMemberInfoType", "NumMembers"
	FROM "ArtDefine_UnitInfoMemberInfos" WHERE UnitInfoType LIKE '%_MED';
	
-- INCA
UPDATE Civilizations SET ArtStyleSuffix = "_INCA" WHERE Type = 'CIVILIZATION_INCA';
INSERT INTO "ArtDefine_UnitInfos" ('Type','DamageStates','Formation')
	SELECT	REPLACE("Type", '_SOUTHAM ', '_INCA'), "DamageStates", "Formation"
	FROM "ArtDefine_UnitInfos" WHERE Type LIKE '%_SOUTHAM ';
INSERT INTO "ArtDefine_UnitInfoMemberInfos" ('UnitInfoType','UnitMemberInfoType','NumMembers')
	SELECT	REPLACE("UnitInfoType", '_SOUTHAM ', '_INCA'), "UnitMemberInfoType", "NumMembers"
	FROM "ArtDefine_UnitInfoMemberInfos" WHERE UnitInfoType LIKE '%_SOUTHAM ';

-- INDIA
UPDATE Civilizations SET ArtStyleSuffix = "_INDIA" WHERE Type = 'CIVILIZATION_INDIA';
INSERT INTO "ArtDefine_UnitInfos" ('Type','DamageStates','Formation')
	SELECT	REPLACE("Type", '_ASIA', '_INDIA'), "DamageStates", "Formation"
	FROM "ArtDefine_UnitInfos" WHERE Type LIKE '%_ASIA';
INSERT INTO "ArtDefine_UnitInfoMemberInfos" ('UnitInfoType','UnitMemberInfoType','NumMembers')
	SELECT	REPLACE("UnitInfoType", '_ASIA', '_INDIA'), "UnitMemberInfoType", "NumMembers"
	FROM "ArtDefine_UnitInfoMemberInfos" WHERE UnitInfoType LIKE '%_ASIA';
	
-- IROQUOIS
UPDATE Civilizations SET ArtStyleSuffix = "_IROQUOIS" WHERE Type = 'CIVILIZATION_IROQUOIS';
INSERT INTO "ArtDefine_UnitInfos" ('Type','DamageStates','Formation')
	SELECT	REPLACE("Type", '_AMER', '_IROQUOIS'), "DamageStates", "Formation"
	FROM "ArtDefine_UnitInfos" WHERE Type LIKE '%_AMER';
INSERT INTO "ArtDefine_UnitInfoMemberInfos" ('UnitInfoType','UnitMemberInfoType','NumMembers')
	SELECT	REPLACE("UnitInfoType", '_AMER', '_IROQUOIS'), "UnitMemberInfoType", "NumMembers"
	FROM "ArtDefine_UnitInfoMemberInfos" WHERE UnitInfoType LIKE '%_AMER';

-- JAPAN
UPDATE Civilizations SET ArtStyleSuffix = "_JAPAN" WHERE Type = 'CIVILIZATION_JAPAN';
INSERT INTO "ArtDefine_UnitInfos" ('Type','DamageStates','Formation')
	SELECT	REPLACE("Type", '_ASIA', '_JAPAN'), "DamageStates", "Formation"
	FROM "ArtDefine_UnitInfos" WHERE Type LIKE '%_ASIA';
INSERT INTO "ArtDefine_UnitInfoMemberInfos" ('UnitInfoType','UnitMemberInfoType','NumMembers')
	SELECT	REPLACE("UnitInfoType", '_ASIA', '_JAPAN'), "UnitMemberInfoType", "NumMembers"
	FROM "ArtDefine_UnitInfoMemberInfos" WHERE UnitInfoType LIKE '%_ASIA';

-- KOREA
UPDATE Civilizations SET ArtStyleSuffix = "_KOREA" WHERE Type = 'CIVILIZATION_KOREA';
INSERT INTO "ArtDefine_UnitInfos" ('Type','DamageStates','Formation')
	SELECT	REPLACE("Type", '_ASIA', '_KOREA'), "DamageStates", "Formation"
	FROM "ArtDefine_UnitInfos" WHERE Type LIKE '%_ASIA';
INSERT INTO "ArtDefine_UnitInfoMemberInfos" ('UnitInfoType','UnitMemberInfoType','NumMembers')
	SELECT	REPLACE("UnitInfoType", '_ASIA', '_KOREA'), "UnitMemberInfoType", "NumMembers"
	FROM "ArtDefine_UnitInfoMemberInfos" WHERE UnitInfoType LIKE '%_ASIA';

-- MONGOL
UPDATE Civilizations SET ArtStyleSuffix = "_MONGOL" WHERE Type = 'CIVILIZATION_MONGOL';
INSERT INTO "ArtDefine_UnitInfos" ('Type','DamageStates','Formation')
	SELECT	REPLACE("Type", '_ASIA', '_MONGOL'), "DamageStates", "Formation"
	FROM "ArtDefine_UnitInfos" WHERE Type LIKE '%_ASIA';
INSERT INTO "ArtDefine_UnitInfoMemberInfos" ('UnitInfoType','UnitMemberInfoType','NumMembers')
	SELECT	REPLACE("UnitInfoType", '_ASIA', '_MONGOL'), "UnitMemberInfoType", "NumMembers"
	FROM "ArtDefine_UnitInfoMemberInfos" WHERE UnitInfoType LIKE '%_ASIA';
	
-- OTTOMAN
UPDATE Civilizations SET ArtStyleSuffix = "_OTTOMAN" WHERE Type = 'CIVILIZATION_OTTOMAN';
INSERT INTO "ArtDefine_UnitInfos" ('Type','DamageStates','Formation')
	SELECT	REPLACE("Type", '_MIDEAST', '_OTTOMAN'), "DamageStates", "Formation"
	FROM "ArtDefine_UnitInfos" WHERE Type LIKE '%_MIDEAST';
INSERT INTO "ArtDefine_UnitInfoMemberInfos" ('UnitInfoType','UnitMemberInfoType','NumMembers')
	SELECT	REPLACE("UnitInfoType", '_MIDEAST', '_OTTOMAN'), "UnitMemberInfoType", "NumMembers"
	FROM "ArtDefine_UnitInfoMemberInfos" WHERE UnitInfoType LIKE '%_MIDEAST';
	
-- PERSIA
UPDATE Civilizations SET ArtStyleSuffix = "_PERSIA" WHERE Type = 'CIVILIZATION_PERSIA';
INSERT INTO "ArtDefine_UnitInfos" ('Type','DamageStates','Formation')
	SELECT	REPLACE("Type", '_MIDEAST', '_PERSIA'), "DamageStates", "Formation"
	FROM "ArtDefine_UnitInfos" WHERE Type LIKE '%_MIDEAST';
INSERT INTO "ArtDefine_UnitInfoMemberInfos" ('UnitInfoType','UnitMemberInfoType','NumMembers')
	SELECT	REPLACE("UnitInfoType", '_MIDEAST', '_PERSIA'), "UnitMemberInfoType", "NumMembers"
	FROM "ArtDefine_UnitInfoMemberInfos" WHERE UnitInfoType LIKE '%_MIDEAST';

-- POLYNESIA
UPDATE Civilizations SET ArtStyleSuffix = "_POLYNESIA" WHERE Type = 'CIVILIZATION_POLYNESIA';
INSERT INTO "ArtDefine_UnitInfos" ('Type','DamageStates','Formation')
	SELECT	REPLACE("Type", '_ASIA', '_POLYNESIA'), "DamageStates", "Formation"
	FROM "ArtDefine_UnitInfos" WHERE Type LIKE '%_ASIA';
INSERT INTO "ArtDefine_UnitInfoMemberInfos" ('UnitInfoType','UnitMemberInfoType','NumMembers')
	SELECT	REPLACE("UnitInfoType", '_ASIA', '_POLYNESIA'), "UnitMemberInfoType", "NumMembers"
	FROM "ArtDefine_UnitInfoMemberInfos" WHERE UnitInfoType LIKE '%_ASIA';
	
-- ROME
UPDATE Civilizations SET ArtStyleSuffix = "_ROME" WHERE Type = 'CIVILIZATION_ROME';
INSERT INTO "ArtDefine_UnitInfos" ('Type','DamageStates','Formation')
	SELECT	REPLACE("Type", '_MED', '_ROME'), "DamageStates", "Formation"
	FROM "ArtDefine_UnitInfos" WHERE Type LIKE '%_MED';
INSERT INTO "ArtDefine_UnitInfoMemberInfos" ('UnitInfoType','UnitMemberInfoType','NumMembers')
	SELECT	REPLACE("UnitInfoType", '_MED', '_ROME'), "UnitMemberInfoType", "NumMembers"
	FROM "ArtDefine_UnitInfoMemberInfos" WHERE UnitInfoType LIKE '%_MED';
	
-- RUSSIA
UPDATE Civilizations SET ArtStyleSuffix = "_RUSSIA" WHERE Type = 'CIVILIZATION_RUSSIA';
INSERT INTO "ArtDefine_UnitInfos" ('Type','DamageStates','Formation')
	SELECT	REPLACE("Type", '_EURO', '_RUSSIA'), "DamageStates", "Formation"
	FROM "ArtDefine_UnitInfos" WHERE Type LIKE '%_EURO';
INSERT INTO "ArtDefine_UnitInfoMemberInfos" ('UnitInfoType','UnitMemberInfoType','NumMembers')
	SELECT	REPLACE("UnitInfoType", '_EURO', '_RUSSIA'), "UnitMemberInfoType", "NumMembers"
	FROM "ArtDefine_UnitInfoMemberInfos" WHERE UnitInfoType LIKE '%_EURO';

-- SIAM
UPDATE Civilizations SET ArtStyleSuffix = "_SIAM" WHERE Type = 'CIVILIZATION_SIAM';
INSERT INTO "ArtDefine_UnitInfos" ('Type','DamageStates','Formation')
	SELECT	REPLACE("Type", '_ASIA', '_SIAM'), "DamageStates", "Formation"
	FROM "ArtDefine_UnitInfos" WHERE Type LIKE '%_ASIA';
INSERT INTO "ArtDefine_UnitInfoMemberInfos" ('UnitInfoType','UnitMemberInfoType','NumMembers')
	SELECT	REPLACE("UnitInfoType", '_ASIA', '_SIAM'), "UnitMemberInfoType", "NumMembers"
	FROM "ArtDefine_UnitInfoMemberInfos" WHERE UnitInfoType LIKE '%_ASIA';
	
-- SONGHAI
UPDATE Civilizations SET ArtStyleSuffix = "_SONGHAI" WHERE Type = 'CIVILIZATION_SONGHAI';
INSERT INTO "ArtDefine_UnitInfos" ('Type','DamageStates','Formation')
	SELECT	REPLACE("Type", '_AFRI', '_SONGHAI'), "DamageStates", "Formation"
	FROM "ArtDefine_UnitInfos" WHERE Type LIKE '%_AFRI';
INSERT INTO "ArtDefine_UnitInfoMemberInfos" ('UnitInfoType','UnitMemberInfoType','NumMembers')
	SELECT	REPLACE("UnitInfoType", '_AFRI', '_SONGHAI'), "UnitMemberInfoType", "NumMembers"
	FROM "ArtDefine_UnitInfoMemberInfos" WHERE UnitInfoType LIKE '%_AFRI';

-- SPAIN
UPDATE Civilizations SET ArtStyleSuffix = "_SPAIN" WHERE Type = 'CIVILIZATION_SPAIN';
INSERT INTO "ArtDefine_UnitInfos" ('Type','DamageStates','Formation')
	SELECT	REPLACE("Type", '_MED', '_SPAIN'), "DamageStates", "Formation"
	FROM "ArtDefine_UnitInfos" WHERE Type LIKE '%_MED';
INSERT INTO "ArtDefine_UnitInfoMemberInfos" ('UnitInfoType','UnitMemberInfoType','NumMembers')
	SELECT	REPLACE("UnitInfoType", '_MED', '_SPAIN'), "UnitMemberInfoType", "NumMembers"
	FROM "ArtDefine_UnitInfoMemberInfos" WHERE UnitInfoType LIKE '%_MED';
	
--------------------------------------------------------------------------------------------------------------------------------------
-- G+K Major Civ
--------------------------------------------------------------------------------------------------------------------------------------

-- AUSTRIA	
UPDATE Civilizations SET ArtStyleSuffix = "_AUSTRIA" WHERE Type = 'CIVILIZATION_AUSTRIA';
INSERT INTO "ArtDefine_UnitInfos" ('Type','DamageStates','Formation')
	SELECT	REPLACE("Type", '_EURO', '_AUSTRIA'), "DamageStates", "Formation"
	FROM "ArtDefine_UnitInfos" WHERE Type LIKE '%_EURO';
INSERT INTO "ArtDefine_UnitInfoMemberInfos" ('UnitInfoType','UnitMemberInfoType','NumMembers')
	SELECT	REPLACE("UnitInfoType", '_EURO', '_AUSTRIA'), "UnitMemberInfoType", "NumMembers"
	FROM "ArtDefine_UnitInfoMemberInfos" WHERE UnitInfoType LIKE '%_EURO';
	
-- BYZANTIUM
UPDATE Civilizations SET ArtStyleSuffix = "_BYZANTIUM" WHERE Type = 'CIVILIZATION_BYZANTIUM';
INSERT INTO "ArtDefine_UnitInfos" ('Type','DamageStates','Formation')
	SELECT	REPLACE("Type", '_MED', '_BYZANTIUM'), "DamageStates", "Formation"
	FROM "ArtDefine_UnitInfos" WHERE Type LIKE '%_MED';
INSERT INTO "ArtDefine_UnitInfoMemberInfos" ('UnitInfoType','UnitMemberInfoType','NumMembers')
	SELECT	REPLACE("UnitInfoType", '_MED', '_BYZANTIUM'), "UnitMemberInfoType", "NumMembers"
	FROM "ArtDefine_UnitInfoMemberInfos" WHERE UnitInfoType LIKE '%_MED';
	
-- CARTHAGE
UPDATE Civilizations SET ArtStyleSuffix = "_CARTHAGE" WHERE Type = 'CIVILIZATION_CARTHAGE';
INSERT INTO "ArtDefine_UnitInfos" ('Type','DamageStates','Formation')
	SELECT	REPLACE("Type", '_MED', '_CARTHAGE'), "DamageStates", "Formation"
	FROM "ArtDefine_UnitInfos" WHERE Type LIKE '%_MED';
INSERT INTO "ArtDefine_UnitInfoMemberInfos" ('UnitInfoType','UnitMemberInfoType','NumMembers')
	SELECT	REPLACE("UnitInfoType", '_MED', '_CARTHAGE'), "UnitMemberInfoType", "NumMembers"
	FROM "ArtDefine_UnitInfoMemberInfos" WHERE UnitInfoType LIKE '%_MED';
	
-- CELTS
UPDATE Civilizations SET ArtStyleSuffix = "_CELTS" WHERE Type = 'CIVILIZATION_CELTS';
INSERT INTO "ArtDefine_UnitInfos" ('Type','DamageStates','Formation')
	SELECT	REPLACE("Type", '_EURO', '_CELTS'), "DamageStates", "Formation"
	FROM "ArtDefine_UnitInfos" WHERE Type LIKE '%_EURO';
INSERT INTO "ArtDefine_UnitInfoMemberInfos" ('UnitInfoType','UnitMemberInfoType','NumMembers')
	SELECT	REPLACE("UnitInfoType", '_EURO', '_CELTS'), "UnitMemberInfoType", "NumMembers"
	FROM "ArtDefine_UnitInfoMemberInfos" WHERE UnitInfoType LIKE '%_EURO';
	
-- ETHIOPIA
UPDATE Civilizations SET ArtStyleSuffix = "_ETHIOPIA" WHERE Type = 'CIVILIZATION_ETHIOPIA';
INSERT INTO "ArtDefine_UnitInfos" ('Type','DamageStates','Formation')
	SELECT	REPLACE("Type", '_AFRI', '_ETHIOPIA'), "DamageStates", "Formation"
	FROM "ArtDefine_UnitInfos" WHERE Type LIKE '%_AFRI';
INSERT INTO "ArtDefine_UnitInfoMemberInfos" ('UnitInfoType','UnitMemberInfoType','NumMembers')
	SELECT	REPLACE("UnitInfoType", '_AFRI', '_ETHIOPIA'), "UnitMemberInfoType", "NumMembers"
	FROM "ArtDefine_UnitInfoMemberInfos" WHERE UnitInfoType LIKE '%_AFRI';
	
-- HUNS
UPDATE Civilizations SET ArtStyleSuffix = "_HUNS" WHERE Type = 'CIVILIZATION_HUNS';
INSERT INTO "ArtDefine_UnitInfos" ('Type','DamageStates','Formation')
	SELECT	REPLACE("Type", '_ASIA', '_HUNS'), "DamageStates", "Formation"
	FROM "ArtDefine_UnitInfos" WHERE Type LIKE '%_ASIA';
INSERT INTO "ArtDefine_UnitInfoMemberInfos" ('UnitInfoType','UnitMemberInfoType','NumMembers')
	SELECT	REPLACE("UnitInfoType", '_ASIA', '_HUNS'), "UnitMemberInfoType", "NumMembers"
	FROM "ArtDefine_UnitInfoMemberInfos" WHERE UnitInfoType LIKE '%_ASIA';
	
-- MAYA
UPDATE Civilizations SET ArtStyleSuffix = "_MAYA" WHERE Type = 'CIVILIZATION_MAYA';
INSERT INTO "ArtDefine_UnitInfos" ('Type','DamageStates','Formation')
	SELECT	REPLACE("Type", '_SOUTHAM ', '_MAYA'), "DamageStates", "Formation"
	FROM "ArtDefine_UnitInfos" WHERE Type LIKE '%_SOUTHAM ';
INSERT INTO "ArtDefine_UnitInfoMemberInfos" ('UnitInfoType','UnitMemberInfoType','NumMembers')
	SELECT	REPLACE("UnitInfoType", '_SOUTHAM ', '_MAYA'), "UnitMemberInfoType", "NumMembers"
	FROM "ArtDefine_UnitInfoMemberInfos" WHERE UnitInfoType LIKE '%_SOUTHAM ';
	
-- NETHERLANDS
UPDATE Civilizations SET ArtStyleSuffix = "_NETHERLANDS" WHERE Type = 'CIVILIZATION_NETHERLANDS';
INSERT INTO "ArtDefine_UnitInfos" ('Type','DamageStates','Formation')
	SELECT	REPLACE("Type", '_EURO', '_NETHERLANDS'), "DamageStates", "Formation"
	FROM "ArtDefine_UnitInfos" WHERE Type LIKE '%_EURO';
INSERT INTO "ArtDefine_UnitInfoMemberInfos" ('UnitInfoType','UnitMemberInfoType','NumMembers')
	SELECT	REPLACE("UnitInfoType", '_EURO', '_NETHERLANDS'), "UnitMemberInfoType", "NumMembers"
	FROM "ArtDefine_UnitInfoMemberInfos" WHERE UnitInfoType LIKE '%_EURO';
	
-- SWEDEN
UPDATE Civilizations SET ArtStyleSuffix = "_SWEDEN" WHERE Type = 'CIVILIZATION_SWEDEN';
INSERT INTO "ArtDefine_UnitInfos" ('Type','DamageStates','Formation')
	SELECT	REPLACE("Type", '_EURO', '_SWEDEN'), "DamageStates", "Formation"
	FROM "ArtDefine_UnitInfos" WHERE Type LIKE '%_EURO';
INSERT INTO "ArtDefine_UnitInfoMemberInfos" ('UnitInfoType','UnitMemberInfoType','NumMembers')
	SELECT	REPLACE("UnitInfoType", '_EURO', '_SWEDEN'), "UnitMemberInfoType", "NumMembers"
	FROM "ArtDefine_UnitInfoMemberInfos" WHERE UnitInfoType LIKE '%_EURO';	
	
--------------------------------------------------------------------------------------------------------------------------------------
-- BNW Major Civ
--------------------------------------------------------------------------------------------------------------------------------------

-- ASSYRIA
UPDATE Civilizations SET ArtStyleSuffix = "_ASSYRIA" WHERE Type = 'CIVILIZATION_ASSYRIA';
INSERT INTO "ArtDefine_UnitInfos" ('Type','DamageStates','Formation')
	SELECT	REPLACE("Type", '_MIDEAST', '_ASSYRIA'), "DamageStates", "Formation"
	FROM "ArtDefine_UnitInfos" WHERE Type LIKE '%_MIDEAST';
INSERT INTO "ArtDefine_UnitInfoMemberInfos" ('UnitInfoType','UnitMemberInfoType','NumMembers')
	SELECT	REPLACE("UnitInfoType", '_MIDEAST', '_ASSYRIA'), "UnitMemberInfoType", "NumMembers"
	FROM "ArtDefine_UnitInfoMemberInfos" WHERE UnitInfoType LIKE '%_MIDEAST';	
	
-- BRAZIL
UPDATE Civilizations SET ArtStyleSuffix = "_BRAZIL" WHERE Type = 'CIVILIZATION_BRAZIL';
INSERT INTO "ArtDefine_UnitInfos" ('Type','DamageStates','Formation')
	SELECT	REPLACE("Type", '_MED', '_BRAZIL'), "DamageStates", "Formation"
	FROM "ArtDefine_UnitInfos" WHERE Type LIKE '%_MED';
INSERT INTO "ArtDefine_UnitInfoMemberInfos" ('UnitInfoType','UnitMemberInfoType','NumMembers')
	SELECT	REPLACE("UnitInfoType", '_MED', '_BRAZIL'), "UnitMemberInfoType", "NumMembers"
	FROM "ArtDefine_UnitInfoMemberInfos" WHERE UnitInfoType LIKE '%_MED';

-- MOROCCO
UPDATE Civilizations SET ArtStyleSuffix = "_MOROCCO" WHERE Type = 'CIVILIZATION_MOROCCO';
INSERT INTO "ArtDefine_UnitInfos" ('Type','DamageStates','Formation')
	SELECT	REPLACE("Type", '_MIDEAST', '_MOROCCO'), "DamageStates", "Formation"
	FROM "ArtDefine_UnitInfos" WHERE Type LIKE '%_MIDEAST';
INSERT INTO "ArtDefine_UnitInfoMemberInfos" ('UnitInfoType','UnitMemberInfoType','NumMembers')
	SELECT	REPLACE("UnitInfoType", '_MIDEAST', '_MOROCCO'), "UnitMemberInfoType", "NumMembers"
	FROM "ArtDefine_UnitInfoMemberInfos" WHERE UnitInfoType LIKE '%_MIDEAST';	
	
-- POLAND
UPDATE Civilizations SET ArtStyleSuffix = "_POLAND" WHERE Type = 'CIVILIZATION_POLAND';
INSERT INTO "ArtDefine_UnitInfos" ('Type','DamageStates','Formation')
	SELECT	REPLACE("Type", '_EURO', '_POLAND'), "DamageStates", "Formation"
	FROM "ArtDefine_UnitInfos" WHERE Type LIKE '%_EURO';
INSERT INTO "ArtDefine_UnitInfoMemberInfos" ('UnitInfoType','UnitMemberInfoType','NumMembers')
	SELECT	REPLACE("UnitInfoType", '_EURO', '_POLAND'), "UnitMemberInfoType", "NumMembers"
	FROM "ArtDefine_UnitInfoMemberInfos" WHERE UnitInfoType LIKE '%_EURO';
	
-- PORTUGAL
UPDATE Civilizations SET ArtStyleSuffix = "_PORTUGAL" WHERE Type = 'CIVILIZATION_PORTUGAL';
INSERT INTO "ArtDefine_UnitInfos" ('Type','DamageStates','Formation')
	SELECT	REPLACE("Type", '_MED', '_PORTUGAL'), "DamageStates", "Formation"
	FROM "ArtDefine_UnitInfos" WHERE Type LIKE '%_MED';
INSERT INTO "ArtDefine_UnitInfoMemberInfos" ('UnitInfoType','UnitMemberInfoType','NumMembers')
	SELECT	REPLACE("UnitInfoType", '_MED', '_PORTUGAL'), "UnitMemberInfoType", "NumMembers"
	FROM "ArtDefine_UnitInfoMemberInfos" WHERE UnitInfoType LIKE '%_MED';

-- ZULU
UPDATE Civilizations SET ArtStyleSuffix = "_ZULU" WHERE Type = 'CIVILIZATION_ZULU';
INSERT INTO "ArtDefine_UnitInfos" ('Type','DamageStates','Formation')
	SELECT	REPLACE("Type", '_AFRI', '_ZULU'), "DamageStates", "Formation"
	FROM "ArtDefine_UnitInfos" WHERE Type LIKE '%_AFRI';
INSERT INTO "ArtDefine_UnitInfoMemberInfos" ('UnitInfoType','UnitMemberInfoType','NumMembers')
	SELECT	REPLACE("UnitInfoType", '_AFRI', '_ZULU'), "UnitMemberInfoType", "NumMembers"
	FROM "ArtDefine_UnitInfoMemberInfos" WHERE UnitInfoType LIKE '%_AFRI';
	
-- VENICE
UPDATE Civilizations SET ArtStyleSuffix = "_VENICE" WHERE Type = 'CIVILIZATION_VENICE';
INSERT INTO "ArtDefine_UnitInfos" ('Type','DamageStates','Formation')
	SELECT	REPLACE("Type", '_MED', '_VENICE'), "DamageStates", "Formation"
	FROM "ArtDefine_UnitInfos" WHERE Type LIKE '%_MED';
INSERT INTO "ArtDefine_UnitInfoMemberInfos" ('UnitInfoType','UnitMemberInfoType','NumMembers')
	SELECT	REPLACE("UnitInfoType", '_MED', '_VENICE'), "UnitMemberInfoType", "NumMembers"
	FROM "ArtDefine_UnitInfoMemberInfos" WHERE UnitInfoType LIKE '%_MED';
		
-- SHOSHONE
UPDATE Civilizations SET ArtStyleSuffix = "_SHOSHONE" WHERE Type = 'CIVILIZATION_SHOSHONE';
INSERT INTO "ArtDefine_UnitInfos" ('Type','DamageStates','Formation')
	SELECT	REPLACE("Type", '_AMER', '_SHOSHONE'), "DamageStates", "Formation"
	FROM "ArtDefine_UnitInfos" WHERE Type LIKE '%_AMER';
INSERT INTO "ArtDefine_UnitInfoMemberInfos" ('UnitInfoType','UnitMemberInfoType','NumMembers')
	SELECT	REPLACE("UnitInfoType", '_AMER', '_SHOSHONE'), "UnitMemberInfoType", "NumMembers"
	FROM "ArtDefine_UnitInfoMemberInfos" WHERE UnitInfoType LIKE '%_AMER';	

-- INDONESIA
UPDATE Civilizations SET ArtStyleSuffix = "_INDONESIA" WHERE Type = 'CIVILIZATION_INDONESIA';
INSERT INTO "ArtDefine_UnitInfos" ('Type','DamageStates','Formation')
	SELECT	REPLACE("Type", '_ASIA', '_INDONESIA'), "DamageStates", "Formation"
	FROM "ArtDefine_UnitInfos" WHERE Type LIKE '%_ASIA';
INSERT INTO "ArtDefine_UnitInfoMemberInfos" ('UnitInfoType','UnitMemberInfoType','NumMembers')
	SELECT	REPLACE("UnitInfoType", '_ASIA', '_INDONESIA'), "UnitMemberInfoType", "NumMembers"
	FROM "ArtDefine_UnitInfoMemberInfos" WHERE UnitInfoType LIKE '%_ASIA';
	
	
--------------------------------------------------------------------------------------------------------------------------------------
-- Minor Civs
--------------------------------------------------------------------------------------------------------------------------------------

-- ANTWERP
UPDATE MinorCivilizations SET ArtStyleSuffix = "_SWEDEN" WHERE Type = 'MINOR_CIV_ANTWERP';
INSERT INTO "ArtDefine_UnitInfos" ('Type','DamageStates','Formation')
	SELECT	REPLACE("Type", '_EURO', '_ANTWERP'), "DamageStates", "Formation"
	FROM "ArtDefine_UnitInfos" WHERE Type LIKE '%_EURO';
INSERT INTO "ArtDefine_UnitInfoMemberInfos" ('UnitInfoType','UnitMemberInfoType','NumMembers')
	SELECT	REPLACE("UnitInfoType", '_EURO', '_ANTWERP'), "UnitMemberInfoType", "NumMembers"
	FROM "ArtDefine_UnitInfoMemberInfos" WHERE UnitInfoType LIKE '%_EURO';
	
-- LISBON
UPDATE MinorCivilizations SET ArtStyleSuffix = "_LISBON" WHERE Type = 'MINOR_CIV_LISBON';
INSERT INTO "ArtDefine_UnitInfos" ('Type','DamageStates','Formation')
	SELECT	REPLACE("Type", '_MED', '_LISBON'), "DamageStates", "Formation"
	FROM "ArtDefine_UnitInfos" WHERE Type LIKE '%_MED';
INSERT INTO "ArtDefine_UnitInfoMemberInfos" ('UnitInfoType','UnitMemberInfoType','NumMembers')
	SELECT	REPLACE("UnitInfoType", '_MED', '_LISBON'), "UnitMemberInfoType", "NumMembers"
	FROM "ArtDefine_UnitInfoMemberInfos" WHERE UnitInfoType LIKE '%_MED';

-- GARAMANTES
UPDATE MinorCivilizations SET ArtStyleSuffix = "_GARAMANTES" WHERE Type = 'MINOR_CIV_GARAMANTES';
INSERT INTO "ArtDefine_UnitInfos" ('Type','DamageStates','Formation')
	SELECT	REPLACE("Type", '_MIDEAST', '_GARAMANTES'), "DamageStates", "Formation"
	FROM "ArtDefine_UnitInfos" WHERE Type LIKE '%_MIDEAST';
INSERT INTO "ArtDefine_UnitInfoMemberInfos" ('UnitInfoType','UnitMemberInfoType','NumMembers')
	SELECT	REPLACE("UnitInfoType", '_MIDEAST', '_GARAMANTES'), "UnitMemberInfoType", "NumMembers"
	FROM "ArtDefine_UnitInfoMemberInfos" WHERE UnitInfoType LIKE '%_MIDEAST';	