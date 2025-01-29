local keymap = vim.keymap

-- Git
keymap.set("n", "<leader>g", vim.cmd.Git)
keymap.set(
	"n",
	"<leader>gl",
	"<cmd>Git log --pretty=format:'%C(yellow)%h%Creset %Cgreen%ad%Creset %s' --date=short<CR>"
)

keymap.set("n", "<leader>gd", "<cmd>Gvdiffsplit<CR>")

keymap.set("n", "<leader>gP", function()
	local branch = vim.fn.system("git branch --show-current"):gsub("%s+", "")
	vim.cmd("Git push --set-upstream origin " .. branch)
end, { desc = "Push & set upstream current branch" })

keymap.set("n", "<leader>gp", "<cmd>Git push<CR>", { desc = "Git push" })

-- TODO: Git stash, stash pop, stash and clean

keymap.set("n", "<leader>gco", function()
	vim.ui.input({ prompt = "Branch: " }, function(branch)
		if branch then
			vim.cmd("Git checkout " .. branch)
		end
	end)
end, { desc = "Git checkout branch" })

keymap.set("n", "<leader>gcb", function()
	vim.ui.input({ prompt = "New branch name: " }, function(branch)
		if branch then
			vim.cmd("Git checkout -b " .. branch)
		end
	end)
end, { desc = "Git create branch" })

-- Git commits: Conventional Commits
keymap.set("n", "<leader>gcft", function()
	vim.ui.input({ prompt = " feat " }, function(input)
		if input then
			vim.cmd("Git commit -m 'feat: " .. input .. "'")
		end
	end)
end, { desc = "Git commit feat" })

keymap.set("n", "<leader>gcch", function()
    vim.ui.input({ prompt = " chore " }, function(input)
        if input then
            vim.cmd("Git commit -m 'chore: " .. input .. "'")
        end
    end)
end, { desc = "Git commit chore" })

keymap.set("n", "<leader>gcfx", function()
	vim.ui.input({ prompt = " fix " }, function(input)
		if input then
			vim.cmd("Git commit -m 'fix: " .. input .. "'")
		end
	end)
end, { desc = "Git commit fix" })

keymap.set("n", "<leader>gcdc", function()
	vim.ui.input({ prompt = " docs " }, function(input)
		if input then
			vim.cmd("Git commit -m 'docs: " .. input .. "'")
		end
	end)
end, { desc = "Git commit docs" })


keymap.set("n", "<leader>gcst", function()
	vim.ui.input({ prompt = " style " }, function(input)
		if input then
			vim.cmd("Git commit -m 'style: " .. input .. "'")
		end
	end)
end, { desc = "Git commit style" })


keymap.set("n", "<leader>gcrf", function()
	vim.ui.input({ prompt = " refactor " }, function(input)
		if input then
			vim.cmd("Git commit -m 'refactor: " .. input .. "'")
		end
	end)
end, { desc = "Git commit refactor" })


keymap.set("n", "<leader>gcts", function()
	vim.ui.input({ prompt = " test " }, function(input)
		if input then
			vim.cmd("Git commit -m 'test: " .. input .. "'")
		end
	end)
end, { desc = "Git commit test" })


keymap.set("n", "<leader>gcci", function()
	vim.ui.input({ prompt = " ci " }, function(input)
		if input then
			vim.cmd("Git commit -m 'ci: " .. input .. "'")
		end
	end)
end, { desc = "Git commit ci" })


keymap.set("n", "<leader>gcpf", function()
	vim.ui.input({ prompt = " performance " }, function(input)
		if input then
			vim.cmd("Git commit -m 'perf: " .. input .. "'")
		end
	end)
end, { desc = "Git commit performance" })


keymap.set("n", "<leader>gcbu", function()
	vim.ui.input({ prompt = " build " }, function(input)
		if input then
			vim.cmd("Git commit -m 'build: " .. input .. "'")
		end
	end)
end, { desc = "Git commit build" })


-- Git commits: Danny's Commits
keymap.set("n", "<leader>gca", function()
	vim.ui.input({ prompt = "[Add]" }, function(input)
		if input then
			vim.cmd("Git commit -m '[Add] " .. input .. "'")
		end
	end)
end, { desc = "Git commit [Add]" })

keymap.set("n", "<leader>gcf", function()
	vim.ui.input({ prompt = "[Fix]" }, function(input)
		if input then
			vim.cmd("Git commit -m '[Fix] " .. input .. "'")
		end
	end)
end, { desc = "Git commit [Fix]" })


keymap.set("n", "<leader>gcd", function()
	vim.ui.input({ prompt = "[Docs]" }, function(input)
		if input then
			vim.cmd("Git commit -m '[Docs] " .. input .. "'")
		end
	end)
end, { desc = "Git commit [Docs]" })

keymap.set("n", "<leader>gcs", function()
	vim.ui.input({ prompt = "[Style]" }, function(input)
		if input then
			vim.cmd("Git commit -m '[Style] " .. input .. "'")
		end
	end)
end, { desc = "Git commit [Style]" })

keymap.set("n", "<leader>gcx", function()
	vim.ui.input({ prompt = "[Refactor]" }, function(input)
		if input then
			vim.cmd("Git commit -m '[Refactor] " .. input .. "'")
		end
	end)
end, { desc = "Git commit [Refactor]" })

keymap.set("n", "<leader>gct", function()
	vim.ui.input({ prompt = "[Test]" }, function(input)
		if input then
			vim.cmd("Git commit -m '[Test] " .. input .. "'")
		end
	end)
end, { desc = "Git commit [Test]" })

keymap.set("n", "<leader>gcc", function()
	vim.ui.input({ prompt = "[Change]" }, function(input)
		if input then
			vim.cmd("Git commit -m '[Change] " .. input .. "'")
		end
	end)
end, { desc = "Git commit [Change]" })

keymap.set("n", "<leader>gcr", function()
	vim.ui.input({ prompt = "[Remove]" }, function(input)
		if input then
			vim.cmd("Git commit -m '[Remove] " .. input .. "'")
		end
	end)
end, { desc = "Git commit [Remove]" })

keymap.set("n", "<leader>gcu", function()
	vim.ui.input({ prompt = "[Update]" }, function(input)
		if input then
			vim.cmd("Git commit -m '[Update] " .. input .. "'")
		end
	end)
end, { desc = "Git commit [Update]" })
