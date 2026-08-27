if status is-interactive
    # Hide default Fish welcome message
    set -g fish_greeting ""

    # Set hyprshot output directory so home stays clean
    set -gx HYPRSHOT_DIR "$HOME/Pictures/Screenshots"

    # Display Arch logo + system info on open
    fastfetch
    
    starship init fish | source

    # Fish syntax highlighting colors
set -g fish_color_command 77cc00 --bold       # Valid commands (cat, vim, etc.)
set -g fish_color_param d4be98                 # Arguments/parameters ("about this text")
set -g fish_color_error 8d0404                 # Unknown commands ("what") -> change to d4be98 if you want no red at all
set -g fish_color_quote 00cc55                 # Quoted strings
set -g fish_color_redirection 00ffaa           # Redirects and pipes
set -g fish_color_end 00ffaa
set -g fish_color_option d4be98                # Flags like -la or --help
set -g fish_color_autosuggestion 555555        # Tab completion preview
end
