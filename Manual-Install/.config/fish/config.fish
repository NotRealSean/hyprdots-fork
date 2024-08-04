function fish_prompt -d "Write out the prompt"
    # This shows up as USER@HOST /home/user/ >, with the directory colored
    # $USER and $hostname are set by fish, so you can just use them
    # instead of using `whoami` and `hostname`
    printf '%s@%s %s%s%s > ' $USER $hostname \
        (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
end

if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting

end

starship init fish | source
zoxide init --cmd cd fish | source
alias ls='eza -lh'
atuin init fish | source
# function fish_prompt
#   set_color cyan; echo (pwd) 
#   set_color green; echo '> '
# end

thefuck --alias | source

set -Ux SDL_VIDEODRIVER wayland
set -Ux GBM_BACKEND nvidia-drm
set -Ux __GLX_VENDOR_LIBRARY_NAME nvidia
set -Ux VK_DRIVER_FILES /usr/share/vulkan/icd.d/nvidia_icd.json
