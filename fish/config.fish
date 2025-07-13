if status is-interactive
    # Starship custom prompt
    starship init fish | source

    # Only apply custom colors in foot terminal
    if test "$TERM_PROGRAM" = "foot" -o "$TERM" = "foot" -o "$TERM" = "foot-extra"
        cat ~/.local/state/caelestia/sequences.txt 2> /dev/null
    end

    # For jumping between prompts in foot terminal
    function mark_prompt_start --on-event fish_prompt
        echo -en "\e]133;A\e\\"
    end
end
