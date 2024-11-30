--==================--
-- Tokyo Night Theme --
--==================--

local moon_palette = {
	bg = "#1b1d2b",
	bg0 = "#31354e",
	bg1 = "#4f547d",
	fg = "#c8d3f5",
	-- fg0 = "#828bb8",
	fg1 = "#222436",
	red = "#ff757f",
	green = "#c3e88d",
	yellow = "#ffc777",
	blue = "#82aaff",
	-- magenta = "#c099ff",
	-- cyan = "#86e1fc",
}

local storm_palette = {
	bg = "#1d202f",
	bg0 = "#30364f",
	bg1 = "#4e567e",
	fg = "#c0caf5",
	-- fg0 = "#a9b1d6",
	red = "#f7768e",
	green = "#9ece6a",
	yellow = "#e0af68",
	blue = "#7aa2f7",
	-- magenta = "#bb9af7",
	-- cyan = "#7dcfff",
}

local night_palette = {
	bg = "#15161e",
	bg0 = "#2a2c3c",
	bg1 = "#494d69",
	fg = "#c0caf5",
	-- fg0 = "#a9b1d6",
	red = "#f7768e",
	green = "#9ece6a",
	yellow = "#e0af68",
	blue = "#7aa2f7",
	-- magenta = "#bb9af7",
	-- cyan = "#7dcfff",
}

local day_palette = {
	bg = "#f1f1f4",
	bg0 = "#e1e2e7",
	bg1 = "#c6c8d2",
	-- bg0 = "#b4b5b9",
	-- bg1 = "#a1a6c5",
	-- fg = "#f1f1f4",
	-- fg = "#9b9bb0",
	fg = "#6172b0",
	-- fg0 = "#3760bf",
	-- foreground = "#3760bf",
	-- cursor = "#3760bf",
	red = "#f52a65",
	green = "#587539",
	yellow = "#8c6c3e",
	blue = "#2e7de9",
	-- magenta = "#9854f1",
	-- cyan = "#007197",
}

--- Gets the Tokyo Night theme.
--- @param flavor string Flavor of the theme: "night".
--- @return table theme Used in Yatline.
local function tokyo_night_theme(flavor)
	local palettes = {
		moon = moon_palette,
		storm = storm_palette,
		night = night_palette,
		day = day_palette,
	}

	local palette = palettes[flavor] or night_palette

	return {
		-- yatline
		section_separator_open = "",
		section_separator_close = "",

		inverse_separator_open = "",
		inverse_separator_close = "",

		part_separator_open = "",
		part_separator_close = "",

		style_a = {
			fg = palette.bg,
			bg_mode = {
				normal = palette.blue,
				select = palette.yellow,
				un_set = palette.red,
			},
		},
		style_b = { bg = palette.bg1, fg = palette.fg },
		style_c = { bg = palette.bg0, fg = palette.fg },

		permissions_t_fg = palette.blue,
		permissions_r_fg = palette.yellow,
		permissions_w_fg = palette.red,
		permissions_x_fg = palette.green,
		permissions_s_fg = palette.fg,

		selected = { icon = "󰻭", fg = palette.yellow },
		copied = { icon = "", fg = palette.green },
		cut = { icon = "", fg = palette.red },

		total = { icon = "", fg = palette.yellow },
		succ = { icon = "", fg = palette.green },
		fail = { icon = "", fg = palette.red },
		found = { icon = "", fg = palette.blue },
		processed = { icon = "", fg = palette.green },

		-- yatline-githead
		-- prefix_color = palette.subtext0,
		-- branch_color = palette.sapphire,
		-- commit_color = palette.mauve,
		-- behind_color = palette.flamingo,
		-- ahead_color = palette.lavender,
		-- stashes_color = palette.pink,
		-- state_color = palette.maroon,
		-- staged_color = palette.yellow,
		-- unstaged_color = palette.peach,
		-- untracked_color = palette.teal,
	}
end

return {
	setup = function(_, args)
		args = args or "dawn"

		return tokyo_night_theme(args)
	end,
}
