if not IsAddOnLoaded("FreeUI") and not IsAddOnLoaded("Aurora") then return end

local F, C = unpack(Aurora or FreeUI)
local _, ns = ...

local restyleViewerSingleLineTemplate = ns.restyleViewerSingleLineTemplate
local restyleViewerMultiLineTemplate = ns.restyleViewerMultiLineTemplate

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

	-- [[ Notes button ]]

	do
		local notesButton = XRPViewer.NotesButton
		local name = notesButton:GetName()

		F.Reskin(notesButton)
		notesButton:SetSize(17, 17)

		for i = 1, 7 do
			select(i, notesButton:GetRegions()):Hide()
		end

		notesButton.Icon:Hide()
		notesButton.MainIcon:ClearAllPoints()
		notesButton.MainIcon:SetPoint("CENTER", 1, 0)
	end

	-- [[ Appearance ]]

	local Appearance = XRPViewer.Appearance

	restyleViewerSingleLineTemplate(Appearance.RA)
	restyleViewerSingleLineTemplate(Appearance.RC)
	restyleViewerSingleLineTemplate(Appearance.AH)
	restyleViewerSingleLineTemplate(Appearance.AE)
	restyleViewerSingleLineTemplate(Appearance.AW)
	restyleViewerMultiLineTemplate(Appearance.CU)
	restyleViewerMultiLineTemplate(Appearance.DE)

	-- [[ Biography ]]

	local Biography = XRPViewer.Biography

	restyleViewerSingleLineTemplate(Biography.HH)
	restyleViewerSingleLineTemplate(Biography.AG)
	restyleViewerSingleLineTemplate(Biography.HB)
	restyleViewerMultiLineTemplate(Biography.MO)
	restyleViewerMultiLineTemplate(Biography.HI)
end)
