if not IsAddOnLoaded("FreeUI") and not IsAddOnLoaded("Aurora") then return end

local F, C = unpack(Aurora or FreeUI)
local _, ns = ...

local restyleOptionsDropDownTemplate = ns.restyleOptionsDropDownTemplate

F.AddPlugin(function()
	local first = true
	InterfaceOptionsFrame:HookScript("OnShow", function()
		if not first then return end; first = false

		local InterfaceOptionsFramePanelContainer = InterfaceOptionsFramePanelContainer

		-- [[ General ]]

		local XRPGeneral = InterfaceOptionsFramePanelContainer.XRPGeneral

		F.ReskinCheck(XRPGeneral.MovableViewer)
		F.ReskinCheck(XRPGeneral.CloseOnEscapeViewer)
		F.ReskinCheck(XRPGeneral.Cursor)
		F.ReskinCheck(XRPGeneral.RightClick)
		F.ReskinCheck(XRPGeneral.DisableInstance)
		F.ReskinCheck(XRPGeneral.DisablePvP)
		F.ReskinCheck(XRPGeneral.Keybind)
		F.ReskinCheck(XRPGeneral.MenusStandard)
		F.ReskinCheck(XRPGeneral.MenusUnits)
		F.ReskinCheck(XRPGeneral.MenusUnits)
		F.ReskinCheck(XRPGeneral.MinimapEnabled)
		F.ReskinCheck(XRPGeneral.MinimapDetached)

		-- [[ Display ]]

		local XRPDisplay = InterfaceOptionsFramePanelContainer.XRPDisplay

		restyleOptionsDropDownTemplate(XRPDisplay.Height)
		restyleOptionsDropDownTemplate(XRPDisplay.Weight)
		F.ReskinCheck(XRPDisplay.AltBloodElf)
		F.ReskinCheck(XRPDisplay.AltBloodElfForce)
		F.ReskinCheck(XRPDisplay.AltNightElf)
		F.ReskinCheck(XRPDisplay.AltNightElfForce)
		F.ReskinCheck(XRPDisplay.AltScourge)
		F.ReskinCheck(XRPDisplay.AltScourgeForce)
		F.ReskinCheck(XRPDisplay.AltTauren)
		F.ReskinCheck(XRPDisplay.AltTaurenForce)

		-- [[ Chat ]]

		local XRPChat = InterfaceOptionsFramePanelContainer.XRPChat

		F.ReskinCheck(XRPChat.RPNames)
		F.ReskinCheck(XRPChat.SAY)
		F.ReskinCheck(XRPChat.EMOTE)
		F.ReskinCheck(XRPChat.YELL)
		F.ReskinCheck(XRPChat.WHISPER)
		F.ReskinCheck(XRPChat.GUILD)
		F.ReskinCheck(XRPChat.PARTY)
		F.ReskinCheck(XRPChat.RAID)
		F.ReskinCheck(XRPChat.INSTANCE_CHAT)
		restyleOptionsDropDownTemplate(XRPChat.Channels)
		F.ReskinCheck(XRPChat.EmoteBraced)
		F.ReskinCheck(XRPChat.Replacements)

		-- [[ Tooltip ]]

		local XRPTooltip = InterfaceOptionsFramePanelContainer.XRPTooltip

		F.ReskinCheck(XRPTooltip.TooltipEnabled)
		F.ReskinCheck(XRPTooltip.TooltipReplace)
		F.ReskinCheck(XRPTooltip.TooltipWatching)
		F.ReskinCheck(XRPTooltip.TooltipExtraSpace)
		F.ReskinCheck(XRPTooltip.TooltipGuildRank)
		F.ReskinCheck(XRPTooltip.TooltipGuildRankIndex)
		F.ReskinCheck(XRPTooltip.TooltipNoHostile)
		F.ReskinCheck(XRPTooltip.TooltipNoOpFaction)
		F.ReskinCheck(XRPTooltip.TooltipNoRPClass)
		F.ReskinCheck(XRPTooltip.TooltipNoRPRace)

		-- [[ Advanced ]]

		local XRPAdvanced = InterfaceOptionsFramePanelContainer.XRPAdvanced

		restyleOptionsDropDownTemplate(XRPAdvanced.Time)
		F.ReskinCheck(XRPAdvanced.AutoClean)
	end)
end)