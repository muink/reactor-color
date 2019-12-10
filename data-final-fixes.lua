
--mask-normal
--data.raw.reactor["nuclear-reactor"].working_light_picture.filename = data.raw.reactor["nuclear-reactor"].working_light_picture.filename
--data.raw.reactor["nuclear-reactor"].working_light_picture.hr_version.filename = data.raw.reactor["nuclear-reactor"].working_light_picture.hr_version.filename
--data.raw.reactor["nuclear-reactor"].light = table.deepcopy(data.raw.reactor["nuclear-reactor"].light)

--vanilla reactor
--data.raw.reactor["nuclear-reactor"].lower_layer_picture = nil
--data.raw.reactor["nuclear-reactor"].heat_lower_layer_picture = nil
--data.raw.reactor["nuclear-reactor"].picture.layers[2] = nil
data.raw.reactor["nuclear-reactor"].connection_patches_connected = nil
data.raw.reactor["nuclear-reactor"].connection_patches_disconnected = nil
data.raw.reactor["nuclear-reactor"].heat_connection_patches_connected = nil
data.raw.reactor["nuclear-reactor"].heat_connection_patches_disconnected = nil
data.raw.reactor["nuclear-reactor"].heat_buffer.connections = nil
data.raw.reactor["nuclear-reactor"].heat_buffer.pipe_covers = nil
data.raw.reactor["nuclear-reactor"].heat_buffer.heat_pipe_covers = nil
data.raw.reactor["nuclear-reactor"].heat_buffer.heat_picture = nil
data.raw.reactor["nuclear-reactor"].heat_buffer.heat_glow = nil

data.raw.reactor["nuclear-reactor"].working_light_picture.filename = "__Reactor__/graphics/entity/reactor-lights-white.png"
data.raw.reactor["nuclear-reactor"].working_light_picture.blend_mode = "additive"
data.raw.reactor["nuclear-reactor"].working_light_picture.hr_version.filename = "__Reactor__/graphics/entity/hr-reactor-lights-white.png"
data.raw.reactor["nuclear-reactor"].working_light_picture.hr_version.blend_mode = "additive"

data.raw.reactor["nuclear-reactor"].use_fuel_glow_color = false --为light和working_light_picture着色
data.raw.reactor["nuclear-reactor"].default_fuel_glow_color = { 1, 1, 0, 1 }

data.raw.reactor["nuclear-reactor"].light.color = { 0, 0, 1, 1 }
-- 燃料的fuel_glow_color属性為燃燒該燃料時燃燒器能源的輝光著色。
-- fuel_glow_color属性无论如何都会为light_flicker着色
data.raw.reactor["nuclear-reactor"].energy_source.light_flicker = { -- 同样应用于working_light_picture的闪烁
	minimum_intensity = 1,  --default: 0.2
	maximum_intensity = 1,  --default: 0.8
	derivation_change_frequency = 0.3,
	derivation_change_deviation = 0.06,
	border_fix_speed = 0.02,
	minimum_light_size = 0.4,  --default: 0.5
	light_intensity_to_size_coefficient = 0.5,
	color = { r = 1, g = 1, b = 1 } -- 只为未配置fuel_glow_color属性的燃料著色。
}
--data.raw.reactor["nuclear-reactor"].energy_source.light_flicker.color = {}
--data.raw.reactor["nuclear-reactor"].energy_source.light_flicker.color = table.deepcopy(data.raw.reactor["nuclear-reactor"].light.color) --RGB增加25%
