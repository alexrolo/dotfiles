# name: Nim
# author: Guilhem "Nim" Saurel − https://github.com/nim65s/dotfiles/


function fish_prompt
    # This prompt shows:
    # - 0044FF lines if the last return command is OK, red otherwise
    # - your user name, in red if root or yellow otherwise
    # - your hostname, in $lineColor if ssh or blue otherwise
    # - the current path (with prompt_pwd)
    # - date +%X
    # - the current virtual environment, if any
    # - the current git status, if any, with fish_git_prompt
    # - the current battery state, if any, and if your power cable is unplugged, and if you have "acpi"
    # - current background jobs, if any

    # It goes from:
    # ┬─[nim@Hattori:~]─[11:39:00]
    # ╰─>$ echo here

    # To:
    # ┬─[nim@Hattori:~/w/dashboard]─[11:37:14]─[V:django20]─[G:master↑1|●1✚1…1]─[B:85%, 05:41:42 remaining]
    # │ 2    15054    0%    arrêtée    sleep 100000
    # │ 1    15048    0%    arrêtée    sleep 100000
    # ╰─>$ echo there

    set -l lineColor red
    set -l stat $status
    test $status = 0; and set lineColor cyan

    set -q __fish_git_prompt_showupstream
    or set -g __fish_git_prompt_showupstream auto

    echo

    function _nim_prompt_wrapper
        set -l retc $argv[1]
        set -l field_name $argv[2]
        set -l field_value $argv[3]

        set_color $retc
        echo -n '─'
        set_color -o 0044FF
        echo -n '['
        set_color normal
        test -n $field_name
        and echo -n $field_name:
        set_color $retc
        echo -n $field_value
        set_color -o 0044FF
        echo -n ']'
    end

    set_color $lineColor
    echo -n '┬─' 
    echo -n '┬─'
    set_color -o 0044FF
    echo -n [

    if functions -q fish_is_root_user; and fish_is_root_user
        set_color -o red
    else
        set_color -o FFB91A
    end

    echo -n $USER
    set_color -o 0044FF
    echo -n @

    set_color FFB91A
    echo -n (prompt_hostname)
    
    set_color -o 0044FF
    echo -n ']'
    set_color $lineColor
    echo -n :
    set_color -o 0044FF
    echo -n [
    set_color $lineColor
    echo -n (prompt_pwd)
    set_color -o 0044FF
    echo -n ']'

    # Date
    set_color $lineColor
    _nim_prompt_wrapper $lineColor '' (date +%X)

    # Last exit code
    set_color -o $lineColor
    echo -n '─'
    set_color -o 0044FF
    echo -n '['
    set_color -o $lineColor
    if test "$stat" = 0
    	echo -n 'OK.'
    else 
	echo -n 'ERR.'
    end
    echo -n $stat
    set_color -o 0044FF
    echo -n ']'



    # Vi-mode
    # The default mode prompt would be prefixed, which ruins our alignment.
    function fish_mode_prompt
    end

    if test "$fish_key_bindings" = fish_vi_key_bindings
        or test "$fish_key_bindings" = fish_hybrid_key_bindings
        set -l mode
        switch $fish_bind_mode
            case default
                set mode (set_color --bold red)N
            case insert
                set mode (set_color --bold 0044FF)I
            case replace_one
                set mode (set_color --bold 0044FF)R
                echo '[R]'
            case replace
                set mode (set_color --bold $lineColor)R
            case visual
                set mode (set_color --bold magenta)V
        end
        set mode $mode(set_color normal)
        _nim_prompt_wrapper $lineColor '' $mode $lineColor
    end


    # Virtual Environment
    set -q VIRTUAL_ENV_DISABLE_PROMPT
    or set -g VIRTUAL_ENV_DISABLE_PROMPT true
    set -q VIRTUAL_ENV
    and _nim_prompt_wrapper $lineColor V (basename "$VIRTUAL_ENV") 

    # git
    set -l prompt_git (fish_git_prompt '%s')
    test -n "$prompt_git"
    and _nim_prompt_wrapper $lineColor 'Git' $prompt_git 

    # Battery status
    type -q acpi
    and test (acpi -a 2> /dev/null | string match -r off)
    and _nim_prompt_wrapper $lineColor B (acpi -b | cut -d' ' -f 4-) 

    # New line
    echo

    # Background jobs
    set_color normal

    for job in (jobs)
        set_color $lineColor
        echo -n '  │ '
        set_color brown
        echo $job
    end

    set_color $lineColor
    echo -n '  ╰─>'
    echo -n ' λ' 
    echo -n ' '
    set_color normal
end
