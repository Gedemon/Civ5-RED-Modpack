/*

	R.E.D. Modpack
	Intermediate Table configuration file for continental style (Minor Civs)
	by Gedemon (2012)

	Store the Continents ArtStyle in the DB before initializing the civilization ArtStyle.
	This way we can set continent first (all Asian civ will get all Asia continent ArtDefines) then "local" (Asian civ Japan then get Japanese specific units)

	That will be usefull for Minor civs with only a few specific units. 

*/

-----------------------------------------------
-- Remove "end of insert" entries 
-----------------------------------------------

DELETE from UnitGraphicConfiguration WHERE UC_CivSuffix ='END_OF_INSERT';

----------------------------------------------------------------------------------------------
-- Make ArtDefine_UnitMemberCombats 
----------------------------------------------------------------------------------------------

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombats (UnitMemberType, EnableActions, DisableActions, MoveRadius, ShortMoveRadius, ChargeRadius, AttackRadius, RangedAttackRadius, MoveRate, ShortMoveRate, TurnRateMin, TurnRateMax, TurnFacingRateMin, TurnFacingRateMax, RollRateMin, RollRateMax, PitchRateMin, PitchRateMax, LOSRadiusScale, TargetRadius, TargetHeight, HasShortRangedAttack, HasLongRangedAttack, HasLeftRightAttack, HasStationaryMelee, HasStationaryRangedAttack, HasRefaceAfterCombat, ReformBeforeCombat, HasIndependentWeaponFacing, HasOpponentTracking, HasCollisionAttack, AttackAltitude, AltitudeDecelerationDistance, OnlyTurnInMovementActions, RushAttackFormation)
	SELECT	UC_TemplateMemberType || '_' || UC_MemberSuffix, EnableActions, DisableActions, MoveRadius, ShortMoveRadius, ChargeRadius, AttackRadius, RangedAttackRadius, 
			MoveRate, ShortMoveRate, TurnRateMin, TurnRateMax, TurnFacingRateMin, TurnFacingRateMax, RollRateMin, RollRateMax, PitchRateMin, PitchRateMax, LOSRadiusScale, TargetRadius, TargetHeight, HasShortRangedAttack, HasLongRangedAttack, HasLeftRightAttack, HasStationaryMelee, HasStationaryRangedAttack, HasRefaceAfterCombat, ReformBeforeCombat, HasIndependentWeaponFacing, HasOpponentTracking, HasCollisionAttack, AttackAltitude, AltitudeDecelerationDistance, OnlyTurnInMovementActions, RushAttackFormation
	FROM ArtDefine_UnitMemberCombats INNER JOIN UnitGraphicConfiguration ON  (UnitMemberType = UC_TemplateMemberType);
	


----------------------------------------------------------------------------------------------
-- Make ArtDefine_UnitMemberCombatWeapons 
----------------------------------------------------------------------------------------------

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombatWeapons (UnitMemberType, "Index", SubIndex, "ID", VisKillStrengthMin, VisKillStrengthMax, ProjectileSpeed, ProjectileTurnRateMin, ProjectileTurnRateMax, HitEffect, HitEffectScale, HitRadius, ProjectileChildEffectScale, AreaDamageDelay, ContinuousFire, WaitForEffectCompletion, TargetGround, IsDropped, WeaponTypeTag, WeaponTypeSoundOverrideTag)
	SELECT UC_TemplateMemberType || '_' || UC_MemberSuffix, "Index", SubIndex, "ID", VisKillStrengthMin, VisKillStrengthMax, ProjectileSpeed, ProjectileTurnRateMin, ProjectileTurnRateMax, HitEffect, HitEffectScale, HitRadius, ProjectileChildEffectScale, AreaDamageDelay, ContinuousFire, WaitForEffectCompletion, TargetGround, IsDropped, WeaponTypeTag, WeaponTypeSoundOverrideTag
	FROM ArtDefine_UnitMemberCombatWeapons INNER JOIN UnitGraphicConfiguration ON (UnitMemberType = UC_TemplateMemberType);
		
		
	
----------------------------------------------------------------------------------------------
-- Make ArtDefine_UnitMemberInfos 
----------------------------------------------------------------------------------------------

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



----------------------------------------------------------------------------------------------
-- Make ArtDefine_UnitInfoMemberInfos 
----------------------------------------------------------------------------------------------

-- Use default number of member
INSERT INTO ArtDefine_UnitInfoMemberInfos (UnitInfoType, UnitMemberInfoType, NumMembers)
	SELECT	UC_TemplateType || '_' || UC_CivSuffix, UC_TemplateMemberType || '_' || UC_MemberSuffix, NumMembers
	FROM ArtDefine_UnitInfoMemberInfos INNER JOIN UnitGraphicConfiguration ON (UC_NumMember = 0 AND UnitInfoType = UC_TemplateType);

-- Use custom number of member
INSERT INTO ArtDefine_UnitInfoMemberInfos (UnitInfoType, UnitMemberInfoType, NumMembers)
	SELECT	UC_TemplateType || '_' || UC_CivSuffix, UC_TemplateMemberType || '_' || UC_MemberSuffix, UC_NumMember
	FROM UnitGraphicConfiguration WHERE (UC_NumMember > 0);
	


--------------------------------------------------------------------------------------------------------
-- Keep only one entry in config table for each unit type
--------------------------------------------------------------------------------------------------------

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



--------------------------------------------------------------------------------------------------------
-- Make ArtDefine_UnitInfos from remaining unique entries
--------------------------------------------------------------------------------------------------------

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



----------------------------------------------------------------------------------------------
-- Delete UnitGraphicConfiguration table
----------------------------------------------------------------------------------------------

DROP TABLE UnitGraphicConfiguration;

----------------------------------------------------------------------------------------------
-- Re-Create UnitGraphicConfiguration table for "local" Ethnic Art Style
----------------------------------------------------------------------------------------------

CREATE TABLE UnitGraphicConfiguration (	UC_id INTEGER PRIMARY KEY AUTOINCREMENT,
										UC_CivSuffix TEXT,
										UC_MemberSuffix TEXT,
										UC_fxsxml TEXT,
										UC_TemplateType TEXT,
										UC_TemplateMemberType TEXT,
										UC_NumMember INT default 0,
										UC_Formation TEXT default NULL,
										UC_Scale FLOAT default 0);