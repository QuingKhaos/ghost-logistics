local belt_types = {
  "lane-splitter",
  "linked-belt",
  "loader-1x1",
  "loader",
  "splitter",
  "transport-belt",
  "underground-belt"
}

for _, belt_type in pairs(belt_types) do
  for _, entity in pairs(data.raw[belt_type]) do
    --- @cast entity data.TransportBeltConnectablePrototype
    entity.animation_speed_coefficient = 0
  end
end

for _, inserter in pairs(data.raw["inserter"]) do
  inserter.draw_held_item = false

  inserter.hand_base_picture = nil
  inserter.hand_base_shadow = nil
  inserter.hand_open_picture = nil
  inserter.hand_open_shadow = nil
  inserter.hand_closed_picture = nil
  inserter.hand_closed_shadow = nil

  if feature_flags["freezing"] then
    inserter.hand_base_frozen = nil
    inserter.hand_open_frozen = nil
    inserter.hand_closed_frozen = nil
  end
end
