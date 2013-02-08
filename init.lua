-- Bedrock mod by ShadowNinja

dofile(minetest.get_modpath("bedrock") .. "/bar.lua")

minetest.register_node("bedrock:bedrock", {
	description = "Bedrock",
	inventory_image = minetest.inventorycube("bedrock_bedrock.png"),
	tiles = {"bedrock_bedrock.png"},
	is_ground_content = true,
	groups = {unbreakable=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("bedrock:concrete", {
	description = "Unbreakable Concrete",
	inventory_image = minetest.inventorycube("bedrock_concrete.png"),
	tiles = {"bedrock_concrete.png"},
	is_ground_content = true,
	groups = {unbreakable=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("bedrock:glass", {
	description = "Unbreakable Glass",
	drawtype = "glasslike",
	sunlight_propagates = true,
	inventory_image = minetest.inventorycube("default_glass.png"),
	paramtype = "light",
	tiles = {"default_glass.png"},
	is_ground_content = true,
	groups = {unbreakable=1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_tool("bedrock:pick", {
	description = "Bedrock Pick",
	inventory_image = "bedrock_pick.png",
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			unbreakable={times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3}
		}
	},
})
