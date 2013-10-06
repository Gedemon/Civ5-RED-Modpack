/*

	R.E.D. Modpack
	Table for new units graphic configuration
	by Gedemon (2012)

	Must update the database before any Civilization's Units SQL file.
	
	The info stocked in this table (from each civilization SQL file) are used in CompleteTable.sql (and in MinorCivArtStyle.sql for continent artstyle) to make all the entries on the various art defines tables.
	When a model is used multiple times, it will be added once in tables with unique ID, and only the required table will be updated with multiple entries.
	
	Some entries in the UnitGraphicConfiguration may be redondant (like UC_fxsxml),
	but it allows us to fill that table without bothering which civilization file will be loaded
	first and we can just add the complete entry every time, the code in CompleteTable.sql should (hopefully)
	take care of everything else. 

*/

-----------------------------------------------
-- Create UnitGraphicConfiguration table
-----------------------------------------------

CREATE TABLE UnitGraphicConfiguration (	UC_id INTEGER PRIMARY KEY AUTOINCREMENT,
										UC_CivSuffix TEXT,
										UC_MemberSuffix TEXT,
										UC_fxsxml TEXT,
										UC_TemplateType TEXT,
										UC_TemplateMemberType TEXT,
										UC_NumMember INT default 0,
										UC_Formation TEXT default NULL,
										UC_Scale FLOAT default 0);

/*
	UC_CivSuffix			= Suffix for the ArtDefine. Must be one of those used in CivilizationArtStyle.sql
	UC_MemberSuffix			= Suffix for the unit member, can be different from the civ suffix if we want to use a model for multiple civilizations or use '[Suffix]_V2', '[Suffix]_V3', etc... for multiple figure unit.
	UC_fxsxml				= Name of the fxsxml file of the new model. (with the extension)
	UC_TemplateType			= ART_DEF_UNIT_[name] template used for the new unit's Art Defines.
	UC_TemplateMemberType	= ART_DEF_UNIT_MEMBER_[name] template used for the new unit member's Art Defines.
	UC_NumMember			= Number of figures in the unit for that models. Use multiple lines with different model to "interleave" them. 0 means use value from template unit.
	UC_Formation			= Formation to use for the model. NULL means use value from template unit.
	UC_Scale				= New scale to use for the model. 0 means use value from template unit.
*/

