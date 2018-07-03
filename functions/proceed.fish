function proceed -d "A simple confirmation snippet"
    set -lx prompt_message 'Do you want to continue? '
    set -lx destructive 0
    set -lx help_message "Simple utility that creates a confirmation message.
------------------------------------------------------------------------------------
Arguments:
    - m|messsage: The message to display
    - d|destructive: If it is a destructive action empty confirmation breaks the flow
    "
    getopts $argv | while read -l key value
        switch $key
          case m message
            set prompt_message $value
          case d destructive
            set destructive 1
          case h help
            echo $help_message
            return 2
        end
    end

    set -lx y "y"
    set -lx n "N"
    set -lx default_return 1

    if test $destructive -eq 0
        set y "Y"
        set n "n"
        set default_return 0
    end
    set -lx options "[$y/$n]"
    while true
        read -l -P "$prompt_message $options " confirm

        switch $confirm
            case Y y
                return 0
            case N n
                return 1
            case ''
                return $default_return
        end
    end
end
