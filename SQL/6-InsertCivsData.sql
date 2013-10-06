/*

	R.E.D. Modpack
	Table configuration file
	by Gedemon (2012)

	Last table before the compatibility tweaks.

	It use the info stocked in the UnitGraphicConfiguration table to make all the entries on the various art defines tables.
	When a model is used multiple times, it will be added once in table with unique ID, only the required table will be updated.
	
	That means that some entries in the UnitGraphicConfiguration are redondant (like UC_fxsxml),
	but it allows us to fill that table without bothering which civilization file will be loaded
	first and we can just add the complete entry every time, the code below should (hopefully)
	take care of everything. 

*/


-----------------------------------------------
-- Remove "END_OF_INSERT" entries 
-----------------------------------------------

DELETE from UnitGraphicConfiguration WHERE UC_CivSuffix ='END_OF_INSERT';

-----------------------------------------------
-- Make ArtDefine_UnitMemberCombats 
-----------------------------------------------

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombats (UnitMemberType, EnableActions, DisableActions, MoveRadius, ShortMoveRadius, ChargeRadius, AttackRadius, RangedAttackRadius, MoveRate, ShortMoveRate, TurnRateMin, TurnRateMax, TurnFacingRateMin, TurnFacingRateMax, RollRateMin, RollRateMax, PitchRateMin, PitchRateMax, LOSRadiusScale, TargetRadius, TargetHeight, HasShortRangedAttack, HasLongRangedAttack, HasLeftRightAttack, HasStationaryMelee, HasStationaryRangedAttack, HasRefaceAfterCombat, ReformBeforeCombat, HasIndependentWeaponFacing, HasOpponentTracking, HasCollisionAttack, AttackAltitude, AltitudeDecelerationDistance, OnlyTurnInMovementActions, RushAttackFormation)
	SELECT	UC_TemplateMemberType || '_' || UC_MemberSuffix, EnableActions, DisableActions, MoveRadius, ShortMoveRadius, ChargeRadius, AttackRadius, RangedAttackRadius, 
			MoveRate, ShortMoveRate, TurnRateMin, TurnRateMax, TurnFacingRateMin, TurnFacingRateMax, RollRateMin, RollRateMax, PitchRateMin, PitchRateMax, LOSRadiusScale, TargetRadius, TargetHeight, HasShortRangedAttack, HasLongRangedAttack, HasLeftRightAttack, HasStationaryMelee, HasStationaryRangedAttack, HasRefaceAfterCombat, ReformBeforeCombat, HasIndependentWeaponFacing, HasOpponentTracking, HasCollisionAttack, AttackAltitude, AltitudeDecelerationDistance, OnlyTurnInMovementActions, RushAttackFormation
	FROM ArtDefine_UnitMemberCombats INNER JOIN UnitGraphicConfiguration ON  (UnitMemberType = UC_TemplateMemberType);
	


-----------------------------------------------
-- Make ArtDefine_UnitMemberCombatWeapons 
-----------------------------------------------

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombatWeapons (UnitMemberType, "Index", SubIndex, "ID", VisKillStrengthMin, VisKillStrengthMax, ProjectileSpeed, ProjectileTurnRateMin, ProjectileTurnRateMax, HitEffect, HitEffectScale, HitRadius, ProjectileChildEffectScale, AreaDamageDelay, ContinuousFire, WaitForEffectCompletion, TargetGround, IsDropped, WeaponTypeTag, WeaponTypeSoundOverrideTag)
	SELECT UC_TemplateMemberType || '_' || UC_MemberSuffix, "Index", SubIndex, "ID", VisKillStrengthMin, VisKillStrengthMax, ProjectileSpeed, ProjectileTurnRateMin, ProjectileTurnRateMax, HitEffect, HitEffectScale, HitRadius, ProjectileChildEffectScale, AreaDamageDelay, ContinuousFire, WaitForEffectCompletion, TargetGround, IsDropped, WeaponTypeTag, WeaponTypeSoundOverrideTag
	FROM ArtDefine_UnitMemberCombatWeapons INNER JOIN UnitGraphicConfiguration ON (UnitMemberType = UC_TemplateMemberType);
		
		
	
-----------------------------------------------
-- Make ArtDefine_UnitMemberInfos 
-----------------------------------------------

-- Use default scale
INSERT OR REPLACE INTO ArtDefine_UnitMemberInfos (Type, Scale, ZOffset, Domain, Model, MaterialTypeTag, MaterialTypeSoundOverrideTag)
	SELECT	UC_TemplateMemberType || '_' || UC_MemberSuffix, Scale, ZOffset, Domain, 
			UC_fxsxml, MaterialTypeTag, MaterialTypeSoundOverrideTag
	FROM ArtDefine_UnitMemberInfos INNER JOIN UnitGraphicConfiguration ON (Type = UC_TemplateMemberType AND UC_Scale = 0);

-- Use custom scale
INSERT OR REPLACE INTO ArtDefine_UnitMemberInfos (Type, Scale, ZOffset, Domain, Model, MaterialTypeTag, MaterialTypeSoundOverrideTag)
	SELECT	UC_TemplateMemberType || '_' || UC_MemberSuffix, UC_Scale, ZOffset, Domain, 
			UC_fxsxml, MaterialTypeTag, MaterialTypeSoundOverrideTag
	FROM ArtDefine_UnitMemberInfos INNER JOIN UnitGraphicConfiguration ON (Type = UC_TemplateMemberType AND UC_Scale > 0);



-----------------------------------------------
-- Make ArtDefine_UnitInfoMemberInfos 
-----------------------------------------------

-- First we clean the ArtDefine_UnitInfoMemberInfos from previously added global (continental artstyle) entry if a local (civilization artstyle) one is going to replace it
DELETE FROM ArtDefine_UnitInfoMemberInfos WHERE UnitInfoType IN
	(SELECT	UC_TemplateType || '_' || UC_CivSuffix FROM UnitGraphicConfiguration);

-- Use default number of member
INSERT INTO ArtDefine_UnitInfoMemberInfos (UnitInfoType, UnitMemberInfoType, NumMembers)
	SELECT	UC_TemplateType || '_' || UC_CivSuffix, UC_TemplateMemberType || '_' || UC_MemberSuffix, NumMembers
	FROM ArtDefine_UnitInfoMemberInfos INNER JOIN UnitGraphicConfiguration ON (UC_NumMember = 0 AND UnitInfoType = UC_TemplateType);

-- Use custom number of member
INSERT INTO ArtDefine_UnitInfoMemberInfos (UnitInfoType, UnitMemberInfoType, NumMembers)
	SELECT	UC_TemplateType || '_' || UC_CivSuffix, UC_TemplateMemberType || '_' || UC_MemberSuffix, UC_NumMember
	FROM UnitGraphicConfiguration WHERE (UC_NumMember > 0);
	


---------------------------------------------------------
-- Keep only one entry in config table for each unit type
---------------------------------------------------------

CREATE TABLE tmpTable ('rowid', int);

INSERT INTO tmpTable (rowid)
	SELECT  rowid FROM UnitGraphicConfiguration yt
		WHERE EXISTS (
		    SELECT * FROM UnitGraphicConfiguration yt2
				WHERE   yt2.UC_CivSuffix = yt.UC_CivSuffix
				AND		yt2.UC_TemplateType = yt.UC_TemplateType
				AND		yt2.rowid > yt.rowid
        );

DELETE FROM UnitGraphicConfiguration
	WHERE   rowid in (SELECT rowid FROM tmpTable);
DROP TABLE tmpTable;



---------------------------------------------------------
-- Make ArtDefine_UnitInfos from remaining unique entries
---------------------------------------------------------

-- Use default formation
INSERT OR REPLACE INTO ArtDefine_UnitInfos (Type,DamageStates,Formation)
	SELECT	UC_TemplateType || '_' || UC_CivSuffix, DamageStates, Formation
	FROM ArtDefine_UnitInfos INNER JOIN UnitGraphicConfiguration
		ON UC_TemplateType = Type AND UC_Formation ISNULL;

-- Use custom formation
INSERT OR REPLACE INTO ArtDefine_UnitInfos (Type,DamageStates,Formation)
	SELECT	UC_TemplateType || '_' || UC_CivSuffix, DamageStates, UC_Formation
	FROM ArtDefine_UnitInfos INNER JOIN UnitGraphicConfiguration
		ON UC_TemplateType = Type AND UC_Formation NOT NULL;



-----------------------------------------------
-- Delete UnitGraphicConfiguration table
-----------------------------------------------

DROP TABLE UnitGraphicConfiguration;


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Finalize R.E.D. Database and handle specific conditions...
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------	

-- Japan UU ---------------------------------------------------------------------------------------------------------------------------------------
UPDATE ArtDefine_UnitInfoMemberInfos SET UnitInfoType='ART_DEF_UNIT_U_JAPANESE_SAMURAI' WHERE UnitInfoType='ART_DEF_UNIT_U_JAPANESE_SAMURAI_TEMP';
---------------------------------------------------------------------------------------------------------------------------------------------------

-- Greece UU --------------------------------------------------------------------------------------------------------------------------------------
UPDATE ArtDefine_UnitInfoMemberInfos SET UnitInfoType='ART_DEF_UNIT_U_GREEK_HOPLITE' WHERE UnitInfoType='ART_DEF_UNIT_U_GREEK_HOPLITE_TEMP';
---------------------------------------------------------------------------------------------------------------------------------------------------