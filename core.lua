local addonName, addon = ...

-- Get reference to BetterBags addon
local BetterBags = LibStub("AceAddon-3.0"):GetAddon("BetterBags")
local categories = BetterBags:GetModule('Categories')
local L = BetterBags:GetModule('Localization')
local D = addon.D

for _, itemList in pairs({D}) do
    for _, ItemID in pairs(itemList) do
        categories:AddItemToCategory(ItemID, "Crafting Knowledge")
    end
end