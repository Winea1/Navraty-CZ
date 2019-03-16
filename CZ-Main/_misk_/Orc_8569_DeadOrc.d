instance Orc_8569_DeadOrc(C_Npc)
{
	name[0] = CZ_NAME_Orc_Unique_DeadOrc;
	guild = GIL_UNDEADORC;
	flags = ORCTEMPLENPCFLAGS;
	aivar[AIV_MM_REAL_ID] = ID_UNDEADORCWARRIOR;
	voice = 18;
	id = 8569;
	level = 25;
	attribute[ATR_STRENGTH] = 200;
	attribute[ATR_DEXTERITY] = 200;
	attribute[ATR_HITPOINTS_MAX] = 1000;
	attribute[ATR_HITPOINTS] = 1000;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	protection[PROT_BLUNT] = 150;
	protection[PROT_EDGE] = 150;
	protection[PROT_POINT] = 1000;
	protection[PROT_FIRE] = 25;
	protection[PROT_FLY] = IMMUNE;
	protection[PROT_MAGIC] = 20;
	HitChance[NPC_TALENT_1H] = 50;
	HitChance[NPC_TALENT_2H] = 50;
	HitChance[NPC_TALENT_BOW] = 50;
	HitChance[NPC_TALENT_CROSSBOW] = 50;
	damagetype = DAM_EDGE;
	fight_tactic = FAI_ORC;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = PERC_DIST_MONSTER_ACTIVE_MAX;
	aivar[AIV_MM_FollowTime] = FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
	aivar[AIV_EnemyOverride] = TRUE;
	Mdl_SetVisual(self,"Orc.mds");
	Mdl_SetVisualBody(self,"Orc_BodyShaOrc",DEFAULT,DEFAULT,"Orc_HeadWarrior",DEFAULT,DEFAULT,-1);
	EquipItem(self,ItMw_2H_OrcMace_01);
	start_aistate = ZS_MM_Rtn_DragonRest;
	aivar[AIV_MM_RestStart] = OnlyRoutine;
};