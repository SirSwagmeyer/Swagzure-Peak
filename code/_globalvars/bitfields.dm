GLOBAL_LIST_INIT(bitfields, list(
	"appearance_flags" = list(
		"LONG_GLIDE" = LONG_GLIDE,
		"RESET_COLOR" = RESET_COLOR,
		"RESET_ALPHA" = RESET_ALPHA,
		"RESET_TRANSFORM" = RESET_TRANSFORM,
		"NO_CLIENT_COLOR" = NO_CLIENT_COLOR,
		"KEEP_TOGETHER" = KEEP_TOGETHER,
		"KEEP_APART" = KEEP_APART,
		"PLANE_MASTER" = PLANE_MASTER,
		"TILE_BOUND" = TILE_BOUND,
		"PIXEL_SCALE" = PIXEL_SCALE
		),
	"sight" = list(
		"SEE_INFRA" = SEE_INFRA,
		"SEE_SELF" = SEE_SELF,
		"SEE_MOBS" = SEE_MOBS,
		"SEE_OBJS" = SEE_OBJS,
		"SEE_TURFS" = SEE_TURFS,
		"SEE_PIXELS" = SEE_PIXELS,
		"SEE_THRU" = SEE_THRU,
		"SEE_BLACKNESS" = SEE_BLACKNESS,
		"BLIND" = BLIND
		),
	"obj_flags" = list(
		"EMAGGED" = EMAGGED,
		"IN_USE" = IN_USE,
		"CAN_BE_HIT" = CAN_BE_HIT,
		"BEING_SHOCKED" = BEING_SHOCKED,
		"DANGEROUS_POSSESSION" = DANGEROUS_POSSESSION,
		"UNIQUE_RENAME" = UNIQUE_RENAME,
		"USES_TGUI" = USES_TGUI,
		"FROZEN" = FROZEN,
		),
	"datum_flags" = list(
		"DF_USE_TAG" = DF_USE_TAG,
		"DF_VAR_EDITED" = DF_VAR_EDITED,
		),
	"item_flags" = list(
		"BEING_REMOVED" = BEING_REMOVED,
		"IN_INVENTORY" = IN_INVENTORY,
		"FORCE_STRING_OVERRIDE" = FORCE_STRING_OVERRIDE,
		"NEEDS_PERMIT" = NEEDS_PERMIT,
		"SLOWS_WHILE_IN_HAND" = SLOWS_WHILE_IN_HAND,
		"NO_MAT_REDEMPTION" = NO_MAT_REDEMPTION,
		"DROPDEL" = DROPDEL,
		"NOBLUDGEON" = NOBLUDGEON,
		"ABSTRACT" = ABSTRACT,
		"IN_STORAGE" = IN_STORAGE,
		),
	"admin_flags" = list(
		"BUILDMODE" = R_BUILD,
		"ADMIN" = R_ADMIN,
		"BAN" = R_BAN,
		"FUN" = R_FUN,
		"SERVER" = R_SERVER,
		"DEBUG" = R_DEBUG,
		"POSSESS" = R_POSSESS,
		"PERMISSIONS" = R_PERMISSIONS,
		"STEALTH" = R_STEALTH,
		"POLL" = R_POLL,
		"VAREDIT" = R_VAREDIT,
		"SOUNDS" = R_SOUND,
		"SPAWN" = R_SPAWN,
		"AUTOLOGIN" = R_AUTOADMIN,
		"WATCH" = R_WATCH,
		"DBRANKS" = R_DBRANKS
		),
	"interaction_flags_atom" = list(
		"INTERACT_ATOM_REQUIRES_ANCHORED" = INTERACT_ATOM_REQUIRES_ANCHORED,
		"INTERACT_ATOM_ATTACK_HAND" = INTERACT_ATOM_ATTACK_HAND,
		"INTERACT_ATOM_UI_INTERACT" = INTERACT_ATOM_UI_INTERACT,
		"INTERACT_ATOM_REQUIRES_DEXTERITY" = INTERACT_ATOM_REQUIRES_DEXTERITY,
		"INTERACT_ATOM_IGNORE_INCAPACITATED" = INTERACT_ATOM_IGNORE_INCAPACITATED,
		"INTERACT_ATOM_IGNORE_RESTRAINED" = INTERACT_ATOM_IGNORE_RESTRAINED,
		"INTERACT_ATOM_CHECK_GRAB" = INTERACT_ATOM_CHECK_GRAB,
		"INTERACT_ATOM_NO_FINGERPRINT_ATTACK_HAND" = INTERACT_ATOM_NO_FINGERPRINT_ATTACK_HAND,
		"INTERACT_ATOM_NO_FINGERPRINT_INTERACT" = INTERACT_ATOM_NO_FINGERPRINT_INTERACT
		),
	"interaction_flags_machine" = list(
		"INTERACT_MACHINE_OPEN" = INTERACT_MACHINE_OPEN,
		"INTERACT_MACHINE_OFFLINE" = INTERACT_MACHINE_OFFLINE,
		"INTERACT_MACHINE_WIRES_IF_OPEN" = INTERACT_MACHINE_WIRES_IF_OPEN,
		"INTERACT_MACHINE_ALLOW_SILICON" = INTERACT_MACHINE_ALLOW_SILICON,
		"INTERACT_MACHINE_OPEN_SILICON" = INTERACT_MACHINE_OPEN_SILICON,
		"INTERACT_MACHINE_REQUIRES_SILICON" = INTERACT_MACHINE_REQUIRES_SILICON,
		"INTERACT_MACHINE_SET_MACHINE" = INTERACT_MACHINE_SET_MACHINE
		),
	"interaction_flags_item" = list(
		"INTERACT_ITEM_ATTACK_HAND_PICKUP" = INTERACT_ITEM_ATTACK_HAND_PICKUP,
		),
	"pass_flags" = list(
		"PASSTABLE" = PASSTABLE,
		"PASSGLASS" = PASSGLASS,
		"PASSGRILLE" = PASSGRILLE,
		"PASSBLOB" = PASSBLOB,
		"PASSMOB" = PASSMOB,
		"PASSCLOSEDTURF" = PASSCLOSEDTURF,
		"LETPASSTHROW" = LETPASSTHROW
		),
	"movement_type" = list(
		"GROUND" = GROUND,
		"FLYING" = FLYING,
		"VENTCRAWLING" = VENTCRAWLING,
		"FLOATING" = FLOATING,
		"UNSTOPPABLE" = UNSTOPPABLE
		),
	"resistance_flags" = list(
		"LAVA_PROOF" = LAVA_PROOF,
		"FIRE_PROOF" = FIRE_PROOF,
		"FLAMMABLE" = FLAMMABLE,
		"ON_FIRE" = ON_FIRE,
		"UNACIDABLE" = UNACIDABLE,
		"ACID_PROOF" = ACID_PROOF,
		"INDESTRUCTIBLE" = INDESTRUCTIBLE,
		"FREEZE_PROOF" = FREEZE_PROOF
		),
	"flags_1" = list(
		"NOJAUNT_1" = NOJAUNT_1,
		"UNUSED_RESERVATION_TURF_1" = UNUSED_RESERVATION_TURF_1,
		"CAN_BE_DIRTY_1" = CAN_BE_DIRTY_1,
		"CULT_PERMITTED_1" = CULT_PERMITTED_1,
		"HEAR_1" = HEAR_1,
		"CHECK_RICOCHET_1" = CHECK_RICOCHET_1,
		"CONDUCT_1" = CONDUCT_1,
		"NO_LAVA_GEN_1" = NO_LAVA_GEN_1,
		"NODECONSTRUCT_1" = NODECONSTRUCT_1,
		"ON_BORDER_1" = ON_BORDER_1,
		"NO_RUINS_1" = NO_RUINS_1,
		"PREVENT_CLICK_UNDER_1" = PREVENT_CLICK_UNDER_1,
		"HOLOGRAM_1" = HOLOGRAM_1,
		"TESLA_IGNORE_1" = TESLA_IGNORE_1,
		"INITIALIZED_1" = INITIALIZED_1,
		"ADMIN_SPAWNED_1" = ADMIN_SPAWNED_1,
		"HOARDMASTER_SPAWNED_1" = HOARDMASTER_SPAWNED_1,
		),
	"clothing_flags" = list(
		"LAVAPROTECT" = LAVAPROTECT,
		"STOPSPRESSUREDAMAGE" = STOPSPRESSUREDAMAGE,
		"BLOCK_GAS_SMOKE_EFFECT" = BLOCK_GAS_SMOKE_EFFECT,
		"MASKINTERNALS" = MASKINTERNALS,
		"NOSLIP" = NOSLIP,
		"THICKMATERIAL" = THICKMATERIAL,
		"VOICEBOX_TOGGLABLE" = VOICEBOX_TOGGLABLE,
		"VOICEBOX_DISABLED" = VOICEBOX_DISABLED,
		"SCAN_REAGENTS" = SCAN_REAGENTS,
		"BLOCKS_SHOVE_KNOCKDOWN" = BLOCKS_SHOVE_KNOCKDOWN,
		"SNUG_FIT" = SNUG_FIT,
		"ANTI_TINFOIL_MANEUVER" = ANTI_TINFOIL_MANEUVER,
		),
	"tesla_flags" = list(
		"TESLA_MOB_DAMAGE" = TESLA_MOB_DAMAGE,
		"TESLA_OBJ_DAMAGE" = TESLA_OBJ_DAMAGE,
		"TESLA_MOB_STUN" = TESLA_MOB_STUN,
		"TESLA_ALLOW_DUPLICATES" = TESLA_ALLOW_DUPLICATES,
		"TESLA_MACHINE_EXPLOSIVE" = TESLA_MACHINE_EXPLOSIVE,
		),
	"smooth" = list(
		"SMOOTH_TRUE" = SMOOTH_TRUE,
		"SMOOTH_MORE" = SMOOTH_MORE,
		"SMOOTH_DIAGONAL" = SMOOTH_DIAGONAL,
		"SMOOTH_BORDER" = SMOOTH_BORDER,
		"SMOOTH_QUEUED" = SMOOTH_QUEUED,
		),
	"car_traits" = list(
		"CAN_KIDNAP" = CAN_KIDNAP,
		),
	"mobility_flags" = list(
		"MOVE" = MOBILITY_MOVE,
		"STAND" = MOBILITY_STAND,
		"PICKUP" = MOBILITY_PICKUP,
		"USE" = MOBILITY_USE,
		"UI" = MOBILITY_UI,
		"STORAGE" = MOBILITY_STORAGE,
		"PULL" = MOBILITY_PULL,
		),
	"mob_biotypes" = list (
		"MOB_ORGANIC" = MOB_ORGANIC,
		"MOB_MINERAL" = MOB_MINERAL,
		"MOB_ROBOTIC" = MOB_ROBOTIC,
		"MOB_UNDEAD" = MOB_UNDEAD,
		"MOB_HUMANOID" = MOB_HUMANOID,
		"MOB_BUG" = MOB_BUG,
		"MOB_BEAST" = MOB_BEAST,
		"MOB_EPIC" = MOB_EPIC,
		"MOB_REPTILE" = MOB_REPTILE,
		"MOB_SPIRIT" = MOB_SPIRIT
		),
	"fovangle" = list (
		"FOV_DEFAULT" = FOV_DEFAULT,
		"FOV_RIGHT" = FOV_RIGHT,
		"FOV_LEFT" = FOV_LEFT,
		"FOV_BEHIND" = FOV_BEHIND
		)
	))
