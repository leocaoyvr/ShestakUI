local T, C, L = unpack(ShestakUI)

----------------------------------------------------------------------------------------
--	Position options
--	BACKUP THIS FILE BEFORE UPDATING!
----------------------------------------------------------------------------------------
C["position"] = {
	-- ActionBar positions
	["bottom_bars"] = {"CENTER", UIParent, "CENTER", 0, -300},							-- Bottom bars
	["right_bars"] = {"BOTTOMRIGHT", UIParent, "BOTTOMRIGHT", -21, 300},			-- Right bars
	["pet_horizontal"] = {"TOPRIGHT", "ActionBarAnchor", "TOPLEFT", -7, 102},		-- Horizontal pet bar
	["stance_bar"] = {"BOTTOMLEFT", ActionButton1, "BOTTOMRIGHT", 278, 0},			-- Stance bar
	["vehicle_bar"] = {"BOTTOMRIGHT", ActionButton1, "BOTTOMLEFT", -5, 0},			-- Vehicle button
	["extra_button"] = {"RIGHT", "ActionBarAnchor", "LEFT", -3, 0},			-- Extra action button
	["zone_button"] = {"BOTTOMRIGHT", ActionButton1, "BOTTOMLEFT", -3, 0},			-- Zone action button
	["micro_menu"] = {"TOPLEFT", UIParent, "TOPLEFT", 2, -2},						-- Micro menu
	-- UnitFrame positions
	unitframes = {
		["player"] = {"TOP", "ActionBarAnchor", "BOTTOM", 0, -5},		            -- Player frame
		["target"] = {"BOTTOM", "ActionBarAnchor", "TOP", 0, 5},			        -- Target frame
		["target_target"] = {"TOPRIGHT", "oUF_Target", "TOPLEFT", -7, 0},		    -- ToT frame
		["pet"] = {"BOTTOMRIGHT", "oUF_Player", "BOTTOMLEFT", -7, 0},				-- Pet frame
		["focus"] = {"BOTTOMLEFT", "oUF_Player", "BOTTOMRIGHT", 7, 0},				-- Focus frame
		["focus_target"] = {"BOTTOMLEFT", "oUF_Focus", "BOTTOMRIGHT", 7, 0},		-- Focus target frame
		["party_heal"] = {"TOP", "oUF_Player", "BOTTOM", 0, -28},			        -- Heal layout Party frames
		["raid_heal"] = {"TOP", "oUF_Player", "BOTTOM", 0, -28},			        -- Heal layout Raid frames
		["party_dps"] = {"BOTTOMLEFT", UIParent, "LEFT", 23, -70},					-- DPS layout Party frames
		["raid_dps"] = {"LEFT", UIParent, "LEFT", 22, 0},					        -- DPS layout Raid frames
		["arena"] = {"LEFT", UIParent, "CENTER", 700, 100},					        -- Arena frames
		["boss"] = {"LEFT", UIParent, "CENTER", 700, 100},					        -- Boss frames
		["tank"] = {"BOTTOMLEFT", "ActionBarAnchor", "BOTTOMRIGHT", 10, 18},		-- Tank frames
		["player_portrait"] = {"TOPRIGHT", "oUF_Player", "TOPLEFT", -12, 27},		-- Player Portrait
		["target_portrait"] = {"TOPLEFT", "oUF_Target", "TOPRIGHT", 10, 27},		-- Target Portrait
		["player_castbar"] = {"top", "oUF_Player", "bottom", 0, -7},			    -- Player Castbar
		["target_castbar"] = {"BOTTOM", "oUF_Target", "TOP", 0, 7},			        -- Target Castbar
		["focus_castbar"] = {"CENTER", UIParent, "CENTER", 0, 250},					-- Focus Castbar icon
	},
	-- Filger positions
	filger = {
		["player_buff_icon"] = {"BOTTOMRIGHT", "oUF_Target", "TOPLEFT", -100, 70},	-- "P_BUFF_ICON"
		["player_proc_icon"] = {"BOTTOMRIGHT", "oUF_Target", "TOPLEFT", -100, 113},	-- "P_PROC_ICON"
		["special_proc_icon"] = {"BOTTOMRIGHT", "oUF_Target", "TOPLEFT", -100, 156},-- "SPECIAL_P_BUFF_ICON"
		["target_debuff_icon"] = {"BOTTOMLEFT", "oUF_Target", "TOPRIGHT", 100, 350},-- "T_DEBUFF_ICON"
		["target_buff_icon"] = {"BOTTOMLEFT", "oUF_Target", "TOPRIGHT", 100, 393},	-- "T_BUFF"
		["pve_debuff"] = {"BOTTOMRIGHT", "oUF_Target", "TOPLEFT", -100, 199},		-- "PVE/PVP_DEBUFF"
		["focus_cc"] = {"TOPRIGHT", "oUF_Target", "TOPLEFT", -305, 2},			-- "FOCUS_CC"
		["cooldown"] = {"BOTTOMLEFT", "oUF_Target", "TOPLEFT", -1, 37},			    -- "COOLDOWN"
		["target_bar"] = {"BOTTOMLEFT", "oUF_Target", "TOPRIGHT", 5, 5},		    -- "T_DE/BUFF_BAR"
		["player_bar"] = {"BOTTOMRIGHT", "oUF_Player", "BOTTOMLEFT", -9, -41},		-- "P_BUFF_BAR"
	},
	-- Miscellaneous positions
	["minimap"] = {"BOTTOMRIGHT", UIParent, "BOTTOMRIGHT", -21, 24},				-- Minimap
	["minimap_buttons"] = {"TOPRIGHT", Minimap, "TOPLEFT", -3, 2},					-- Minimap buttons
	["tooltip"] = {"BOTTOMRIGHT", Minimap, "TOPRIGHT", 2, 5},						-- Tooltip
	["vehicle"] = {"BOTTOM", Minimap, "TOP", 0, 27},								-- Vehicle frame
	["ghost"] = {"BOTTOM", Minimap, "TOP", 0, 5},									-- Ghost frame
	["bag"] = {"BOTTOMRIGHT", Minimap, "TOPRIGHT", 2, 5},							-- Bag
	["bank"] = {"LEFT", UIParent, "LEFT", 23, 150},									-- Bank
	["archaeology"] = {"BOTTOMRIGHT", Minimap, "TOPRIGHT", 2, 5},					-- Archaeology frame
	["auto_button"] = {"BOTTOMLEFT", Minimap, "TOPLEFT", -2, 27},					-- Quest Item auto button
	["chat"] = {"BOTTOMLEFT", UIParent, "BOTTOMLEFT", 24, 23},						-- Chat
	["chat_right"] = {"BOTTOMRIGHT", UIParent, "BOTTOMRIGHT", -25, 23},				-- Chat on right side
	["bn_popup"] = {"BOTTOMLEFT", ChatFrame1, "TOPLEFT", -3, 27},					-- Battle.net popup
	["map"] = {"BOTTOM", UIParent, "BOTTOM", 0, 320},								-- Map
	["quest"] = {"TOPLEFT", UIParent, "TOPLEFT", 21, -2},							-- Quest log
	["loot"] = {"TOPLEFT", UIParent, "TOPLEFT", 245, -220},							-- Loot
	["group_loot"] = {"CENTER", UIParent, "CENTER", -350, 100},				-- Group roll loot
	["threat_meter"] = {"BOTTOMRIGHT", "UIParent", "BOTTOMRIGHT", -745, 22},		-- Threat meter
	["bg_score"] = {"BOTTOMLEFT", ActionButton12, "BOTTOMRIGHT", 10, -2},			-- BG stats
	["raid_cooldown"] = {"TOPLEFT", UIParent, "TOPLEFT", 300, -21},					-- Raid cooldowns
	["enemy_cooldown"] = {"BOTTOMLEFT", "oUF_Target", "TOPRIGHT", 100, 327},			-- Enemy cooldowns
	["pulse_cooldown"] = {"RIGHT", "ActionBarAnchor", "LEFT", -12, 0},						-- Pulse cooldowns
	["player_buffs"] = {"TOPRIGHT", UIParent, "TOPRIGHT", -21, -21},				-- Player buffs
	["self_buffs"] = {"CENTER", UIParent, "CENTER", 0, 190},						-- Self buff reminder
	["raid_buffs"] = {"BOTTOMLEFT", Minimap, "TOPLEFT", -2, 5},						-- Raid buff reminder
	["raid_utility"] = {"TOP", UIParent, "TOP", -280, 1},							-- Raid utility
	["top_panel"] = {"TOP", UIParent, "TOP", 0, -21},								-- Top panel
	["achievement"] = {"TOP", UIParent, "TOP", 0, -21},								-- Achievements frame
	["uierror"] = {"TOP", UIParent, "TOP", 0, -30},									-- Errors frame
	["talking_head"] = {"TOP", UIParent, "TOP", 0, -21},							-- Talking Head
	["alt_power_bar"] = {"TOP", UIWidgetTopCenterContainerFrame, "BOTTOM", 0, -7},	-- Alt power bar
	["uiwidget_top"] = {"TOP", UIParent, "TOP", 0, -21},							-- Top Widget
	["uiwidget_below"] = {"TOP", UIWidgetTopCenterContainerFrame, "BOTTOM", 0, -15},-- Below Widget
}