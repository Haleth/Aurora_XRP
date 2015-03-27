if not IsAddOnLoaded("FreeUI") and not IsAddOnLoaded("Aurora") then return end

local F, C = unpack(Aurora or FreeUI)
local _, ns = ...

ns.restyleSingleLineTemplate = function(field)
	field.Left:Hide()
	field.Middle:Hide()
	field.Right:Hide()
end

ns.restyleMultiLineTemplate = function(field)
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