#!/bin/bash

# Check if a filename was provided as an argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

cur_dir=$(pwd)

# Check if the file exists
if [ -e "$cur_dir"/"$1" ]; then

    echo ""
    echo "Where do you want to move this?"
    echo "1 - movies"
    echo "2 - christmas_movies"
    echo "3 - kids_movies"
    echo "4 - documentaries"

    echo "5 - tv_shows"
    echo "6 - kids_tv_shows"

    echo "7 - various/temp"
    echo "8 - music"
    echo ""

    read selection

    echo ""

    if [ "$selection" = "1" ]; then

        you_selected="/mnt/movies/movies"
        mv "$cur_dir"/"$1" "$you_selected"

    elif [ "$selection" = "2" ]; then

        you_selected="/mnt/movies/christmas_movies"
        mv "$cur_dir"/"$1" "$you_selected"

    elif [ "$selection" = "3" ]; then

        you_selected="/mnt/movies/kids_movies"
        mv "$cur_dir"/"$1" "$you_selected"

    elif [ "$selection" = "4" ]; then

        you_selected="/mnt/movies/documentaries"
        mv "$cur_dir"/"$1" "$you_selected"

    elif [ "$selection" = "5" ]; then

        you_selected="/mnt/tv_shows/tv_shows"
        mv "$cur_dir"/"$1" "$you_selected"

    elif [ "$selection" = "6" ]; then

        you_selected="/mnt/tv_shows/kids_tv_shows"
        mv "$cur_dir"/"$1" "$you_selected"

    elif [ "$selection" = "7" ]; then

        you_selected="/mnt/various/TEMP"
        mv "$cur_dir"/"$1" "$you_selected"

    elif [ "$selection" = "8" ]; then

        you_selected="/mnt/various/jellyfin_library/Audio/Music"
        mv "$cur_dir"/"$1" "$you_selected"


    fi


    # check if mv operation succeeded
    if [ $? -eq 0 ]; then
        # If mv command succeeded (exit status 0), execute echo command
        echo "'$1' moved successfully to '$you_selected'"
        echo ""
    else
        # If mv command failed (non-zero exit status), optionally handle the failure
        echo "Move operation failed."
    fi



else
    echo "File '$1' not found."
fi
