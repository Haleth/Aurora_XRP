if not IsAddOnLoaded("FreeUI") and not IsAddOnLoaded("Aurora") then return end

local F, C = unpack(Aurora or FreeUI)
local _, ns = ...

ns.restyleDropDownTemplate = function(dropdown)
	F.ReskinDropDown(dropdown)

	dropdown.MenuText:ClearAllPoints()
	dropdown.MenuText:SetPoint("RIGHT", -42, 2)
end

-- [[ Viewer ]]

ns.restyleViewerSingleLineTemplate = function(field)
	field.Left:Hide()
	field.Middle:Hide()
	field.Right:Hide()
end

ns.restyleViewerMultiLineTemplate = function(field)
	field.TopLeftTex:Hide()
	field.TopRightTex:Hide()
	field.TopTex:Hide()
	field.BottomLeftTex:Hide()
	field.BottomRightTex:Hide()
	field.BottomTex:Hide()
	field.LeftTex:Hide()
	field.RightTex:Hide()
	field.MiddleTex:Hide()

	F.ReskinScroll(field.ScrollBar)
end

-- [[ Editor ]]

ns.restyleEditorSingleLineTemplate = function(field)
	F.ReskinInput(field)

	field.Label:ClearAllPoints()
	field.Label:SetPoint("BOTTOMLEFT", field, "TOPLEFT", -1, 1)
end

ns.restyleEditorMultiLineTemplate = function(field)
	field.TopLeftTex:Hide()
	field.TopRightTex:Hide()
	field.TopTex:Hide()
	field.BottomLeftTex:Hide()
	field.BottomRightTex:Hide()
	field.BottomTex:Hide()
	field.LeftTex:Hide()
	field.RightTex:Hide()
	field.MiddleTex:Hide()

	local bg = F.CreateBDFrame(field, .25)
	bg:ClearAllPoints()
	bg:SetPoint("TOPLEFT", -2, 1)
	bg:SetPoint("BOTTOMRIGHT", -15, -3)

	F.ReskinScroll(field.ScrollBar)
end

ns.restyleEditorDropDownTemplate = function(dropdown)
	ns.restyleDropDownTemplate(dropdown)

	dropdown.Label:ClearAllPoints()
	dropdown.Label:SetPoint("BOTTOMLEFT", dropdown, "TOPLEFT", 18, -4)
end

-- [[ Options ]]

ns.restyleOptionsDropDownTemplate = function(dropdown)
	F.ReskinDropDown(dropdown)
	dropdown:SetWidth(167)
end