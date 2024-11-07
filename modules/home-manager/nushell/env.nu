def create_left_prompt [] {
  let user = $"(ansi red_bold)($env.USER)(ansi reset)"
  let at = $"(ansi green_bold)@(ansi reset)"
  let hostname = $"(ansi blue_bold)(hostname)(ansi reset)"

  let home = $env.HOME
  let dir = ([
      # /Users/alex/Documents -> ~/
      ($env.PWD | str substring 0..($home | str length) | str replace $home "~"),
      # /User/alex/Documents -> Documents
      ($env.PWD | str substring (($home | str length) + 1)..)
  ] | str join)

  $"($user)($at)($hostname) ($dir)\n\r"
}

$env.PROMPT_COMMAND = {|| create_left_prompt }
$env.PROMPT_COMMAND_RIGHT = {|| }

$env.PROMPT_INDICATOR = {|| "> " }
$env.PROMPT_INDICATOR_VI_INSERT = {|| ": " }
$env.PROMPT_INDICATOR_VI_NORMAL = {|| "> " }
$env.PROMPT_MULTILINE_INDICATOR = {|| "| " }

$env.ENV_CONVERSIONS = {
  "PATH": {
    from_string: { |s| $s | split row (char esep) | path expand --no-symlink }
    to_string: { |v| $v | path expand --no-symlink | str join (char esep) }
  }
  "Path": {
    from_string: { |s| $s | split row (char esep) | path expand --no-symlink }
    to_string: { |v| $v | path expand --no-symlink | str join (char esep) }
  }
}

$env.NU_LIB_DIRS = [
    ($nu.default-config-dir | path join 'scripts')
]

$env.NU_PLUGIN_DIRS = [
    ($nu.default-config-dir | path join 'plugins')
]
