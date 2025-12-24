local gpu_adapters = require('utils.gpu-adapter')
local colors = require('colors.custom')

return {
  max_fps = 120,
  front_end = 'WebGpu', ---@type 'WebGpu' | 'OpenGL' | 'Software'
  webgpu_power_preference = 'HighPerformance',
  webgpu_preferred_adapter = gpu_adapters:pick_best(),
  -- webgpu_preferred_adapter = gpu_adapters:pick_manual('Dx12', 'IntegratedGpu'),
  -- webgpu_preferred_adapter = gpu_adapters:pick_manual('Gl', 'Other'),
  underline_thickness = '1.5pt',

  -- cursor
  animation_fps = 120,
  cursor_blink_ease_in = 'EaseOut',
  cursor_blink_ease_out = 'EaseOut',
  default_cursor_style = 'BlinkingBlock',
  cursor_blink_rate = 650,

  -- color scheme
  colors = colors,

  -- scrollbar
  enable_scroll_bar = false,

  -- tab bar
  enable_tab_bar = false,
  switch_to_last_active_tab_when_closing_tab = true,

  -- command palette
  command_palette_fg_color = '#b4befe',
  command_palette_bg_color = '#11111b',
  command_palette_font_size = 12,
  command_palette_rows = 25,

  -- window
  window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
  },
  adjust_window_size_when_changing_font_size = false,
  window_close_confirmation = 'NeverPrompt',
  inactive_pane_hsb = {
    saturation = 1,
    brightness = 1,
  },

  visual_bell = {
    fade_in_function = 'EaseIn',
    fade_in_duration_ms = 250,
    fade_out_function = 'EaseOut',
    fade_out_duration_ms = 250,
    target = 'CursorColor',
  },
}
