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
