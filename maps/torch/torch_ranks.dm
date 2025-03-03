/datum/job/submap
	branch = /datum/mil_branch/civilian
	rank =   /datum/mil_rank/civ/civ
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/civ)
	required_language = null

/datum/map/torch
	branch_types = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet,
		/datum/mil_branch/civilian,
		/datum/mil_branch/solgov,
		/datum/mil_branch/iic,
		/datum/mil_branch/alien,
		/datum/mil_branch/skrell_fleet,
		/datum/mil_branch/iccgn
	)

	spawn_branch_types = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet,
		/datum/mil_branch/iic,
		/datum/mil_branch/civilian,
		/datum/mil_branch/solgov,
		/datum/mil_branch/alien,
		/datum/mil_branch/skrell_fleet
	)

	species_to_branch_blacklist = list(
		/datum/species/human   = list(/datum/mil_branch/alien, /datum/mil_branch/skrell_fleet),
		/datum/species/machine = list(/datum/mil_branch/alien, /datum/mil_branch/skrell_fleet),
		/datum/species/machine/shell = list(/datum/mil_branch/alien, /datum/mil_branch/skrell_fleet),
		/datum/species/vox     = list(
			/datum/mil_branch/expeditionary_corps,
			/datum/mil_branch/fleet,
			/datum/mil_branch/iic,
			/datum/mil_branch/civilian,
			/datum/mil_branch/solgov,
			/datum/mil_branch/skrell_fleet
		)
	)

	species_to_branch_whitelist = list(
		/datum/species/diona        = list(/datum/mil_branch/civilian),
		/datum/species/nabber       = list(/datum/mil_branch/civilian),
		/datum/species/skrell       = list(/datum/mil_branch/civilian, /datum/mil_branch/expeditionary_corps, /datum/mil_branch/skrell_fleet),
		/datum/species/unathi       = list(/datum/mil_branch/civilian, /datum/mil_branch/expeditionary_corps),
		/datum/species/unathi/yeosa = list(/datum/mil_branch/civilian, /datum/mil_branch/expeditionary_corps),
		/datum/species/adherent     = list(/datum/mil_branch/civilian),
		/datum/species/vox          = list(/datum/mil_branch/alien)
	)

	species_to_rank_blacklist = list(
		/datum/species/machine = list(
			/datum/mil_branch/solgov = list(
				/datum/mil_rank/sol/agent
			)
		)
	)

	species_to_rank_whitelist = list(
		/datum/species/machine = list(
			/datum/mil_branch/expeditionary_corps = list(
				/datum/mil_rank/ec/e3,
				/datum/mil_rank/ec/e5,
				/datum/mil_rank/ec/e7,
				/datum/mil_rank/ec/o1,
				/datum/mil_rank/ec/o3
			),
			/datum/mil_branch/fleet = list(
				/datum/mil_rank/fleet/e1,
				/datum/mil_rank/fleet/e2,
				/datum/mil_rank/fleet/e3,
				/datum/mil_rank/fleet/e4,
				/datum/mil_rank/fleet/e5,
				/datum/mil_rank/fleet/e6,
				/datum/mil_rank/fleet/e7,
				/datum/mil_rank/fleet/o1,
				/datum/mil_rank/fleet/o2,
				/datum/mil_rank/fleet/o3
			),
			/datum/mil_branch/iic = list(
				/datum/mil_rank/iic/e1,
				/datum/mil_rank/iic/e2,
				/datum/mil_rank/iic/e3,
				/datum/mil_rank/iic/e4_alt,
				/datum/mil_rank/iic/e5,
				/datum/mil_rank/iic/e6,
				/datum/mil_rank/iic/e7,
				/datum/mil_rank/iic/o1,
				/datum/mil_rank/iic/o2,
				/datum/mil_rank/iic/o3
			)
		),
		/datum/species/machine/shell = list(
			/datum/mil_branch/expeditionary_corps = list(
				/datum/mil_rank/ec/e3,
				/datum/mil_rank/ec/e5,
				/datum/mil_rank/ec/e7,
				/datum/mil_rank/ec/o1,
				/datum/mil_rank/ec/o3
			),
			/datum/mil_branch/fleet = list(
				/datum/mil_rank/fleet/e1,
				/datum/mil_rank/fleet/e2,
				/datum/mil_rank/fleet/e3,
				/datum/mil_rank/fleet/e4,
				/datum/mil_rank/fleet/e5,
				/datum/mil_rank/fleet/e6,
				/datum/mil_rank/fleet/e7,
				/datum/mil_rank/fleet/o1,
				/datum/mil_rank/fleet/o2,
				/datum/mil_rank/fleet/o3
			),
			/datum/mil_branch/iic = list(
				/datum/mil_rank/iic/e1,
				/datum/mil_rank/iic/e2,
				/datum/mil_rank/iic/e3,
				/datum/mil_rank/iic/e4_alt,
				/datum/mil_rank/iic/e5,
				/datum/mil_rank/iic/e6,
				/datum/mil_rank/iic/e7,
				/datum/mil_rank/iic/o1,
				/datum/mil_rank/iic/o2,
				/datum/mil_rank/iic/o3
			)
		),
		/datum/species/skrell = list(
			/datum/mil_branch/expeditionary_corps = list(
				/datum/mil_rank/ec/e3,
				/datum/mil_rank/ec/e5,
				/datum/mil_rank/ec/e7,
				/datum/mil_rank/ec/o1
			)
		),
		/datum/species/unathi = list(
			/datum/mil_branch/expeditionary_corps = list(
				/datum/mil_rank/ec/e3,
				/datum/mil_rank/ec/e5
			)
		),
		/datum/species/unathi/yeosa = list(
			/datum/mil_branch/expeditionary_corps = list(
				/datum/mil_rank/ec/e3,
				/datum/mil_rank/ec/e5
			)
		),
		/datum/species/vox = list(
			/datum/mil_branch/alien = list(
				/datum/mil_rank/alien
			)
		)
	)

/*
	*  Branches
	*  ========
	*/

/datum/mil_branch/expeditionary_corps
	name = "Expeditionary Corps"
	name_short = "SCGEC"
	email_domain = "torch.ec.scg"

	rank_types = list(
		/datum/mil_rank/ec/e3,
		/datum/mil_rank/ec/e5,
		/datum/mil_rank/ec/e7,
		/datum/mil_rank/ec/o1,
		/datum/mil_rank/ec/o3,
		/datum/mil_rank/ec/o5,
		/datum/mil_rank/ec/o6
	)

	spawn_rank_types = list(
		/datum/mil_rank/ec/e3,
		/datum/mil_rank/ec/e5,
		/datum/mil_rank/ec/e7,
		/datum/mil_rank/ec/o1,
		/datum/mil_rank/ec/o3,
		/datum/mil_rank/ec/o5,
		/datum/mil_rank/ec/o6
	)

	assistant_job = /datum/job/crew

	min_skill = list(	SKILL_HAULING = SKILL_BASIC,
						SKILL_SCIENCE = SKILL_BASIC,
						SKILL_EVA     = SKILL_BASIC)

/datum/mil_branch/fleet
	name = "Fleet"
	name_short = "SCGF"
	email_domain = "torch.fleet.mil"

	rank_types = list(
		/datum/mil_rank/fleet/e1,
		/datum/mil_rank/fleet/e2,
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/fleet/e4,
		/datum/mil_rank/fleet/e5,
		/datum/mil_rank/fleet/e6,
		/datum/mil_rank/fleet/e7,
		/datum/mil_rank/fleet/e8,
		/datum/mil_rank/fleet/e9,
		/datum/mil_rank/fleet/e9_alt1,
		/datum/mil_rank/fleet/e9_alt2,
		/datum/mil_rank/fleet/e9_alt3,
		/datum/mil_rank/fleet/e9_alt4,
		/datum/mil_rank/fleet/o1,
		/datum/mil_rank/fleet/o2,
		/datum/mil_rank/fleet/o3,
		/datum/mil_rank/fleet/o4,
		/datum/mil_rank/fleet/o5,
		/datum/mil_rank/fleet/o6,
		/datum/mil_rank/fleet/o7,
		/datum/mil_rank/fleet/o8,
		/datum/mil_rank/fleet/o9,
		/datum/mil_rank/fleet/o10,
		/datum/mil_rank/fleet/o10_alt
	)

	spawn_rank_types = list(
		/datum/mil_rank/fleet/e2,
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/fleet/e4,
		/datum/mil_rank/fleet/e5,
		/datum/mil_rank/fleet/e6,
		/datum/mil_rank/fleet/e7,
		/datum/mil_rank/fleet/e8,
		/datum/mil_rank/fleet/e9,
		/datum/mil_rank/fleet/e9_alt1,
		/datum/mil_rank/fleet/o1,
		/datum/mil_rank/fleet/o2,
		/datum/mil_rank/fleet/o3,
		/datum/mil_rank/fleet/o4,
		/datum/mil_rank/fleet/o5
	)

	assistant_job = /datum/job/crew
	min_skill = list(	SKILL_HAULING = SKILL_BASIC,
						SKILL_WEAPONS = SKILL_BASIC,
						SKILL_EVA     = SKILL_BASIC)

/datum/mil_branch/iic
	name = "Interstellar Corps"
	name_short = "SCGIIC"
	email_domain = "torch.interstellar.mil"

	rank_types = list(
		/datum/mil_rank/iic/e1,
		/datum/mil_rank/iic/e2,
		/datum/mil_rank/iic/e3,
		/datum/mil_rank/iic/e4_alt,
		/datum/mil_rank/iic/e5,
		/datum/mil_rank/iic/e6,
		/datum/mil_rank/iic/e7,
		/datum/mil_rank/iic/e8,
		/datum/mil_rank/iic/e8_alt,
		/datum/mil_rank/iic/e9,
		/datum/mil_rank/iic/e9_alt1,
		/datum/mil_rank/iic/e9_alt2,
		/datum/mil_rank/iic/o1,
		/datum/mil_rank/iic/o2,
		/datum/mil_rank/iic/o3,
		/datum/mil_rank/iic/o4,
		/datum/mil_rank/iic/o5,
		/datum/mil_rank/iic/o6,
		/datum/mil_rank/iic/o7,
		/datum/mil_rank/iic/o8
	)

	spawn_rank_types = list(
		/datum/mil_rank/iic/e1,
		/datum/mil_rank/iic/e2,
		/datum/mil_rank/iic/e3,
		/datum/mil_rank/iic/e4_alt,
		/datum/mil_rank/iic/e5,
		/datum/mil_rank/iic/e6,
		/datum/mil_rank/iic/e7,
		/datum/mil_rank/iic/e8,
		/datum/mil_rank/iic/e8_alt,
		/datum/mil_rank/iic/e9,
		/datum/mil_rank/iic/e9_alt1,
		/datum/mil_rank/iic/e9_alt2,
		/datum/mil_rank/iic/o1,
		/datum/mil_rank/iic/o2,
		/datum/mil_rank/iic/o3,
		/datum/mil_rank/iic/o4,
		/datum/mil_rank/iic/o5
	)

	assistant_job = /datum/job/crew
	min_skill = list(	SKILL_HAULING = SKILL_ADEPT,
	                    SKILL_WEAPONS = SKILL_BASIC,
	                    SKILL_COMBAT  = SKILL_BASIC)

/datum/mil_branch/civilian
	name = "Civilian"
	email_domain = "freemail.net"
	allow_custom_email = TRUE

	rank_types = list(
		/datum/mil_rank/civ/civ,
		/datum/mil_rank/civ/first,
		/datum/mil_rank/civ/second,
		/datum/mil_rank/civ/three,
		/datum/mil_rank/civ/synthetic,
		/datum/mil_rank/civ/exo_synth
	)

	spawn_rank_types = list(
		/datum/mil_rank/civ/civ,
		/datum/mil_rank/civ/first,
		/datum/mil_rank/civ/second,
		/datum/mil_rank/civ/three,
		/datum/mil_rank/civ/synthetic,
		/datum/mil_rank/civ/exo_synth
	)

/datum/mil_branch/solgov
	name = "SolGov Employee"
	name_short = "SCG"
	email_domain = "torch.scg"

	rank_types = list(
		/datum/mil_rank/sol/gov,
		/datum/mil_rank/sol/junior_agent,
		/datum/mil_rank/sol/duty_agent,
		/datum/mil_rank/sol/agent,
		/datum/mil_rank/sol/senior_agent,
		/datum/mil_rank/sol/inspector_agent,
		/datum/mil_rank/sol/curator_agent,
		/datum/mil_rank/sol/deputy_agent,
		/datum/mil_rank/sol/director_agent,
		/datum/mil_rank/sol/scientist
	)

	spawn_rank_types = list(
		/datum/mil_rank/sol/gov,
		/datum/mil_rank/sol/junior_agent,
		/datum/mil_rank/sol/duty_agent,
		/datum/mil_rank/sol/agent,
		/datum/mil_rank/sol/senior_agent,
		/datum/mil_rank/sol/inspector_agent,
		/datum/mil_rank/sol/curator_agent,
		/datum/mil_rank/sol/deputy_agent,
		/datum/mil_rank/sol/director_agent,
		/datum/mil_rank/sol/scientist
	)

/datum/mil_rank/grade()
	. = ..()
	if(!sort_order)
		return ""
	if(sort_order <= 10)
		return "E[sort_order]"
	return "O[sort_order - 10]"

// Within the scope of the Torch, this is the only necessary differentiation.
/datum/mil_rank/rank_category()
	. = ..()
	if(!sort_order)
		return null
	if(sort_order <= 10)
		return GET_SINGLETON(/singleton/rank_category/enlisted)
	else
		return GET_SINGLETON(/singleton/rank_category/commissioned)

/singleton/rank_category/enlisted
	name = "Enlisted"

/singleton/rank_category/commissioned
	name = "Commissioned"
	add_accesses = list(access_o_mess)

/*
	*  Fleet
	*  =====
	*/

/datum/mil_rank/fleet/e1
	name = "Crewman Recruit"
	name_short = "CR"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/enlisted, /obj/item/clothing/accessory/solgov/specialty/enlisted)
	sort_order = 1

/datum/mil_rank/fleet/e2
	name = "Crewman Apprentice"
	name_short = "CA"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/enlisted/e2, /obj/item/clothing/accessory/solgov/specialty/enlisted)
	sort_order = 2

/datum/mil_rank/fleet/e3
	name = "Crewman"
	name_short = "CN"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/enlisted/e3, /obj/item/clothing/accessory/solgov/specialty/enlisted)
	sort_order = 3

/datum/mil_rank/fleet/e4
	name = "Petty Officer Third Class"
	name_short = "PO3"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/enlisted/e4, /obj/item/clothing/accessory/solgov/specialty/enlisted)
	sort_order = 4

/datum/mil_rank/fleet/e5
	name = "Petty Officer Second Class"
	name_short = "PO2"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/enlisted/e5, /obj/item/clothing/accessory/solgov/specialty/enlisted)
	sort_order = 5

/datum/mil_rank/fleet/e6
	name = "Petty Officer First Class"
	name_short = "PO1"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/enlisted/e6, /obj/item/clothing/accessory/solgov/specialty/enlisted)
	sort_order = 6

/datum/mil_rank/fleet/e7
	name = "Chief Petty Officer"
	name_short = "CPO"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/enlisted/e7, /obj/item/clothing/accessory/solgov/specialty/enlisted)
	sort_order = 7

/datum/mil_rank/fleet/e8
	name = "Senior Chief Petty Officer"
	name_short = "SCPO"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/enlisted/e8, /obj/item/clothing/accessory/solgov/specialty/enlisted)
	sort_order = 8

/datum/mil_rank/fleet/e9
	name = "Master Chief Petty Officer"
	name_short = "MCPO"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/enlisted/e9, /obj/item/clothing/accessory/solgov/specialty/enlisted)
	sort_order = 9

/datum/mil_rank/fleet/e9_alt1
	name = "Command Master Chief Petty Officer"
	name_short = "CMCPO"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/enlisted/e9_alt1, /obj/item/clothing/accessory/solgov/specialty/enlisted)
	sort_order = 9

/datum/mil_rank/fleet/e9_alt2
	name = "Fleet Master Chief Petty Officer"
	name_short = "FLTCM"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/enlisted/e9_alt2, /obj/item/clothing/accessory/solgov/specialty/enlisted)
	sort_order = 9

/datum/mil_rank/fleet/e9_alt3
	name = "Force Master Chief Petty Officer"
	name_short = "FORCM"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/enlisted/e9_alt3, /obj/item/clothing/accessory/solgov/specialty/enlisted)
	sort_order = 9

/datum/mil_rank/fleet/e9_alt4
	name = "Master Chief Petty Officer of the Fleet"
	name_short = "MCPOF"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/enlisted/e9_alt4, /obj/item/clothing/accessory/solgov/specialty/enlisted)
	sort_order = 9

/datum/mil_rank/fleet/o1
	name = "Ensign"
	name_short = "ENS"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/officer, /obj/item/clothing/accessory/solgov/specialty/officer)
	sort_order = 11

/datum/mil_rank/fleet/o2
	name = "Sub-lieutenant"
	name_short = "SLT"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/officer/o2, /obj/item/clothing/accessory/solgov/specialty/officer)
	sort_order = 12

/datum/mil_rank/fleet/o3
	name = "Lieutenant"
	name_short = "LT"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/officer/o3, /obj/item/clothing/accessory/solgov/specialty/officer)
	sort_order = 13

/datum/mil_rank/fleet/o4
	name = "Lieutenant Commander"
	name_short = "LCDR"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/officer/o4, /obj/item/clothing/accessory/solgov/specialty/officer)
	sort_order = 14

/datum/mil_rank/fleet/o5
	name = "Commander"
	name_short = "CDR"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/officer/o5, /obj/item/clothing/accessory/solgov/specialty/officer)
	sort_order = 15

/datum/mil_rank/fleet/o6
	name = "Captain"
	name_short = "CAPT"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/officer/o6, /obj/item/clothing/accessory/solgov/specialty/officer)
	sort_order = 16

/datum/mil_rank/fleet/o7
	name = "Commodore"
	name_short = "CDRE"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/flag, /obj/item/clothing/accessory/solgov/specialty/officer)
	sort_order = 17

/datum/mil_rank/fleet/o8
	name = "Rear Admiral"
	name_short = "RADM"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/flag/o8, /obj/item/clothing/accessory/solgov/specialty/officer)
	sort_order = 18

/datum/mil_rank/fleet/o9
	name = "Vice Admiral"
	name_short = "VADM"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/flag/o9, /obj/item/clothing/accessory/solgov/specialty/officer)
	sort_order = 19

/datum/mil_rank/fleet/o10
	name = "Admiral"
	name_short = "ADM"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/flag/o10, /obj/item/clothing/accessory/solgov/specialty/officer)
	sort_order = 20

/datum/mil_rank/fleet/o10_alt
	name = "Fleet Admiral"
	name_short = "FADM"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/flag/o10_alt, /obj/item/clothing/accessory/solgov/specialty/officer)
	sort_order = 20


/*
	*  EC
	*  =====
	*/
/datum/mil_rank/ec/e1
	name = "Apprentice Explorer"
	name_short = "AXPL"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/ec/enlisted)
	sort_order = 1

/datum/mil_rank/ec/e3
	name = "Explorer"
	name_short = "XPL"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/ec/enlisted/e3)
	sort_order = 3

/datum/mil_rank/ec/e5
	name = "Senior Explorer"
	name_short = "SXPL"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/ec/enlisted/e5)
	sort_order = 5

/datum/mil_rank/ec/e7
	name = "Chief Explorer"
	name_short = "CXPL"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/ec/enlisted/e7)
	sort_order = 7

/datum/mil_rank/ec/o1
	name = "Ensign"
	name_short = "ENS"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/ec/officer)
	sort_order = 11

/datum/mil_rank/ec/o3
	name = "Lieutenant"
	name_short = "LT"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/ec/officer/o3)
	sort_order = 13

/datum/mil_rank/ec/o5
	name = "Commander"
	name_short = "CDR"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/ec/officer/o5)
	sort_order = 15

/datum/mil_rank/ec/o6
	name = "Captain"
	name_short = "CAPT"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/ec/officer/o6)
	sort_order = 16

/datum/mil_rank/ec/o8
	name = "Admiral"
	name_short = "ADM"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/ec/officer/o8)
	sort_order = 18

/datum/mil_rank/ec/o10
	name = "Commandant of the Expeditionary Corps"
	name_short = "COEC"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/ec/officer/o10)
	sort_order = 20

/*
	*  Army
	*  ====
	*/
/datum/mil_rank/iic/e1
	name = "Private"
	name_short = "PVT"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/enlisted)
	sort_order = 1

/datum/mil_rank/iic/e2
	name = "Private First Class"
	name_short = "PFC"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/enlisted/e2)
	sort_order = 2

/datum/mil_rank/iic/e3
	name = "Lance Corporal"
	name_short = "LCPL"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/enlisted/e3)
	sort_order = 3

/datum/mil_rank/iic/e4_alt
	name = "Corporal"
	name_short = "CPL"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/enlisted/e4_alt)
	sort_order = 4

/datum/mil_rank/iic/e5
	name = "Sergeant"
	name_short = "SGT"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/enlisted/e5)
	sort_order = 5

/datum/mil_rank/iic/e6
	name = "Staff Sergeant"
	name_short = "SSGT"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/enlisted/e6)
	sort_order = 6

/datum/mil_rank/iic/e7
	name = "Gunnery Sergeant"
	name_short = "GYSGT"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/enlisted/e7)
	sort_order = 7

/datum/mil_rank/iic/e8
	name = "Master Sergeant"
	name_short = "MSGT"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/enlisted/e8)
	sort_order = 8

/datum/mil_rank/iic/e8_alt
	name = "First Sergeant"
	name_short = "1SGT"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/enlisted/e8_alt)
	sort_order = 8

/datum/mil_rank/iic/e9
	name = "Sergeant Major"
	name_short = "SGTMaj"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/enlisted/e9)
	sort_order = 9

/datum/mil_rank/iic/e9_alt1
	name = "Master Gunnery Sergeant"
	name_short = "MGySGT"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/enlisted/e9_alt1)
	sort_order = 9

/datum/mil_rank/iic/e9_alt2
	name = "Sergeant Major of the Corps"
	name_short = "SgtMajMarCor"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/enlisted/e9_alt2)
	sort_order = 9

/datum/mil_rank/iic/o1
	name = "Second Lieutenant"
	name_short = "2LT"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/officer)
	sort_order = 11

/datum/mil_rank/iic/o2
	name = "First Lieutenant"
	name_short = "1LT"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/officer/o2)
	sort_order = 12

/datum/mil_rank/iic/o3
	name = "Captain Major"
	name_short = "MCPT"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/officer/o3)
	sort_order = 13

/datum/mil_rank/iic/o4
	name = "Major"
	name_short = "MAJ"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/officer/o4)
	sort_order = 14

/datum/mil_rank/iic/o5
	name = "Lieutenant Colonel"
	name_short = "LTC"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/officer/o5)
	sort_order = 15

/datum/mil_rank/iic/o6
	name = "Colonel"
	name_short = "COL"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/officer/o6)
	sort_order = 16

/datum/mil_rank/iic/o7
	name = "Colonel General"
	name_short = "CGen"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/flag)
	sort_order = 17

/datum/mil_rank/iic/o8
	name = "Commandant of the Interstellar Infantry Corps"
	name_short = "СIIC"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/army/flag/o8_alt)
	sort_order = 18

/*
	*  Civilians
	*  =========
	*/

/datum/mil_rank/civ/civ
	name = "Civilian"
	name_short = "Civ"

/datum/mil_rank/civ/synthetic
	name = "Synthetic"
	name_short = "Synth"

/datum/mil_rank/civ/exo_synth
	name = "EXO Synthetic"
	name_short = "Synth"
	accessory = list(/obj/item/clothing/accessory/badge/solgov/synthetic)

/*
	*  EXO-PRX
	*  =========
	*/

/datum/mil_rank/civ/three
	name = "EXO Contractor Class 3"
	name_short = "ECC3"
	accessory = list(/obj/item/clothing/accessory/badge/solgov/tags/three)

/datum/mil_rank/civ/second
	name = "EXO Contractor Class 2"
	name_short = "ECC2"
	accessory = list(/obj/item/clothing/accessory/badge/solgov/tags/second)

/datum/mil_rank/civ/first
	name = "EXO Contractor Class 1"
	name_short = "ECC1"
	accessory = list(/obj/item/clothing/accessory/badge/solgov/tags/first)

/*
	*  SolGov Employees
	*  ====== =========
	*/

/datum/mil_rank/sol/gov
	name = "SolGov Representative"
	name_short = "SGR"
	accessory = list(/obj/item/clothing/accessory/badge/solgov/representative)

/datum/mil_rank/sol/junior_agent  //Proxima
	name = "SFP Junior Agent"
	name_short = "JAGT"
	accessory = list(/obj/item/clothing/accessory/badge/junior_agent)

/datum/mil_rank/sol/duty_agent //Proxima
	name = "SFP Duty Agent"
	name_short = "DAGT"
	accessory = list(/obj/item/clothing/accessory/badge/deputy_agent)

/datum/mil_rank/sol/agent
	name = "SFP Agent"
	name_short = "AGT"
	accessory = list(/obj/item/clothing/accessory/badge/agent)

/datum/mil_rank/sol/senior_agent //Proxima
	name = "SFP Senior Agent"
	name_short = "SAGT"
	accessory = list(/obj/item/clothing/accessory/badge/senior_agent)

/datum/mil_rank/sol/inspector_agent //Proxima
	name = "SFP Agent Inspector"
	name_short = "AGTI"
	accessory = list(/obj/item/clothing/accessory/badge/inspector_agent)

/datum/mil_rank/sol/curator_agent //Proxima
	name = "SFP Supervisory Agent"
	name_short = "SUPAGT"
	accessory = list(/obj/item/clothing/accessory/badge/curator_agent)

/datum/mil_rank/sol/deputy_agent //Proxima
	name = "SFP Deputy Director"
	name_short = "DDIR"
	accessory = list(/obj/item/clothing/accessory/badge/deputy_agent)

/datum/mil_rank/sol/director_agent //Proxima
	name = "SFP Director"
	name_short = "DIR"
	accessory = list(/obj/item/clothing/accessory/badge/director_agent)

/datum/mil_rank/sol/scientist
	name = "Government Scientist"
	name_short = "GOVT"

// Vox/foreign alien branch.
/datum/mil_branch/alien
	name = "Alien"
	name_short = "Alien"
	rank_types = list(/datum/mil_rank/alien)
	spawn_rank_types = list(/datum/mil_rank/alien)

/datum/mil_rank/alien
	name = "Alien"
