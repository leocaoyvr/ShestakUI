if SettingsCF.misc.move_watchframe ~= true then return end

local UIWatchFrame = CreateFrame("Frame", nil, UIParent)

UIWatchFrame:RegisterEvent("ADDON_LOADED")
UIWatchFrame:SetScript("OnEvent", function(self, event, addon)
	if (addon == "ShestakUI") and (not IsAddOnLoaded("Who Framed Watcher Wabbit") or not IsAddOnLoaded("Fux")) then	
		self:UnregisterEvent("ADDON_LOADED")
		
		local wfbutton = CreateFrame("Button", "WatchFrameButton", WatchFrame)
		SettingsDB.CreatePanel(wfbutton, 40, 10, "BOTTOM", WatchFrame, "TOP", 0, -8)
		wfbutton:Hide()

		local wf = WatchFrame
		local wfmove = false 

		wf:SetMovable(true)
		wf:SetClampedToScreen(false)
		wf:ClearAllPoints()
		wf:SetPoint(unpack(SettingsCF.position.quest))
		wf:SetHeight(600)
		wf:SetUserPlaced(true)
		wf.SetPoint = SettingsDB.dummy
		wf.ClearAllPoints = SettingsDB.dummy

		local function WATCHFRAMELOCK()
			if wfmove == false then
				wfmove = true
				print("|cffffff00"..L_WATCH_UNLOCK.."|r")
				wf:EnableMouse(true);
				wf:RegisterForDrag("LeftButton");
				wf:SetScript("OnDragStart", wf.StartMoving);
				wf:SetScript("OnDragStop", wf.StopMovingOrSizing);
				wfbutton:Show()
			elseif wfmove == true then
				wf:EnableMouse(false);
				wfmove = false
				wfbutton:Hide()
				print("|cffffff00"..L_WATCH_LOCK.."|r")
			end
		end

		SLASH_WATCHFRAMELOCK1 = "/wf"
		SlashCmdList["WATCHFRAMELOCK"] = WATCHFRAMELOCK
	end
end)

----------------------------------------------------------------------------------------
--	Auto collapse when enganging bosses(oWatchFrameToggler by Haste)
----------------------------------------------------------------------------------------
local addon = CreateFrame"Frame"

addon:RegisterEvent"PLAYER_ENTERING_WORLD"
addon:RegisterEvent"INSTANCE_ENCOUNTER_ENGAGE_UNIT"
addon:RegisterEvent"UNIT_TARGETABLE_CHANGED"
addon:RegisterEvent"PLAYER_REGEN_ENABLED"

local BossExists = function()
	for i = 1, MAX_BOSS_FRAMES do
		if(UnitExists("boss" .. i)) then
			return true
		end
	end
end

addon:SetScript("OnEvent", function(self, event)
	if(BossExists()) then
		if(not WatchFrame.collapsed) then
			WatchFrame_CollapseExpandButton_OnClick(WatchFrame_CollapseExpandButton)
		end
	elseif(WatchFrame.collapsed and not InCombatLockdown()) then
		WatchFrame_CollapseExpandButton_OnClick(WatchFrame_CollapseExpandButton)
	end
end)