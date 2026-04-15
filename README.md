## Instructions

> Note: this repo is inspired by this [discussion](https://github.com/github/core-productivity/discussions/1079) and is a stripped down version of the corresponding [repo](https://github.com/zkoppert/dotfiles). It extends it with storing skills, mcp config + oauth tokens, and sessions. If you fork this repo and use it, be sure to keep it private (due to the tokens and sessions).

1. Fork this repo privately or copy the files locally and create your own private dotifles repo (you can name it whatever)
2. Move your local skills, mcp config, and sessions into the repo. From the repo:
```
mv ~/.copilot/skills .
mv ~/.copilot/session-state .
mv ~/mcp-config.json .
mv ~/mcp-oauth-config .
```
If any of the files or directories don't exist yet, create them:
```
mkdir skills
mkdir session-state
mkdir mcp-oauth-config
touch mcp-config.json
```
3. Run `./install.sh` from the repo. This will create symlinks from your `~/.copilot` directory to your dotfiles repo
4. Commit any changes
```
git add . && git commit "updating existing config" && git push
```
5. Go to https://github.com/settings/codespaces, select "Automatically install dotfiles" and choose your new (private) repo.

Now any new codespaces you create will preserve your existing copilot cli config and session history. Whenever you want to sync your config or sessions with your repo, revisit step 4. From a codespace, your dotfiles repo will be located under `/workspaces/.codespaces/.persistedshare/<your repo name>`

Feel free to ping me @jwangxx if you have any questions or problems.