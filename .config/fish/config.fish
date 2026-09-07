if status is-interactive
    # Hide default Fish welcome message
    set -g fish_greeting ""

    set -gx HYPRSHOT_DIR "$HOME/Pictures/Screenshots"

    fastfetch
    
    starship init fish | source

    # Fish syntax highlighting colors
set -g fish_color_command 77cc00 --bold       
set -g fish_color_param d4be98                 
set -g fish_color_error 8d0404                
set -g fish_color_quote 00cc55                 
set -g fish_color_redirection 00ffaa           
set -g fish_color_end 00ffaa
set -g fish_color_option d4be98                
set -g fish_color_autosuggestion 555555        
end
