AddCSLuaFile()
include( "arc9_cod2019_pi_sykov.lua" )

SWEP.PrintName = string.format( ARC9:GetPhrase("mw19_weapon_akimbo"), SWEP.PrintName )

SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_handgun_akimbo") or "Akimbos"

SWEP.LoadoutImage = "entities/loadout/arc9_cod2019_pi_sykov_akimbo.png"

SWEP.ViewModel = "models/weapons/cod2019/c_akimbo_sykov.mdl"
SWEP.WorldModel = "models/weapons/cod2019/w_pist_50gs.mdl"

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.TPIKforcelefthand = true
SWEP.TPIKNoSprintAnim = true 
SWEP.NotForNPCs = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_akimbo_sykov.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-12, 6, -7.5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-12.5, 9, -15),
    TPIKAng = Angle(-3, 0, 180),
    Scale = 1
}

-------------------------- MAGAZINE

SWEP.ChamberSize = 2
SWEP.ClipSizeOverride = SWEP.ClipSize * 2

-------------------------- FIREMODES

SWEP.RPM = SWEP.RPM * 1.75

-------------------------- MELEE

SWEP.SecondaryBash = true
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.2

-------------------------- POSITIONS

SWEP.HasSights = false

SWEP.ViewModelFOVBase = 60

SWEP.SprintMidPoint = {
    Pos = Vector(0, -1, -0.15),
    Ang = Angle(0, 0, 0)
}

SWEP.MovingMidPoint = {
    Pos = Vector(0, -0.5, -0.5),
    Ang = Angle(0, 0, 0)
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingPos = Vector(0, -1.5, -0.8)
SWEP.MovingAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(0, -1.5, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.SprintPos = Vector(-1, 0, -1)
SWEP.SprintAng = Angle(0, 0, -5)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(19, 42.5, 4.25)
SWEP.CustomizeRotateAnchor = Vector(19, 0, -4.25)
SWEP.CustomizeSnapshotFOV = 65
SWEP.CustomizeSnapshotPos = Vector(1.5, -1.5, 0)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = false

-------------------------- HoldTypes

SWEP.HoldType = "duel"
SWEP.HoldTypeSprint = "duel"
SWEP.HoldTypeHolstered = "duel"
SWEP.HoldTypeSights = "duel"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_DUEL
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_DUEL
SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_DUEL
SWEP.AnimDraw = false

SWEP.Akimbo = true

-------------------------- EFFECTS

SWEP.TracerEffect = "cod2019_tracer"
SWEP.MuzzleEffectQCA = 1
SWEP.MuzzleEffectQCAEvenShot = 2
SWEP.CaseEffectQCA = 4
SWEP.CaseEffectQCAEvenShot = 3
SWEP.AfterShotQCA = 1
SWEP.AfterShotQCAEvenShot = 2

SWEP.CamQCA = 7
SWEP.CamQCA_Mult = 1

SWEP.DropMagazineAmount = 2
SWEP.DropMagazineTime = 0.4
SWEP.DropMagazineQCA = 6
SWEP.DropMagazineAng = Angle(0, -90, 0)

-------------------------- SOUNDS

local path = "weapons/cod2019/sykov/"
local path2 = "weapons/cod2019/renetti/"

SWEP.BulletBones = {
	[1] = "j_bullet1",
	[2] = "j_bullet1_l",
	[3] = "j_bullet2",
	[4] = "j_bullet2_l",
	[5] = "j_bullet3",
	[6] = "j_bullet3_l",
	[7] = "j_bullet4",
	[8] = "j_bullet4_l",
	[9] = "j_bullet5",
	[10] = "j_bullet5_l",
	[11] = "j_bullet6",
	[12] = "j_bullet6_l",
	[13] = "j_bullet7",
	[14] = "j_bullet7_l",
	[15] = "j_bullet8",
	[16] = "j_bullet8_l",
	[17] = "j_bullet9",
	[18] = "j_bullet9_l",
	[19] = "j_bullet10",
	[20] = "j_bullet10_l",
}

SWEP.HideBones  = {
    [1] = "j_mag2",
	[2] = "j_mag2_l",
}

SWEP.Animations = {
    ["fire_left"] = {
        Source = "fire_left",
    },
    ["fire_right"] = {
        Source = "fire_right",
    },
    ["reload"] = {
        Source = "reload",
		MinProgress = 0.75,
		MagSwapTime = 3.5,
		DropMagAt = 0.8,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_mike_i_reload_down.ogg", t = 0/30},
			{s = path .. "wfoly_pi_mike_i_reload_empty_mvmnt.ogg", t = 11/30},
			{s = path .. "wfoly_pi_mike_i_reload_magout.ogg", t = 24/30},
			{s = path .. "wfoly_pi_mike_i_reload_magout.ogg", t = 26/30},
			{s = path .. "wfoly_pi_mike_i_reload_magin.ogg", t = 37.5/30},
			{s = path .. "wfoly_pi_mike_i_reload_magin.ogg", t = 42.5/30},
			{s = path .. "wfoly_pi_mike_i_reload_end.ogg", t = 56/30},
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
		MinProgress = 0.85,
		DropMagAt = 0.7,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_mike_i_reload_empty_down.ogg", t = 2/30},
			{s = path .. "wfoly_pi_mike_i_reload_empty_mvmnt.ogg", t = 15/30},
			{s = path .. "wfoly_pi_mike_i_reload_empty_magout.ogg", t = 22.5/30},
			{s = path .. "wfoly_pi_mike_i_reload_empty_magout.ogg", t = 26.5/30},
			{s = path .. "wfoly_pi_mike_i_reload_empty_magin.ogg", t = 47/30},
			{s = path .. "wfoly_pi_mike_i_reload_empty_magin.ogg", t = 52/30},
			{s = path .. "wfoly_pi_mike_i_reload_empty_up.ogg", t = 63/30},
			{s = path .. "wfoly_pi_mike_i_reload_empty_up.ogg", t = 67/30},
			{s = path .. "wfoly_pi_mike_i_reload_empty_charge.ogg", t = 69/30},
			{s = path .. "wfoly_pi_mike_i_reload_empty_charge.ogg", t = 74/30},
			{s = path .. "wfoly_pi_mike_i_reload_empty_end.ogg", t = 74/30},
			{s = path .. "wfoly_pi_mike_i_reload_empty_end.ogg", t = 82/30},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.725,
		MagSwapTime = 3.5,
		DropMagAt = 0.4,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_mike_i_reload_down.ogg", t = 0/30},
			{s = path .. "wfoly_pi_mike_i_reload_empty_mvmnt.ogg", t = 11/30},
			{s = path .. "wfoly_pi_mike_i_reload_magout.ogg", t = 17/30},
			{s = path .. "wfoly_pi_mike_i_reload_magout.ogg", t = 19/30},
			{s = path .. "wfoly_pi_mike_i_reload_magin.ogg", t = 26/30},
			{s = path .. "wfoly_pi_mike_i_reload_magin.ogg", t = 29/30},
			{s = path .. "wfoly_pi_mike_i_reload_end.ogg", t = 37/30},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.8,
		DropMagAt = 0.7,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_mike_i_reload_empty_down.ogg", t = 2/30},
			{s = path .. "wfoly_pi_mike_i_reload_empty_mvmnt.ogg", t = 15/30},
			{s = path .. "wfoly_pi_mike_i_reload_empty_magout.ogg", t = 19/30},
			{s = path .. "wfoly_pi_mike_i_reload_empty_magout.ogg", t = 22/30},
			{s = path .. "wfoly_pi_mike_i_reload_empty_magin.ogg", t = 31/30},
			{s = path .. "wfoly_pi_mike_i_reload_empty_magin.ogg", t = 36/30},
			{s = path .. "wfoly_pi_mike_i_reload_empty_up.ogg", t = 43/30},
			{s = path .. "wfoly_pi_mike_i_reload_empty_up.ogg", t = 47/30},
			{s = path .. "wfoly_pi_mike_i_reload_empty_charge.ogg", t = 50/30},
			{s = path .. "wfoly_pi_mike_i_reload_empty_charge.ogg", t = 54/30},
			{s = path .. "wfoly_pi_mike_i_reload_empty_end.ogg", t = 58/30},
			{s = path .. "wfoly_pi_mike_i_reload_empty_end.ogg", t = 66/30},
        },
    },
    ["ready"] = {
        Source = "draw_first",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_pi_mike_raise_first_up.ogg", t = 0/30},
            {s = path .. "wfoly_pi_mike_raise_first_charge.ogg", t = 10/30},
            {s = path .. "wfoly_pi_mike_raise_first_charge.ogg", t = 13/30},
            {s = path .. "wfoly_pi_mike_raise_first_end.ogg", t = 20/30},
        },
    },
    ["draw"] = {
        Source = "draw",
		MinProgress = 0.3,
        FireASAP = true,
        EventTable = {
            {s = path .. "wfoly_pi_mike_raise.ogg", t = 9/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            {s = path .. "wfoly_pi_mike_reload_end.ogg", t = 0/30},
        },
    },
    ["idle"] = {
        Source = "idle",
    },
    ["idle_sprint"] = {
        Source = "sprint",
    },
    ["exit_sprint"] = {
        Source = "sprint_out",
		Time = 0.25,
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
		Time = 0.25,
    },
    ["super_sprint_idle"] = {
        Source = "super_sprint",
    },
    ["super_sprint_in"] = {
        Source = "super_sprint_in",
		Time = 1,
    },
    ["super_sprint_out"] = {
        Source = "super_sprint_out",
		Time = 1,
    },
    ["inspect"] = {
        Source = "lookat01",
		MinProgress = 0.9,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 1.1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_pi_mike_inspect_01.ogg", t = 0/30},
			{s = path2 .. "wfoly_pi_mike9_inspect_03.ogg", t = 62/30},
			{s = path .. "wfoly_pi_mike_inspect_03.ogg", t = 112/30},
        },
    },
    ["bash"] = {
        Source = {"melee","melee2","melee3"},
    },
}

-------------------------- ATTACHMENTS

-- SWEP.Hook_Think	= ARC9.COD2019.BlendEmptyElite

local Translate_Fast = {
    ["reload"] = "reload_fast",
    ["reload_empty"] = "reload_fast_empty",
}

local Translate_TacSprint = {
    ["idle_sprint"] = "super_sprint_idle",
    ["enter_sprint"] = "super_sprint_in",
    ["exit_sprint"] = "super_sprint_out",
}

SWEP.Hook_TranslateAnimation = function(wep, anim)
    --local attached = self:GetElements()

    local speedload = wep:HasElement("perk_speedreload")
	local super_sprint = wep:HasElement("perk_super_sprint")

    if super_sprint and Translate_TacSprint[anim] then
        return Translate_TacSprint[anim]
    end

    if speedload then
        if Translate_Fast[anim] then
            return Translate_Fast[anim]
            end
        end
    end

SWEP.DefaultBodygroups = "00000000000000"

SWEP.AttachmentTableOverrides = {
    ["cod2019_sykov_slide_auto"] = {
    Model = "models/weapons/cod2019/attachs/weapons/sykov/attachment_vm_pi_mike_barauto_akimbo.mdl",
	--RPMMult = 2,
    },
    ["cod2019_sykov_slide_silencer"] = {
    Model = "models/weapons/cod2019/attachs/weapons/sykov/attachment_vm_pi_mike_barsil_akimbo.mdl",
    },
    ["cod2019_sykov_slide_light"] = {
    Model = "models/weapons/cod2019/attachs/weapons/sykov/attachment_vm_pi_mike_barlight_akimbo.mdl",
    },
    ["cod2019_sykov_mag_xmag"] = {
    Model = "models/weapons/cod2019/attachs/weapons/sykov/attachment_vm_pi_mike_xmags_akimbo.mdl",
	ClipSizeOverride = 32
    },
    ["cod2019_sykov_mag_drum"] = {
    Model = "models/weapons/cod2019/attachs/weapons/sykov/attachment_vm_pi_mike_drummag_akimbo.mdl",
	ClipSizeOverride = 92
    },
    ["cod2019_sykov_stock_light"] = {
    Model = "models/weapons/cod2019/attachs/weapons/sykov/attachment_vm_pi_mike_stockl.mdl",
	BoneMerge = false
    },
    ["cod2019_sykov_stock_heavy"] = {
    Model = "models/weapons/cod2019/attachs/weapons/sykov/attachment_vm_pi_mike_stockh.mdl",
	BoneMerge = false
    },
    ["cod2019_trigger_light"] = {
    Model = "models/weapons/cod2019/attachs/weapons/m19/attachment_vm_pi_papa320_trigcust.mdl",
	BoneMerge = false
    },
    ["cod2019_trigger_heavy"] = {
    Model = "models/weapons/cod2019/attachs/weapons/m19/attachment_vm_pi_papa320_trigcust02.mdl",
	BoneMerge = false
    },
    ["cod2019_trigger_match"] = {
    Model = "models/weapons/cod2019/attachs/weapons/m19/attachment_vm_pi_papa320_trigcust03.mdl",
	BoneMerge = false
    },
}

SWEP.AttachmentElements = {
    ["body_none"] = {
        Bodygroups = {
            {0,1},
            {4,1},
        },
    },
    ["slide_none"] = {
        Bodygroups = {
            {1,1},
            {5,1},
        },
    },
    ["mag_none"] = {
        Bodygroups = {
            {2,1},
            {6,1},
        },
    },
    ["grip_none"] = {
        Bodygroups = {
            {3,1},
            {7,1},
        },
    },
    ["rail_laser"] = {
        Bodygroups = {
            {8,1},
            {9,1},
        },
    },
    ["sight_mount"] = {
        Bodygroups = {
            {10,1},
            {11,1},
        },
    },
    ["trigger_none"] = {
        Bodygroups = {
            {12,1},
            {13,1},
        },
    },
}

SWEP.Attachments = {
    { -- 1
        PrintName = ARC9:GetPhrase("mw19_category_muzzle"),
        Category = "cod2019_muzzle_pistols",
        DefaultIcon = Material("entities/defattachs/muzzle-ar.png", "mips smooth"),
		Bone = "tag_silencer_l",
        DuplicateModels = { { Bone = "tag_silencer" } },
        Pos = Vector(-0.105, 0, 0),
		ExcludeElements = {"slide_silencer"},
    },
    { -- 2
        PrintName = ARC9:GetPhrase("mw19_category_barrel"),
		DefaultIcon = Material("entities/defattachs/barrel-ar.png", "mips smooth"),
        Category = "cod2019_sykov_slide",
        Bone = "tag_barrel_attach_l",
		DuplicateModels = { { Bone = "tag_barrel_attach" } },
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(0, 0, 0),
    },
    { -- 3
        PrintName = ARC9:GetPhrase("mw19_category_laser"),
		DefaultIcon = Material("entities/defattachs/laser-ar.png", "mips smooth"),
        Category = {"cod2019_tac_pistols","cod2019_grip_pistols"},
        Bone = "tag_laser_attach_l",
		DuplicateModels = { { Bone = "tag_laser_attach" } },
        Pos = Vector(0, 0, 0),
		InstalledElements = {"rail_laser"},
    },
    { -- 4
        PrintName = ARC9:GetPhrase("mw19_category_optic"),
		DefaultIcon = Material("entities/defattachs/optic.png", "mips smooth"),
        Bone = "tag_reflex_l",
		DuplicateModels = { { Bone = "tag_reflex" } },
        Pos = Vector(1.075, 0, -0.02),
        Category = {"cod2019_optics_pistols_alt"},
		InstalledElements = {"sight_mount"},
    },
    { -- 5
        PrintName = ARC9:GetPhrase("mw19_category_stock"),
		DefaultIcon = Material("entities/defattachs/stock-ar.png", "mips smooth"),
        Category = "cod2019_sykov_stock",
        Bone = "tag_stock_attach_l",
        Pos = Vector(0, 0, 0),
		DuplicateModels = { { Bone = "tag_stock_attach" } },
    },
    { -- 6
        PrintName = ARC9:GetPhrase("mw19_category_triggeraction"),
		-- DefaultIcon = Material("entities/defattachs/stock-ar.png", "mips smooth"),
        Category = {"cod2019_trigger"},
        Bone = "j_trigger_l",
		DuplicateModels = { { Bone = "j_trigger" } },
        Pos = Vector(0, 0, 0),
    },
    { -- 7
        PrintName = ARC9:GetPhrase("mw19_category_magazine"),
		DefaultIcon = Material("entities/defattachs/magazine-ar.png", "mips smooth"),
		Bone = "tag_mag_attach_l",
		DuplicateModels = { { Bone = "tag_mag_attach" } },
        Category = {"cod2019_mag","cod2019_sykov_mag"},
        Pos = Vector(0, 0, 0),
    },
    { -- 8
        PrintName = ARC9:GetPhrase("mw19_category_ammo"),
		DefaultIcon = Material("arc9/def_att_icons/ammotype.png", "mips smooth"),
        Bone = "tag_mag_attach_l",
		DuplicateModels = { { Bone = "tag_mag_attach" } },
		Category = {"cod2019_ammo"},
		Pos = Vector(-1, 0, 0),
    },
    { -- 9
        PrintName = ARC9:GetPhrase("mw19_category_reargrip"),
		DefaultIcon = Material("entities/defattachs/reargrip-ar.png", "mips smooth"),
        Category = "cod2019_sykov_grip",
        Bone = "tag_pistolgrip_attach_l",
		DuplicateModels = { { Bone = "tag_pistolgrip_attach" } },
        Pos = Vector(0, 0, 0),
    },
    { -- 10
        PrintName = ARC9:GetPhrase("mw19_category_perk"),
        Category = {"cod2019_perks","cod2019_perks_soh","cod2019_perks_ss"},
        Bone = "tag_cosmetic_l",
        Pos = Vector(-3, 0, -2),
    },
	
	-- Unofficial
    { -- 11
        PrintName = ARC9:GetPhrase("mw19_category_receiver"),
        Category = "cod2019_sykov_receiver",
        Bone = "tag_pistol_offset",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(0, 0, 1),
		Hidden = false,
    },
	
	-- Cosmetics
    { -- 12
        PrintName = ARC9:GetPhrase("mw19_category_skins"),
        Bone = "tag_cosmetic_l",
        Pos = Vector(3, 0, 1.5),
        Category = "cod2019_skins_sykov",
		CosmeticOnly = true,
    },
    { -- 13
        PrintName = ARC9:GetPhrase("mw19_category_camouflage"),
        Category = {"universal_camo"},
        Bone = "tag_cosmetic_l",
        Pos = Vector(2, 0, 1.5),
        CosmeticOnly = true,
    },
    { -- 14
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/akimbo_sykov_decal_a.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic_l",
        Pos = Vector(1, 0, 1.5),
    },
    { -- 15
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/akimbo_sykov_decal_b.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic_l",
        Pos = Vector(0, 0, 1.5),
    },
    { -- 16
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/akimbo_sykov_decal_c.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic_l",
        Pos = Vector(-1, 0, 1.5),
    },
    { -- 17
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/akimbo_sykov_decal_d.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic_l",
        Pos = Vector(-2, 0, 1.5),
    },
    { -- 18
        PrintName = ARC9:GetPhrase("mw19_category_charm"),
        CosmeticOnly = true,
        Category = {"charm"},
        Bone = "tag_cosmetic_l",
		DuplicateModels = { { Bone = "tag_cosmetic" } },
        Pos = Vector(0.5, 0, 0),
		Icon_Offset = Vector(-3.5, 0, 1.5),
		Scale = 1,
    },
    { -- 19
        PrintName = ARC9:GetPhrase("mw19_category_stats"),
        Category = "killcounter",
        Bone = "tag_cosmetic_l",
		DuplicateModels = { { Bone = "tag_cosmetic" } },
        Pos = Vector(0, 0, -1),
		Icon_Offset = Vector(-2.5, 0.05, 1.5),
		CosmeticOnly = true,
    },
    { -- 20
        PrintName = ARC9:GetPhrase("mw19_category_view"),
        Category = "cod2019_pistols_view",
        Bone = "tag_cosmetic_l",
        Pos = Vector(-9, 0, 3),
		CosmeticOnly = true,
		ExcludeElements = {"stock"},
    },
}
