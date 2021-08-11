#! /usr/bin/bash

# Set up steps after clonning the Repository with my main config files
SCRIPT_DIR=$(dirname "$0")

# Create symbolic links to this folder in configuration
for main_f in "${SCRIPT_DIR}"/*; do
    if [ -d "$main_f" ]; then
        # main_f is a directory
        if [ "$( basename $main_f)" = "home" ]; then
            for down_f in $( find $main_f -maxdepth 1 -mindepth 1 ); do
                ln -si $( realpath $down_f ) $HOME/
            done
        else
            ln -si $( realpath $main_f ) $HOME/.config/
        fi
    fi
done
