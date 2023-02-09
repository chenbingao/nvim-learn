local command = {}
local provider = require "lsp.ui.lspsaga.provider"
local lsprename = require "lsp.ui.lspsaga.rename"
local lsphover = require "lsp.ui.lspsaga.hover"
local diagnostic = require "lsp.ui.lspsaga.diagnostic"
local codeaction = require "lsp.ui.lspsaga.codeaction"
local implement = require "lsp.ui.lspsaga.implement"
local floaterm = require "lsp.ui.lspsaga.floaterm"

local subcommands = {
  definition = provider.definition,
  lsp_finder = provider.lsp_finder,
  preview_definition = provider.preview_definition,
  rename = lsprename.rename,
  hover_doc = lsphover.render_hover_doc,
  show_cursor_diagnostics = diagnostic.show_cursor_diagnostics,
  show_line_diagnostics = diagnostic.show_line_diagnostics,
  yank_line_diagnostics = diagnostic.yank_line_messages,
  diagnostic_jump_next = diagnostic.navigate "next",
  diagnostic_jump_prev = diagnostic.navigate "prev",
  code_action = codeaction.code_action,
  range_code_action = codeaction.range_code_action,
  implement = implement.lspsaga_implementation,
  toggle_virtual_text = diagnostic.toggle_virtual_text,
  open_floaterm = floaterm.open_float_terminal,
  close_floaterm = floaterm.close_float_terminal,
  toggle_floaterm = floaterm.toggle_float_terminal,
}

function command.command_list()
  return vim.tbl_keys(subcommands)
end

function command.load_command(cmd, ...)
  local args = { ... }
  if next(args) ~= nil then
    subcommands[cmd](args[1])
  else
    subcommands[cmd]()
  end
end

return command