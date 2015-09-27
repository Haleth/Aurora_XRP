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
	F.Reskin(XRPEditor.Save)
	F.Reskin(XRPEditor.Revert)

	XRPEditorHelpButton.Ring:Hide()
	XRPEditorHelpButton:ClearAllPoints()
	XRPEditorHelpButton:SetPoint("TOPLEFT", XRPEditor, "TOPLEFT", -10, 10)

	-- [[ Profile buttons ]]

	for _, button in pairs({XRPEditor.Plus, XRPEditor.Minus, XRPEditor.R, XRPEditor.C, XRPEditor.E}) do
		F.Reskin(button)
		button:SetSize(20, 20)
	end

	XRPEditor.Minus:SetPoint("LEFT", XRPEditor.Plus, "RIGHT", 1, 0)
	XRPEditor.R:SetPoint("LEFT", XRPEditor.Minus, "RIGHT", 1, 0)
	XRPEditor.C:SetPoint("LEFT", XRPEditor.R, "RIGHT", 1, 0)
	XRPEditor.E:SetPoint("LEFT", XRPEditor.C, "RIGHT", 1, 0)

	-- [[ Automation / Notes button ]]

	for _, button in pairs({XRPEditor.AutomationButton, XRPEditor.NotesButton}) do
		local name = button:GetName()

		F.Reskin(button)
		button:SetSize(17, 17)

		_G[name.."TopLeft"]:Hide()
		_G[name.."TopRight"]:Hide()
		_G[name.."MiddleLeft"]:Hide()
		_G[name.."MiddleRight"]:Hide()
		_G[name.."BottomLeft"]:Hide()
		_G[name.."BottomRight"]:Hide()

		button.Icon:Hide()
		button.MainIcon:ClearAllPoints()
		button.MainIcon:SetPoint("CENTER")
	end

	XRPEditor.AutomationButton:ClearAllPoints()
	XRPEditor.AutomationButton:SetPoint("BOTTOM", XRPEditor.NotesButton, "TOP", 0, 1)

	XRPEditor.NotesButton.MainIcon:SetPoint("CENTER", 2, -1)

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
