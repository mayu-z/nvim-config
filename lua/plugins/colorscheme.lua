return {
	{
		"Mofiqul/vscode.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("vscode").setup({
				style = "dark",
				transparent = false,
				italic_comments = true,
				disable_nvimtree_bg = true,
			})

			vim.cmd.colorscheme("vscode")

			local accent = "#DE7356"
			local bg = "#333333"

			local ui = {
				Normal = { bg = bg },
				NormalNC = { bg = bg },
				NormalFloat = { bg = bg },
				FloatBorder = { fg = accent, bg = bg },
				CursorLineNr = { fg = accent, bg = bg, bold = true },
				LineNr = { fg = accent, bg = bg },
				SignColumn = { fg = accent, bg = bg },
				EndOfBuffer = { fg = bg, bg = bg },
				VertSplit = { fg = accent, bg = bg },
				WinSeparator = { fg = accent, bg = bg },
				StatusLine = { fg = accent, bg = bg, bold = true },
				StatusLineNC = { fg = accent, bg = bg },
				TabLine = { fg = accent, bg = bg },
				TabLineSel = { fg = bg, bg = accent, bold = true },
				TabLineFill = { fg = accent, bg = bg },
				Pmenu = { fg = accent, bg = bg },
				PmenuSel = { fg = bg, bg = accent, bold = true },
				PmenuSbar = { fg = accent, bg = bg },
				PmenuThumb = { fg = bg, bg = accent },
				Directory = { fg = accent, bg = bg, bold = true },
				Title = { fg = accent, bg = bg, bold = true },

				NvimTreeNormal = { fg = accent, bg = bg },
				NvimTreeNormalNC = { fg = accent, bg = bg },
				NvimTreeWinSeparator = { fg = accent, bg = bg },
				NvimTreeRootFolder = { fg = accent, bg = bg, bold = true },
				NvimTreeFolderName = { fg = accent, bg = bg },
				NvimTreeOpenedFolderName = { fg = accent, bg = bg, bold = true },
				NvimTreeEmptyFolderName = { fg = accent, bg = bg },
				NvimTreeSpecialFile = { fg = accent, bg = bg, underline = true },
				NvimTreeExecFile = { fg = accent, bg = bg },
				NvimTreeFileName = { fg = accent, bg = bg },
				NvimTreeGitDirty = { fg = accent, bg = bg },
				NvimTreeGitStaged = { fg = accent, bg = bg },

				TelescopeNormal = { fg = accent, bg = bg },
				TelescopeBorder = { fg = accent, bg = bg },
				TelescopePromptNormal = { fg = accent, bg = bg },
				TelescopePromptBorder = { fg = accent, bg = bg },
				TelescopeResultsNormal = { fg = accent, bg = bg },
				TelescopeResultsBorder = { fg = accent, bg = bg },
				TelescopePreviewNormal = { fg = accent, bg = bg },
				TelescopePreviewBorder = { fg = accent, bg = bg },
				TelescopePromptPrefix = { fg = accent, bg = bg, bold = true },
				TelescopeMatching = { fg = accent, bg = bg, bold = true },
				TelescopeSelection = { fg = bg, bg = accent, bold = true },

				BufferLineFill = { fg = accent, bg = bg },
				BufferLineBackground = { fg = accent, bg = bg },
				BufferLineBufferVisible = { fg = accent, bg = bg },
				BufferLineBufferSelected = { fg = accent, bg = bg, bold = true, underline = true },
				BufferLineTabSelected = { fg = accent, bg = bg, bold = true },
				BufferLineDuplicateSelected = { fg = accent, bg = bg },
				BufferLineModified = { fg = accent, bg = bg },
				BufferLineModifiedVisible = { fg = accent, bg = bg },
				BufferLineModifiedSelected = { fg = accent, bg = bg, bold = true },
				BufferLineSeparator = { fg = accent, bg = bg },
				BufferLineSeparatorVisible = { fg = accent, bg = bg },
				BufferLineSeparatorSelected = { fg = accent, bg = bg },
				BufferLineCloseButton = { fg = accent, bg = bg },
				BufferLineCloseButtonVisible = { fg = accent, bg = bg },
				BufferLineCloseButtonSelected = { fg = accent, bg = bg, bold = true },
				BufferLineIndicatorSelected = { fg = accent, bg = bg },

				NoiceCmdlinePopup = { fg = accent, bg = bg },
				NoiceCmdlinePopupBorder = { fg = accent, bg = bg },
				NoicePopup = { fg = accent, bg = bg },
				NoicePopupBorder = { fg = accent, bg = bg },
				NotifyINFOTitle = { fg = accent, bg = bg },
				NotifyWARNTitle = { fg = accent, bg = bg },
				NotifyERRORTitle = { fg = accent, bg = bg },
				NotifyINFOBorder = { fg = accent, bg = bg },
				NotifyWARNBorder = { fg = accent, bg = bg },
				NotifyERRORBorder = { fg = accent, bg = bg },

				AlphaHeader = { fg = accent, bg = bg, bold = true },
				AlphaButtons = { fg = accent, bg = bg },
				AlphaAccent = { fg = accent, bg = bg, bold = true },
				AlphaFooter = { fg = accent, bg = bg },
			}

			for group, value in pairs(ui) do
				vim.api.nvim_set_hl(0, group, value)
			end
		end,
	},
}
