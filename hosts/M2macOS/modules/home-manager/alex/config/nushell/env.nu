# TODO: Find out why it still draws the clock
def create_left_prompt [] {
    let user = $"(ansi red_bold)(whoami)"
    let at = $"(ansi green_bold)@"
    let host = $"(ansi blue_bold)(hostname)"

    let path_segment = $"(ansi white)($env.PWD)"

    $"($user)($at)($host) ($path_segment) \n\r"
}

# def create_right_prompt [] {}

let-env PROMPT_COMMAND = { create_left_prompt }
# let-env PROMPT_COMMAND_RIGHT = { create_right_prompt }

let-env PROMPT_INDICATOR = { "> " }
let-env PROMPT_INDICATOR_VI_INSERT = { "\n: " }
let-env PROMPT_INDICATOR_VI_NORMAL = { "\n>" }
let-env PROMPT_MULTILINE_INDICATOR = { "> " }

# Specifies how environment variables are:
# - converted from a string to a value on Nushell startup (from_string)
# - converted from a value back to a string when running external commands (to_string)
# Note: The conversions happen *after* config.nu is loaded
let-env ENV_CONVERSIONS = {
  "PATH": {
    from_string: { |s| $s | split row (char esep) | path expand -n }
    to_string: { |v| $v | path expand -n | str join (char esep) }
  }
  "Path": {
    from_string: { |s| $s | split row (char esep) | path expand -n }
    to_string: { |v| $v | path expand -n | str join (char esep) }
  }
}

# Directories to search for scripts when calling source or use
#
# By default, <nushell-config-dir>/scripts is added
let-env NU_LIB_DIRS = [
    ($nu.config-path | path dirname | path join 'scripts')
]

# Directories to search for plugin binaries when calling register
#
# By default, <nushell-config-dir>/plugins is added
let-env NU_PLUGIN_DIRS = [
    ($nu.config-path | path dirname | path join 'plugins')
]

# Generate Zoxide config
zoxide init nushell | save -f ~/.config/zoxide.nu

# let-env PATH = ($env.PATH | split row (char esep) | prepend '/some/path')

alias g = git
