local status, autotag = pcall(require, 'nvim-ts-autotag')
if not status then
    print('nvim-ts-autotag not found')
    return
end

autotag.setup{
    autotag = {
        enable = true,
    }
}
