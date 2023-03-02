let-env PATH = ($env.PATH | split row (char esep) | prepend '.local/bin')
let-env PATH = ($env.PATH | split row (char esep) | prepend '.cargo/bin')

zoxide init nushell | save -f ~/.zoxide.nu

mkdir ~/.cache/starship
starship init nu | save -f ~/.cache/starship/init.nu
