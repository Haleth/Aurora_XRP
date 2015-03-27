if not IsAddOnLoaded("FreeUI") and not IsAddOnLoaded("Aurora") then return end

local F, C = unpack(Aurora or FreeUI)
local _, ns = ...

local restyleSingleLineTemplate = ns.restyleSingleLineTemplate
local restyleMultiLineTemplate = ns.restyleMultiLineTemplate

F.AddPlugin(function()
	local XRPViewer = XRPViewer

	F.ReskinPortraitFrame(XRPViewer, true)

	XRPViewerHelpButton.Ring:Hide()
	XRPViewerHelpButton:ClearAllPoints()
	XRPViewerHelpButton:SetPoint("TOPLEFT", XRPViewer, "TOPLEFT", -10, 10)

	-- [[ Tabs ]]

	local Tab1 = XRPViewer.Tab1
	local Tab2 = XRPViewer.Tab2

	F.ReskinTab(Tab1)
	F.ReskinTab(Tab2)

	Tab1:ClearAllPoints()
	Tab1:SetPoint("TOPLEFT", XRPViewer, "BOTTOMLEFT", 0, 2)
	Tab2:ClearAllPoints()
	Tab2:SetPoint("LEFT", Tab1, "RIGHT", -15, 0)

	-- [[ Menu button ]]

	local Menu = XRPViewer.Menu

	F.Reskin(XRPViewer.Menu)

	Menu:SetSize(17, 17)
	Menu:ClearAllPoints()
	Menu:SetPoint("RIGHT", XRPViewer.CloseButton, "LEFT", -1, 0)

	-- [[ Appearance ]]

	local Appearance = XRPViewer.Appearance

	restyleSingleLineTemplate(Appearance.RA)
	restyleSingleLineTemplate(Appearance.RC)
	restyleSingleLineTemplate(Appearance.AH)
	restyleSingleLineTemplate(Appearance.AE)
	restyleSingleLineTemplate(Appearance.AW)
	restyleMultiLineTemplate(Appearance.CU)
	restyleMultiLineTemplate(Appearance.DE)

	-- [[ Biography ]]

	local Biography = XRPViewer.Biography

	restyleSingleLineTemplate(Biography.HH)
	restyleSingleLineTemplate(Biography.AG)
	restyleSingleLineTemplate(Biography.HB)
	restyleMultiLineTemplate(Biography.MO)
	restyleMultiLineTemplate(Biography.HI)
end)