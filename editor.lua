if not IsAddOnLoaded("FreeUI") and not IsAddOnLoaded("Aurora") then return end

local F, C = unpack(Aurora or FreeUI)
local _, ns = ...

local restyleEditorSingleLineTemplate = ns.restyleEditorSingleLineTemplate
local restyleEditorMultiLineTemplate = ns.restyleEditorMultiLineTemplate
local restyleDropDownTemplate = ns.restyleDropDownTemplate
local restyleEditorDropDownTemplate = ns.restyleEditorDropDownTemplate

F.AddPlugin(function()
	local XRPEditor = XRPEditor

	F.ReskinPortraitFrame(XRPEditor, true)

	restyleDropDownTemplate(XRPEditor.Profiles)

	F.Reskin(XRPEditor.Parent)
	F.Reskin(XRPEditor.SaveButton)
	F.Reskin(XRPEditor.RevertButton)

	XRPEditorHelpButton.Ring:Hide()
	XRPEditorHelpButton:ClearAllPoints()
	XRPEditorHelpButton:SetPoint("TOPLEFT", XRPEditor, "TOPLEFT", -10, 10)

	-- [[ Profile buttons ]]

	for _, button in pairs({XRPEditor.PlusProfile, XRPEditor.MinusProfile, XRPEditor.RenameProfile, XRPEditor.CopyProfile, XRPEditor.ExportProfile}) do
		F.Reskin(button)
		button:SetSize(20, 20)
	end

	XRPEditor.MinusProfile:SetPoint("LEFT", XRPEditor.PlusProfile, "RIGHT", 1, 0)
	XRPEditor.RenameProfile:SetPoint("LEFT", XRPEditor.MinusProfile, "RIGHT", 1, 0)
	XRPEditor.CopyProfile:SetPoint("LEFT", XRPEditor.RenameProfile, "RIGHT", 1, 0)
	XRPEditor.ExportProfile:SetPoint("LEFT", XRPEditor.CopyProfile, "RIGHT", 1, 0)

	F.Reskin(XRPEditor.AutoButton)

	-- [[ Tabs ]]

	local Tab1 = XRPEditor.Tab1
	local Tab2 = XRPEditor.Tab2

	F.ReskinTab(Tab1)
	F.ReskinTab(Tab2)

	Tab1:ClearAllPoints()
	Tab1:SetPoint("TOPLEFT", XRPEditor, "BOTTOMLEFT", 0, 2)
	Tab2:ClearAllPoints()
	Tab2:SetPoint("LEFT", Tab1, "RIGHT", -15, 0)

	-- [[ Automation ]]

	local Automation = XRPEditor.Automation

	Automation:ClearAllPoints()
	Automation:SetPoint("TOPLEFT", XRPEditor, "TOPRIGHT", 1, -28)

	for i = 10, 13 do
		select(i, Automation:GetRegions()):Hide()
	end

	F.CreateBD(Automation)
	F.ReskinClose(Automation:GetChildren(), "TOPRIGHT", Automation, "TOPRIGHT", -6, -6)
	restyleEditorDropDownTemplate(Automation.Form)
	restyleEditorDropDownTemplate(Automation.Profile)
	F.Reskin(Automation.Save)
	F.Reskin(Automation.Revert)

	Automation.Save:ClearAllPoints()
	Automation.Save:SetPoint("BOTTOMRIGHT", -15, 13)
	Automation.Revert:ClearAllPoints()
	Automation.Revert:SetPoint("TOPRIGHT", Automation.Save, "TOPLEFT", -1, 0)

	-- [[ Appearance ]]

	local Appearance = XRPEditor.Appearance

	restyleEditorSingleLineTemplate(Appearance.NA)
	restyleEditorSingleLineTemplate(Appearance.NI)
	restyleEditorSingleLineTemplate(Appearance.AH)
	restyleEditorSingleLineTemplate(Appearance.NT)
	restyleEditorSingleLineTemplate(Appearance.NH)
	restyleEditorSingleLineTemplate(Appearance.AW)
	restyleEditorSingleLineTemplate(Appearance.AE)
	restyleEditorSingleLineTemplate(Appearance.RA)
	restyleEditorSingleLineTemplate(Appearance.RC)
	restyleEditorSingleLineTemplate(Appearance.CU)
	restyleEditorMultiLineTemplate(Appearance.DE)

	-- [[ Biography ]]

	local Biography = XRPEditor.Biography

	restyleEditorSingleLineTemplate(Biography.AG)
	restyleEditorSingleLineTemplate(Biography.HH)
	restyleEditorSingleLineTemplate(Biography.HB)
	restyleEditorSingleLineTemplate(Biography.MO)
	restyleEditorMultiLineTemplate(Biography.HI)
	restyleEditorSingleLineTemplate(Biography.FR)
	restyleEditorDropDownTemplate(Biography.FC)

	Biography.FC:ClearAllPoints()
	Biography.FC:SetPoint("LEFT", Biography.FR, "RIGHT", -13, -2)
end)