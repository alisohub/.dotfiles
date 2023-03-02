export def mts [name: string] {
  streamlink --twitch-disable-ads $"https://twitch.tv/($name)" best --player mpv
}

export alias f = z
export alias vim = nvim
export alias ranger = joshuto
export alias cat = bat --wrap=never
export alias la = ls -la

source ~/.zoxide.nu
source ~/.cache/starship/init.nu
