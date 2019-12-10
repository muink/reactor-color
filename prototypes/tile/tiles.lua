data:extend({
  {
    type = "tile",
    name = "blackblack",
    collision_mask = {"ground-tile"},
    layer = 57,

    variants =
    {
      main =
      {
        {
          picture = "__Reactor__/graphics/black32.png",
          count = 1,
          size = 1
        }
      },
      empty_transitions = true
    },
    map_color={r=0, g=0, b=0},
    pollution_absorption_per_second = 0
  }
})