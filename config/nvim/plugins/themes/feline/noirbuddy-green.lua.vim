lua <<EOF

local vi_mode = require('feline.providers.vi_mode')

-- vi mode color configuration
local MODE_COLORS = {
  ['NORMAL'] = 'grey',
  ['COMMAND'] = 'red',
  ['INSERT'] = 'brown',
  ['REPLACE'] = 'red',
  ['LINES'] = 'brown',
  ['VISUAL'] = 'brown',
  ['OP'] = 'yellow',
  ['BLOCK'] = 'yellow',
  ['V-REPLACE'] = 'yellow',
  ['ENTER'] = 'yellow',
  ['MORE'] = 'yellow',
  ['SELECT'] = 'yellow',
  ['SHELL'] = 'yellow',
  ['TERM'] = 'yellow',
  ['NONE'] = 'yellow',
}

local NOIRBUDDY = {
  fg = '#7AA874',
  bg = '#282c34',
  black = '#282c34',
  grey = '#7AA874',
  white = '#F7F1E5',
  green = '#CCD6A6',
  yellow = '#FFF6BD',
  red = '#F7C8E0',
  brown = '#3C6255',
  skyblue = '#B4E4FF'
}

-- left and right constants (first and second items of the components array)
local LEFT = 1
local RIGHT = 2

--
-- 2. setup some helpers
--

--- get the current buffer's file name, defaults to '[no name]'
function get_filename()
  local filename = vim.api.nvim_buf_get_name(0)
  if filename == '' then
    filename = '[no name]'
  end
  -- this is some vim magic to remove the current working directory path
  -- from the absilute path of the filename in order to make the filename
  -- relative to the current working directory
  return vim.fn.fnamemodify(filename, ':~:.')
end

--- get the current buffer's file type, defaults to '[not type]'
function get_filetype()
  local filetype = vim.bo.filetype
  if filetype == '' then
    filetype = '[no type]'
  end
  return filetype:lower()
end

--- get the cursor's line
function get_line_cursor()
  local cursor_line, _ = unpack(vim.api.nvim_win_get_cursor(0))
  return cursor_line
end

--- get the file's total number of lines
function get_line_total()
  return vim.api.nvim_buf_line_count(0)
end

--- wrap a string with whitespaces
function wrap(string)
  return ' ' .. string .. ' '
end

--- wrap a string with whitespaces and add a '' on the left,
-- use on left section components for a nice  transition
function wrap_left(string)
  return ' ' .. string .. ' '
end

--- wrap a string with whitespaces and add a '' on the right,
-- use on left section components for a nice  transition
function wrap_right(string)
  return ' ' .. string .. ' '
end

--- decorate a provider with a wrapper function
-- the provider must conform to signature: (component, opts) -> string
-- the wrapper must conform to the signature: (string) -> string
function wrapped_provider(provider, wrapper)
  return function(component, opts)
    local result = provider(component, opts)
    if result ~= "" then
	result = wrapper(result)
    end
    return result
  end
end

--
-- 3. setup custom providers
--

--- provide the vim mode (NOMRAL, INSERT, etc.)
function provide_mode(component, opts)
  return vi_mode.get_vim_mode()
end

--- provide the buffer's file name
function provide_filename(component, opts)
  return get_filename()
end

--- provide the line's information (curosor position and file's total lines)
function provide_linenumber(component, opts)
  return get_line_cursor() .. '/' .. get_line_total()
end

-- provide the buffer's file type
function provide_filetype(component, opts)
  return get_filetype()
end

--
-- 4. build the components
--

local components = {
  -- components when buffer is active
  active = {
    {}, -- left section
    {}, -- right section
  },
  -- components when buffer is inactive
  inactive = {
    {}, -- left section
    {}, -- right section
  },
}

-- insert the mode component at the beginning of the left section
table.insert(components.active[LEFT], {
  name = 'mode',
  provider = wrapped_provider(provide_mode, wrap),
  right_sep = 'slant_right',
  -- hl needs to be a function to avoid calling get_mode_color
  -- before feline initiation
  hl = function()
    return {
      fg = 'black',
      bg = vi_mode.get_mode_color(),
    }
  end,
})

-- insert the branchname component
table.insert(components.active[RIGHT], {
  provider = "git_branch",
  icon = ' ',
  hl = {
    bg = 'skyblue',
    fg = 'black',
  },
  left_sep = { str = "slant_left", hl = {
    fg = 'skyblue',
    bg = 'black',
  } },
  right_sep = { str = "slant_left", hl = {
    bg = 'skyblue',
    fg = 'black'
  } },
  enabled = function()
    return vim.b.gitsigns_status_dict ~= nil
  end,
})

-- insert the filename component after the mode component
table.insert(components.active[RIGHT], {
  name = 'filename',
  provider = wrapped_provider(provide_filename, wrap_right),
  left_sep = 'slant_left',
  hl = {
    bg = 'brown',
    fg = 'black',
  },
})

-- insert the filetype component before the linenumber component
table.insert(components.active[RIGHT], {
  name = 'filetype',
  provider = wrapped_provider(provide_filetype, wrap_right),
  left_sep = 'slant_left',
  hl = {
    bg = 'brown',
    fg = 'black',
  },
})

-- insert the linenumber component at the end of the left right section
table.insert(components.active[RIGHT], {
  name = 'linenumber',
  provider = wrapped_provider(provide_linenumber, wrap),
  left_sep = 'slant_left',
  hl = {
    bg = 'skyblue',
    fg = 'black',
  },
})

-- insert the inactive filename component at the beginning of the left section
table.insert(components.inactive[LEFT], {
  name = 'filename_inactive',
  provider = wrapped_provider(provide_filename, wrap),
  right_sep = 'slant_right',
  hl = {
    fg = 'brown',
    bg = 'bg',
  },
})

vim.feline_theme = NOIRBUDDY
vim.feline_vi_mode_colors = MODE_COLORS
vim.feline_components = components

EOF
