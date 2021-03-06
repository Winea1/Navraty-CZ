
instance DIA_Rega_EXIT(C_Info)
{
	npc = BAU_933_Rega;
	nr = 999;
	condition = DIA_Rega_EXIT_Condition;
	information = DIA_Rega_EXIT_Info;
	permanent = TRUE;
	description = Dialog_Ende;
};


func int DIA_Rega_EXIT_Condition()
{
	return TRUE;
};

func void DIA_Rega_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

instance DIA_Rega_HALLO(C_Info)
{
	npc = BAU_933_Rega;
	nr = 3;
	condition = DIA_Rega_HALLO_Condition;
	information = DIA_Rega_HALLO_Info;
	description = "Jak se vede?";
};

func int DIA_Rega_HALLO_Condition()
{
	return TRUE;
};

func void DIA_Rega_HALLO_Info()
{
	AI_Output(other,self,"DIA_Rega_HALLO_15_00");	//Jak se vede?

	if((hero.guild == GIL_MIL) || (hero.guild == GIL_PAL))
	{
		AI_Output(self,other,"DIA_Rega_HALLO_17_01");	//Ty jsi z města, co?
	}
	else if((hero.guild == GIL_SLD) || (hero.guild == GIL_DJG))
	{
		AI_Output(self,other,"DIA_Rega_HALLO_17_02");	//Jsi jeden z těch Onarových žoldáků, co?
	}
	else if((hero.guild == GIL_KDF) || (hero.guild == GIL_KDW) || (hero.guild == GIL_GUR) || (hero.guild == GIL_KDM) || (hero.guild == GIL_NOV) || (hero.guild == GIL_NDW) || (hero.guild == GIL_NDM))
	{
		AI_Output(self,other,"DIA_Rega_HALLO_17_03");	//Ty jsi mág, co?
	}
	else
	{
		AI_Output(self,other,"DIA_Rega_HALLO_17_04");	//Ty nejsi jeden z nás, co?
	};

	AI_Output(self,other,"DIA_Rega_HALLO_17_05");	//Na tvém místě bych odsud pěkně rychle vypadla.
	AI_Output(other,self,"DIA_Rega_HALLO_15_06");	//Proč?
	AI_Output(self,other,"DIA_Rega_HALLO_17_07");	//Nikdy to tady nebyl žádný med, ale alespoň jsme měli klid po celou dobu, co děláme pro Sekoba.
	AI_Output(self,other,"DIA_Rega_HALLO_17_08");	//Poslední dobou už je to nesnesitelné.

	if(Kapitel < 3)
	{
		AI_Output(self,other,"DIA_Rega_HALLO_17_09");	//Banditi jsou úplně všude, polní škůdci ničí veškerou úrodu a z velkostatkáře se stal pěknej kruťas.
	};
};

instance DIA_Rega_ONAR(C_Info)
{
	npc = BAU_933_Rega;
	nr = 4;
	condition = DIA_Rega_ONAR_Condition;
	information = DIA_Rega_ONAR_Info;
	description = "Bojíte se velkostatkáře?";
};

func int DIA_Rega_ONAR_Condition()
{
	if(Npc_KnowsInfo(other,DIA_Rega_HALLO) && ((hero.guild != GIL_SLD) && (hero.guild != GIL_DJG)) && (Kapitel < 3))
	{
		return TRUE;
	};
};

func void DIA_Rega_ONAR_Info()
{
	AI_Output(other,self,"DIA_Rega_ONAR_15_00");	//Bojíte se velkostatkáře?
	AI_Output(self,other,"DIA_Rega_ONAR_17_01");	//Jasně. Když se mu nelíbí něčí ksicht, pošle na něj svý žoldáky. To je taky poslední chvíle, kdy toho nebožáka někdo uvidí.
	AI_Output(self,other,"DIA_Rega_ONAR_17_02");	//Takže si raději hledíme svého.
};

instance DIA_Rega_SLD(C_Info)
{
	npc = BAU_933_Rega;
	nr = 5;
	condition = DIA_Rega_SLD_Condition;
	information = DIA_Rega_SLD_Info;
	description = "Copak se o ty polní škůdce nepostarají žoldáci?";
};

func int DIA_Rega_SLD_Condition()
{
	if(Npc_KnowsInfo(other,DIA_Rega_HALLO) && ((hero.guild != GIL_SLD) && (hero.guild != GIL_DJG)) && (Kapitel < 3))
	{
		return TRUE;
	};
};

func void DIA_Rega_SLD_Info()
{
	AI_Output(other,self,"DIA_Rega_SLD_15_00");	//Copak se o ty polní škůdce nepostarají žoldáci?
	AI_Output(self,other,"DIA_Rega_SLD_17_01");	//Nevím, za co jsou placení, ale určitě ne za pomoc nám, obyčejným lidem.
	AI_Output(self,other,"DIA_Rega_SLD_17_02");	//Problém s polními škůdci je teď na malých farmářích, co si pronajali od Onara půdu.
};

instance DIA_Rega_BANDITEN(C_Info)
{
	npc = BAU_933_Rega;
	nr = 6;
	condition = DIA_Rega_BANDITEN_Condition;
	information = DIA_Rega_BANDITEN_Info;
	description = "Jak se bráníte proti banditům?";
};

func int DIA_Rega_BANDITEN_Condition()
{
	if(Npc_KnowsInfo(other,DIA_Rega_HALLO))
	{
		return TRUE;
	};
};

func void DIA_Rega_BANDITEN_Info()
{
	AI_Output(other,self,"DIA_Rega_BANDITEN_15_00");	//Jak se bráníte proti banditům?
	AI_Output(self,other,"DIA_Rega_BANDITEN_17_01");	//Nijak. Prostě utečeme. Ještě něco?
};

instance DIA_Rega_BRONKO(C_Info)
{
	npc = BAU_933_Rega;
	nr = 7;
	condition = DIA_Rega_BRONKO_Condition;
	information = DIA_Rega_BRONKO_Info;
	description = "(zeptat se na Bronka)";
};

func int DIA_Rega_BRONKO_Condition()
{
	if(Npc_KnowsInfo(other,DIA_Bronko_HALLO) && (MIS_Sekob_Bronko_eingeschuechtert == LOG_Running))
	{
		return TRUE;
	};
};

func void DIA_Rega_BRONKO_Info()
{
	AI_Output(other,self,"DIA_Rega_BRONKO_15_00");	//Tak kdo je ten hnusnej chlápek támhle?
	AI_Output(self,other,"DIA_Rega_BRONKO_17_01");	//Neber si to špatně, ale nechci se dostat do potíží. Zeptej se někoho jinýho.
	AI_StopProcessInfos(self);
};


instance DIA_Rega_PERMKAP1(C_Info)
{
	npc = BAU_933_Rega;
	nr = 7;
	condition = DIA_Rega_PERMKAP1_Condition;
	information = DIA_Rega_PERMKAP1_Info;
	permanent = TRUE;
	description = "No tak, trochu kuráže.";
};

func int DIA_Rega_PERMKAP1_Condition()
{
	if(Npc_KnowsInfo(other,DIA_Rega_HALLO))
	{
		return TRUE;
	};
};

func void DIA_Rega_PERMKAP1_Info()
{
	AI_Output(other,self,"DIA_Rega_PERMKAP1_15_00");	//No tak, trochu kuráže.

	if((hero.guild == GIL_MIL) || (hero.guild == GIL_PAL))
	{
		AI_Output(self,other,"DIA_Rega_PERMKAP1_17_01");	//Tobě se to mluví. Ty přece bydlíš ve městě.
	}
	else if((hero.guild == GIL_SLD) || (hero.guild == GIL_DJG))
	{
		AI_Output(self,other,"DIA_Rega_PERMKAP1_17_02");	//Kdyby ti žoldáci nebyli takoví hajzlové, všechno ostatní by se dalo překousnout.
	}
	else if(hero.guild == GIL_KDF)
	{
		AI_Output(self,other,"DIA_Rega_PERMKAP1_17_03");	//Mágů je tu pořád míň a míň. Doufám, že ty nejsi poslední. Potřebujeme vás - víc než kdykoli jindy.
	}
	else
	{
		AI_Output(self,other,"DIA_Rega_PERMKAP1_17_04");	//Není to tak snadné, když makáš pro toho otrokáře Sekoba.
	};
	AI_StopProcessInfos(self);
};


instance DIA_Rega_PICKPOCKET(C_Info)
{
	npc = BAU_933_Rega;
	nr = 900;
	condition = DIA_Rega_PICKPOCKET_Condition;
	information = DIA_Rega_PICKPOCKET_Info;
	permanent = TRUE;
	description = PICKPOCKET_COMM;
};


func int DIA_Rega_PICKPOCKET_Condition()
{
	return C_Beklauen(25,40);
};

func void DIA_Rega_PICKPOCKET_Info()
{
	Info_ClearChoices(DIA_Rega_PICKPOCKET);
	Info_AddChoice(DIA_Rega_PICKPOCKET,Dialog_Back,DIA_Rega_PICKPOCKET_BACK);
	Info_AddChoice(DIA_Rega_PICKPOCKET,DIALOG_PICKPOCKET,DIA_Rega_PICKPOCKET_DoIt);
};

func void DIA_Rega_PICKPOCKET_DoIt()
{
	B_Beklauen();
	Info_ClearChoices(DIA_Rega_PICKPOCKET);
};

func void DIA_Rega_PICKPOCKET_BACK()
{
	Info_ClearChoices(DIA_Rega_PICKPOCKET);
};