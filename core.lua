local addonName, addon = ...

-- Get reference to AdiBags addon
local AdiBags = LibStub("AceAddon-3.0"):GetAddon("AdiBags")
local L = addon.L
local D = addon.D

local knowlFilter = AdiBags:RegisterFilter("Crafting Knowledge", 98, "ABEvent-1.0")
knowlFilter.uiName = L["Crafting Knowledge"]
knowlFilter.uiDesc = L["Crafting Knowledge added in Dragonflight"]

function knowlFilter:OnInitialize()
    self.knowledge = D
end

function knowlFilter:Updatee()
    self:SendMessage("AdiBags_FiltersChanged")
end

function knowlFilter:OnEnable()
    AdiBags:UpdateFilters()
end

function knowlFilter:OnDisable()
    AdiBags:UpdateFilters()
end

function knowlFilter:Filter(slotData)
    if self.knowledge[tonumber(slotData.itemId)] then
        return L["Crafting Knowledge"]
    end
end