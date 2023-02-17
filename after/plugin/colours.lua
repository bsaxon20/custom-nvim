function ColourMyPencils(colour)
	colour = colour or "rose-pine"
	vim.cmd.colorscheme(colour)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})
end

ColourMyPencils()

<<<<<<< HEAD

=======
>>>>>>> 63be0db57f802282f623a32a8cdd8196cbb1b2c4
