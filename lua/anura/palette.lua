-- Anura palette
local M = {}

M.colors = {
  black = "#000000",
  dark_grey1 = "#313131",
  dark_grey2 = "#7F7F7F",
  dark_grey3 = "#F1F1F1",
  grey = "#B1B1B1",
  light_grey = "#F7F7F7",
  light_grey1 = "FEFEFE",
  dark_red = "#B22729",
  red = "#F26669",
  dark_green = "#639808",
  green = "#9CD936",
  yellow = "#D4A046",
  dark_blue = "#1B556B",
  blue = "#488BA8",
  dark_purple = "#862753",
  purple = "#C76090",
  dark_teal = "#348986",
  teal = "#75C9C6",
}

-- M.get_base_colors = function(bg)
--   local p = M.colors
--
--   if bg == nil then
--     bg = vim.o.background
--   end
--
--   local colors = {
--     light = {
--       bg = p.light_grey,
--       black = p.black,
--       dark_grey1 = p.dark_grey1,
--       dark_grey2 = p.dark_grey2,
--       dark_grey3 = p.dark_grey3,
--       grey = p.grey,
--       light_grey = p.light_grey,
--       light_grey1 = p.light_grey1,
--       dark_red = p.dark_red,
--       red = p.red,
--       dark_green = p.dark_green,
--       green = p.green,
--       yellow = p.yellow,
--       dark_blue = p.dark_blue,
--       blue = p.blue,
--       dark_purple = p.dark_purple,
--       purple = p.purple,
--       dark_teal = p.dark_teal,
--       teal = p.teal,
--     },
--   }
--
--     return colors[bg]
-- end

return M
