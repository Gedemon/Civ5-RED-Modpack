/*

	R.E.D. Modpack
	Specific Minors configuration file
	by Gedemon (2012)

	/!\ MUST INITIALIZE THE MINOR LOCAL SUFFIX IN CIVILIZATIONARTSTYLE.SQL FIRST /!\

*/


INSERT INTO UnitGraphicConfiguration
		(	UC_CivSuffix,	UC_MemberSuffix,	UC_fxsxml,						UC_TemplateType,					UC_TemplateMemberType,								UC_NumMember,	UC_Formation,	UC_Scale	)

-- ANTWERP
SELECT	'ANTWERP',		'ANTWERP',				'BelgaeMilnaht.fxsxml',			'ART_DEF_UNIT__WARRIOR',			'ART_DEF_UNIT_MEMBER_WARRIOR',						0,				NULL,			0		UNION ALL

-- LISBON
SELECT	'LISBON',		'LISBON',				'Caetranann.fxsxml',			'ART_DEF_UNIT__WARRIOR',			'ART_DEF_UNIT_MEMBER_WARRIOR',						0,				NULL,			0		UNION ALL
SELECT	'LISBON',		'LISBON',				'PortugalSpearman.fxsxml',		'ART_DEF_UNIT_SPEARMAN',			'ART_DEF_UNIT_MEMBER_SPEARMAN',						0,				NULL,			0		UNION ALL

-- GARAMANTES
SELECT	'GARAMANTES',	'GARAMANTES',			'Garamante.fxsxml',				'ART_DEF_UNIT_SPEARMAN',			'ART_DEF_UNIT_MEMBER_SPEARMAN',						0,				NULL,			0		UNION ALL


-- END OF FILE
SELECT	'END_OF_INSERT',		NULL,			NULL,							NULL,								NULL,											NULL,				NULL,			NULL;
