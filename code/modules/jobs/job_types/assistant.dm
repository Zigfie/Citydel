/*
Assistant
*/
/datum/job/citizen
	title = "Citizen"
	flag = CITIZEN
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 900
	spawn_positions = 900
	supervisors = "no fucking body"
	selection_color = "#dddddd"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	outfit = /datum/outfit/job/citizen
	antag_rep = 7


/datum/job/citizen/get_access()
	return get_all_accesses()

/datum/outfit/job/citizen
	name = "Citizen"
	jobtype = /datum/job/citizen

/datum/outfit/job/assistant/pre_equip(mob/living/carbon/human/H)
	..()
	if (CONFIG_GET(flag/grey_assistants))
		uniform = /obj/item/clothing/under/color/grey
	else
		uniform = /obj/item/clothing/under/color/random
