source ~/.asdf/asdf.fish
if status is-interactive
    keychain --eval ~/.ssh/github_ed25519 | source
    # Commands to run in interactive sessions can go here
end
starship init fish | source
zoxide init fish | source
