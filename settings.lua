local khaoslib_setting = require("__khaoslib__.settings.setting")

khaoslib_setting:load {
  type = "bool-setting",
  name = "ghost-logistics-freeze-belt-entities",
  setting_type = "startup",
  default_value = true,
} :commit()

khaoslib_setting:load {
  type = "bool-setting",
  name = "ghost-logistics-remove-inserter-arms",
  setting_type = "startup",
  default_value = true,
} :commit()
