local autocmd = vim.api.nvim_create_autocmd   -- Create autocommand

local function format_with_black()
    -- Command to run Black
    local command = "black "

    -- Get the current file name
    local file = vim.api.nvim_buf_get_name(0)

    -- Execute the Black command on the current file
    vim.api.nvim_command('! ' .. command .. file)
end

-- Run black on python save
autocmd('BufWritePost', {
    pattern = {'*.py'},
    command = ":!black %",
})
