local Public = require 'rpg.table'

local Spells = require 'rpg.spells'
Public.spells = Spells

local Bullets = require 'rpg.explosive_gun_bullets'
Public.explosive_bullet = Bullets

local RangeBuffs = require 'rpg.range_buffs'
Public.range_buffs = RangeBuffs

local Functions = require 'rpg.functions'
Public.functions = Functions

local Gui = require 'rpg.gui'
Public.gui = Gui

local Settings = require 'rpg.settings'
Public.settings = Settings

local Commands = require 'rpg.commands'
Public.commands = Commands

return Public
