local tableMode = {
	['n'] = 'Normal',
	['no'] = 'N·operator pending',
	['v'] = 'Visual',
	['V'] = 'V·Line',
	[''] = 'V·block',
	['s'] = 'Select',
	['S'] = 'S·Line',
	[''] = 'S·Block',
	['i'] = 'Insert',
	['R'] = 'Replace',
	['Rv'] = 'V·Replace',
	['c'] = 'Command',
	['cv'] = 'Vim Ex',
	['ce'] = 'Ex',
	['r'] = 'Prompt',
	['rm'] = 'More',
	['r?'] = 'Confirm',
	['!'] = 'Shell',
	['t'] = 'Terminal'
}

function get_mode()
	local mode = vim.api.nvim_get_mode().mode

	if tableMode[mode] == nil then
		return string.format(" %s ", mode)
	end

	return string.format(" %s ", tableMode[mode])
end

function render_statusline()
	return table.concat {
		"%#AmoraSearch#",
		get_mode(),
		"%## ",
		"%f",
		"%=",
		"%{&fileencoding ? &fileencoding : &encoding} ",
		"%#AmoraSearch#",
		" %l:%c "
	}
end
  
vim.o.statusline = "%!luaeval('render_statusline()')"

require("fidget").setup {
    text = {
        spinner = "arc",
    },
    align = {
        bottom = true,
    },
}
