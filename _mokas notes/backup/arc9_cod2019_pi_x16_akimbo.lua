AddCSLuaFile()
if CLIENT then
    killicon.Add( "arc9_cod2019_pi_x16_akimbo", "vgui/killicons/cod2019_pi_akimbo_x16.png", Color(251, 85, 25, 255))
end

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_handgun_akimbo") or "Akimbos"

SWEP.PrintName = ARC9:GetPhrase("mw19_weapon_glock") or "X16"

SWEP.Class = ARC9:GetPhrase("mw19_class_weapon_handgun") or "Handgun"
SWEP.Trivia = {
    [ ARC9:GetPhrase("mw19_country") ] = ARC9:GetPhrase("mw19_country_austria"),
    [ ARC9:GetPhrase("mw19_manufacturer") ] = ARC9:GetPhrase("mw19_manufacturer_xrk"),
    [ ARC9:GetPhrase("mw19_caliber") ] = ".45 ACP",
    [ ARC9:GetPhrase("mw19_weight") ] = "2.2 kg",
    [ ARC9:GetPhrase("mw19_weight_projectile") ] = "230 gr",
    [ ARC9:GetPhrase("mw19_muzzle_energy") ] = "832 ft/s",
    [ ARC9:GetPhrase("mw19_muzzle_velocity") ] = "479 joules"
}

SWEP.Credits = {
    [ ARC9:GetPhrase("mw19_author") ] = "Twilight Sparkle/Firmeteran",
    [ ARC9:GetPhrase("mw19_assets") ] = "Activision/Infinity Ward"
}

SWEP.Description = ARC9:GetPhrase("mw19_weapon_glock_desc") or [[Semi-automatic pistol chambered in .45 ACP ammunition. A reliable fall back when you find yourself in close quarters.]]

SWEP.ViewModel = "models/weapons/cod2019/c_akimbo_x16.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"

SWEP.Slot = 1

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.TPIKforcelefthand = true
SWEP.TPIKNoSprintAnim = true 
SWEP.WorldModelMirror = "models/weapons/cod2019/c_akimbo_x16.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-12, 6, -7.5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-15, 7.5, -15),
    TPIKAng = Angle(-3, 0, 180),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 33 -- Damage done at point blank range
SWEP.DamageMin = 15 -- Damage done at maximum range

SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 400 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 5000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 2 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.2

SWEP.ImpactForce = 8

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 1240 * 12
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.25

-------------------------- MAGAZINE

SWEP.Ammo = "pistol" -- What ammo type this gun uses.

SWEP.ChamberSize = 2 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 26 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 10 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 600 * 1.5

SWEP.Firemodes = {
    {
        Mode = 1,
    },
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1

--SWEP.RecoilSeed = nil

SWEP.RecoilPatternDrift = 0

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.05

SWEP.RecoilDissipationRate = 35 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 1 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 2

SWEP.RecoilMultCrouch = 0.8
SWEP.RecoilMultMove = 1.25
SWEP.RecoilMultSights = 0.4

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilMultSights = 0.2
SWEP.VisualRecoilPunchSights = 75
SWEP.VisualRecoilPunch = 2
SWEP.VisualRecoilUp = 0.1
SWEP.VisualRecoilRoll = 55
SWEP.VisualRecoilSide = 0.5

SWEP.VisualRecoilSpringPunchDamping = 11
SWEP.VisualRecoilDampingConst = 20
SWEP.VisualRecoilDampingConstSights = 50

SWEP.VisualRecoilDoingFunc = function(up, side, roll, punch, recamount)
    if recamount > 5 then
        recamount = 1.65 - math.Clamp((recamount - 2) / 3.5, 0, 1)
        
        local fakerandom = 1 + (((69+recamount%5*CurTime()%3)*2420)%4)/10 
        
        return up, side * fakerandom, roll, punch
    end

    return up, side, roll, punch
end


-------------------------- SPREAD

SWEP.Spread = 0.002

SWEP.SpreadAddRecoil = 0.01
SWEP.SpreadMultRecoil = 1
SWEP.RecoilModifierCap = 2

SWEP.SpreadAddMove = 0.05
--SWEP.SpreadAddMidAir = 0
SWEP.SpreadAddHipFire = 0.015
SWEP.SpreadAddCrouch = -0.01
SWEP.SpreadAddSights = -0.5


-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.3 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.3 -- How long it takes to go from sprinting to being able to fire.

-------------------------- MELEE

SWEP.Bash = true
SWEP.SecondaryBash = true
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.2

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 255, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.HasSights = false

SWEP.ViewModelFOVBase = 60

SWEP.SprintMidPoint = {
    Pos = Vector(0, -1, -0.15),
    Ang = Angle(0, 0, 0)
}

SWEP.MovingMidPoint = {
    Pos = Vector(0, -1, -0.5),
    Ang = Angle(0, 0, 0)
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingPos = Vector(0, -1.5, -1)
SWEP.MovingAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-1, -0.5, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.SprintPos = Vector(-1, 0, -1)
SWEP.SprintAng = Angle(0, 0, -5)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(19, 30, 3)
SWEP.CustomizeRotateAnchor = Vector(19, -2.25, -4)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeSnapshotPos = Vector(1, -10, 3)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = false

-------------------------- HoldTypes

SWEP.HoldType = "duel"
SWEP.HoldTypeSprint = "duel"
SWEP.HoldTypeHolstered = "duel"
SWEP.HoldTypeSights = "duel"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

-- SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_DUEL
-- SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_DUEL
SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_DUEL
SWEP.AnimDraw = false

SWEP.Akimbo = true

-------------------------- EFFECTS

SWEP.MuzzleParticle = "AC_muzzle_pistol_fp"
SWEP.AfterShotParticle = "AC_muzzle_smoke_barrel"
SWEP.TracerEffect = "cod2019_tracer_small"
SWEP.MuzzleEffectQCA = 1
SWEP.MuzzleEffectQCAEvenShot = 2
SWEP.CaseEffectQCA = 4
SWEP.CaseEffectQCAEvenShot = 3
SWEP.AfterShotQCA = 1
SWEP.AfterShotQCAEvenShot = 2

SWEP.CamQCA = 7
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_9mm_hr.mdl"
SWEP.ShellSounds = ARC9.COD2019_9mm_Table
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 0.06
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_pist_x16_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_poly_concrete_01.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_poly_concrete_02.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_poly_concrete_03.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_poly_concrete_04.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_poly_concrete_05.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_poly_concrete_06.ogg",
}
SWEP.DropMagazineAmount = 2 -- Amount of mags to drop.
SWEP.DropMagazineTime = 0.4
SWEP.DropMagazineQCA = 6
SWEP.DropMagazineAng = Angle(0, -90, 0)

-------------------------- SOUNDS

local path = "weapons/cod2019/x16/"

SWEP.ShootSound = "COD2019.X16.Fire"
SWEP.ShootSoundIndoor = "COD2019.X16.Fire"

SWEP.ShootSoundSilenced = "COD2019.X16.Fire.S"
SWEP.ShootSoundSilencedIndoor = "COD2019.X16.Fire.S"

-- Non-Silenced
SWEP.LayerSound = "Layer_Pistol.Outside"
SWEP.DistantShootSound = "Distant_Pistol.Outside"
-- Inside
SWEP.LayerSoundIndoor = "Layer_Pistol.Inside"
SWEP.DistantShootSoundIndoor = "Distant_Pistol.Inside"
---------------------------------------------------
-- Silenced
SWEP.LayerSoundSilenced = "Layer_ARSUP.Outside"
SWEP.DistantShootSoundSilenced = "Distant_Pistol_Mag_Sup.Outside"
-- Inside
SWEP.LayerSoundSilencedIndoor = "Layer_ARSUP.Inside"
SWEP.DistantShootSoundSilencedIndoor = "Distant_Pistol_Sup.Inside"
---------------------------------------------------

SWEP.EnterSightsSound =  path .. "wfoly_pi_golf21_ads_up.ogg"
SWEP.ExitSightsSound =  path .. "wfoly_pi_golf21_ads_down.ogg"

SWEP.TriggerDelay = 0.025 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayCancellable = false
SWEP.TriggerDelayTime = 0.025 -- Time until weapon fires.

SWEP.TriggerDownSound = "weapons/cod2019/x16/weap_golf21_fire_first_plr_01.ogg"
SWEP.TriggerUpSound = "weapons/cod2019/x16/weap_golf21_disconnector_plr_01.ogg"

SWEP.BulletBones = {
    [1] = "j_bullet_l",
	[2] = "j_bullet",
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
		MinProgress = 0.7,
		MagSwapTime = 3.5,
		DropMagAt = 0.35,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_golf21_reload_fast_magout_01.ogg", t = 0/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_magout_01.ogg", t = 0/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_magout_01.ogg", t = 3/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_down.ogg", t = 14/30},
			{s = path .. "wfoly_pi_golf21_reload_magin_v2_02.ogg", t = 44/30},
			{s = path .. "wfoly_pi_golf21_reload_fast_magin_v2_02.ogg", t = 49/30},
			{s = path .. "wfoly_pi_golf21_reload_magin_v2_02.ogg", t = 54/30},
			{s = path .. "wfoly_pi_golf21_reload_fast_magin_v2_02.ogg", t = 57/30},
			{s = path .. "wfoly_pi_golf21_reload_end.ogg", t = 70/30},
			{s = path .. "wfoly_pi_golf21_reload_fast_end.ogg", t = 70/30},
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
		MinProgress = 0.825,
		DropMagAt = 0.35,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_golf21_reload_empty_magout_01.ogg", t = 4/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_fast_magout_01.ogg", t = 4/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_magout_01.ogg", t = 6/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_fast_magout_01.ogg", t = 6/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_down.ogg", t = 20/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_magin_v2_02.ogg", t = 47/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_fast_magin_v2_02.ogg", t = 47/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_magin_v2_02.ogg", t = 55/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_fast_magin_v2_02.ogg", t = 55/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_raise.ogg", t = 72/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_fast_chamber_01.ogg", t = 72/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_fast_chamber_01.ogg", t = 77/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_fast_end.ogg", t = 84/30},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.7,
		MagSwapTime = 3.5,
		DropMagAt = 0.35,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_golf21_reload_fast_magout_01.ogg", t = 0/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_magout_01.ogg", t = 0/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_magout_01.ogg", t = 2/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_down.ogg", t = 14/30},
			{s = path .. "wfoly_pi_golf21_reload_magin_v2_02.ogg", t = 28/30},
			{s = path .. "wfoly_pi_golf21_reload_fast_magin_v2_02.ogg", t = 33/30},
			{s = path .. "wfoly_pi_golf21_reload_magin_v2_02.ogg", t = 38/30},
			{s = path .. "wfoly_pi_golf21_reload_fast_magin_v2_02.ogg", t = 41/30},
			{s = path .. "wfoly_pi_golf21_reload_end.ogg", t = 50/30},
			{s = path .. "wfoly_pi_golf21_reload_fast_end.ogg", t = 50/30},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.8,
		DropMagAt = 0.35,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_golf21_reload_empty_magout_01.ogg", t = 4/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_fast_magout_01.ogg", t = 4/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_magout_01.ogg", t = 6/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_fast_magout_01.ogg", t = 6/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_down.ogg", t = 20/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_magin_v2_02.ogg", t = 37/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_fast_magin_v2_02.ogg", t = 37/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_magin_v2_02.ogg", t = 45/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_fast_magin_v2_02.ogg", t = 45/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_raise.ogg", t = 55/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_fast_chamber_01.ogg", t = 55/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_fast_chamber_01.ogg", t = 57.5/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_fast_end.ogg", t = 68/30},
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
            {s = path .. "wfoly_pi_golf21_first_raise_open_slide.ogg", t = 7/30},
            {s = path .. "wfoly_pi_golf21_first_raise_slide_release.ogg", t = 12/30},
        },
    },
    ["draw"] = {
        Source = "draw",
		MinProgress = 0.2,
        FireASAP = true,
        EventTable = {
            {s = path .. "wfoly_pi_golf21_reload_end.ogg", t = 9/30},
            {s = path .. "wfoly_pi_golf21_reload_fast_end.ogg", t = 9/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            {s = path .. "wfoly_pi_golf21_reload_empty_raise.ogg", t = 0/30},
            {s = path .. "wfoly_pi_golf21_reload_fast_end.ogg", t = 5/30},
        },
    },
    ["idle"] = {
        Source = "idle",
    },
    ["idle_sprint"] = {
        Source = "sprint2",
    },
    ["exit_sprint"] = {
        Source = "sprint_out",
		Mult = 2.5,
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
		Mult = 2.5,
    },
    ["inspect"] = {
        Source = "lookat01",
		MinProgress = 0.1,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 1.1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_pi_golf21_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_pi_golf21_inspect_02.ogg", t = 36/30},
			{s = path .. "wfoly_pi_golf21_inspect_03.ogg", t = 61/30},
			{s = path .. "wfoly_pi_golf21_inspect_04.ogg", t = 114/30},
        },
    },
    ["bash"] = {
        Source = {"melee","melee2","melee3"},
    },
}

-------------------------- ATTACHMENTS

-- SWEP.Hook_Think	= ARC9.COD2019.BlendEmptyElite

SWEP.Hook_TranslateAnimation = function (wep, anim)
    --local attached = self:GetElements()
    --------------------------------------------------------------------------
    if anim == "reload" and wep:HasElement("perk_speedreload") then
        return "reload_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") then 
        return "reload_fast_empty"
    --------------------------------------------------------------------------
    end
end

SWEP.DefaultBodygroups = "00000000000000"

SWEP.AttachmentTableOverrides = {
    ["cod2019_x16_slide_light"] = {
    Model = "models/weapons/cod2019/attachs/weapons/x16/attachment_vm_pi_golf21_slide_auto_akimbo.mdl"
    },
    ["cod2019_x16_mag_xmag2"] = {
    Model = "models/weapons/cod2019/attachs/weapons/x16/attachment_vm_pi_golf21_mag_xmags2_akimbo.mdl",
	ClipSizeOverride = 26 * 2
    },
    ["cod2019_x16_stock"] = {
    Model = "models/weapons/cod2019/attachs/weapons/x16/attachment_vm_pi_golf21_stock_akimbo.mdl"
    },
    ["cod2019_x16_griptape_01"] = {
    Model = "models/weapons/cod2019/attachs/weapons/x16/attachment_vm_pi_golf21_pistolgrip_tape_akimbo.mdl"
    },
}

SWEP.AttachmentElements = {
    ["body_none"] = {
        Bodygroups = {
            {0,1},
        },
    },
    ["slide_none"] = {
        Bodygroups = {
            {1,1},
            {4,1},
        },
    },
    ["mag_none"] = {
        Bodygroups = {
            {2,1},
            {5,1},
        },
    },
    ["x16_slide_auto"] = {
    AttPosMods = { [2] = { Pos = Vector(0, 0, 0), } }
    },
    ["sight_mount"] = {
        Bodygroups = {
            {6,1},
            {7,1},
        },
    },
}

SWEP.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_slide"),
        DefaultAttName = "Standard slide",
        Category = "cod2019_x16_slide",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        DuplicateModels = {
            {
                Bone = "tag_barrel_attach_l",
            }
        },
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_muzzle"),
        DefaultAttName = "Standard Muzzle",
        Category = "cod2019_muzzle_pistols",
        Bone = "tag_silencer_l",
        Pos = Vector(-0.03, 0, 0.05),
        Ang = Angle(0, 0, 0),
		--InstalledElements = {"muzzle_none"},
		Scale = 1,
        DuplicateModels = {
            {
                Bone = "tag_silencer",
            }
        },
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_optic"),
        Bone = "tag_reflex",
        Pos = Vector(1.08, 0, 0.02),
        Ang = Angle(0, 0, 0),
        Category = "cod2019_optics_pistols_alt",
        CorrectiveAng = Angle(0, 0, 0),
		Scale = 1,
		InstalledElements = {"sight_mount"},
        DuplicateModels = {
            {
                Bone = "tag_reflex_l",
            }
        },
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_laser"),
        DefaultAttName = "Default",
        Category = "cod2019_tac_pistols",
        Bone = "tag_laser_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		--InstalledElements = {"rail_laser"},
		--LaserCorrectionAngle = Angle(-1.5, 0, 0.1),
        DuplicateModels = {
            {
                Bone = "tag_laser_attach_l",
				--LaserCorrectionAngle = Angle(0.1, 0, 2),
            }
        },
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_reargrip"),
        DefaultAttName = "Default",
        Category = "cod2019_x16_grip",
        Bone = "tag_pistol_attachments",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		Scale = 1,
        DuplicateModels = {
            {
                Bone = "tag_pistol_attachments_l",
            }
        },
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_stock"),
        DefaultAttName = "Default",
        Category = "cod2019_x16_stock",
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		Scale = 1,
        DuplicateModels = {
            {
                Bone = "tag_stock_attach_l",
            }
        },
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_ammo"),
        Bone = "j_mag1",
        Category = "cod2019_ammo",
        Pos = Vector(0, 0, -1.5),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_magazine"),
		Bone = "j_mag1",
        Category = {"cod2019_mag","cod2019_x16_mag"},
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        DuplicateModels = {
            {
                Bone = "j_mag1_l",
            }
        },
    },
    {
		PrintName = ARC9:GetPhrase("mw19_category_perk"),
        Category = {"cod2019_perks","cod2019_perks_soh"}
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_skins"),
        --Bone = "v_weapon.Clip",
        Category = "cod2019_skins_x16",
		CosmeticOnly = true,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_camouflage"),
        Category = "universal_camo",
        CosmeticOnly = true,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/akimbo_x16_decal_a.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/akimbo_x16_decal_b.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/akimbo_x16_decal_c.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/akimbo_x16_decal_d.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_charm"),
        Category = "charm",
        Bone = "tag_cosmetic",
        Pos = Vector(0.5, 0, 0),
        Ang = Angle(0, 0, 0),
		Scale = 1,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_stats"),
        Category = "killcounter",
        Bone = "tag_cosmetic",
        Pos = Vector(0, 0, -1),
        Ang = Angle(0, 0, 0),
		CosmeticOnly = true,
    },
}

SWEP.GripPoseParam = 4.6
SWEP.GripPoseParam2 = 0.6