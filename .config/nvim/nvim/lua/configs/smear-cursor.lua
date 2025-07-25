local opts = {
    -- Smear cursor when switching buffers or windows.
    smear_between_buffers = true,

    -- Smear cursor when moving within line or to neighbor lines.
    -- Use `min_horizontal_distance_smear` and `min_vertical_distance_smear` for finer control
    smear_between_neighbor_lines = true,

    -- Draw the smear in buffer space instead of screen space when scrolling
    scroll_buffer_space = true,

    -- Set to `true` if your font supports legacy computing symbols (block unicode symbols).
    -- Smears will blend better on all backgrounds.
    legacy_computing_symbols_support = false,

    -- Smear cursor in insert mode.
    -- See also `vertical_bar_cursor_insert_mode` and `distance_stop_animating_vertical_bar`.
    smear_insert_mode = true,
    stiffness = 0.5,                      -- 0.6      [0, 1]
    trailing_stiffness = 0.49,             -- 0.4      [0, 1]
    never_draw_over_target = false,
    -- stiffness_insert_mode = 0.6,          -- 0.4      [0, 1]
    -- trailing_stiffness_insert_mode = 0.6, -- 0.4      [0, 1]
    -- distance_stop_animating = 0.5,        -- 0.1      > 0
}

require('smear_cursor').setup(opts)
