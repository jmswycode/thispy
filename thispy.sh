#!/usr/bin/env bash
#!/bin/bash
#!/bin/sh
#!/data/data/com.termux/files/usr/bin/bash

#-----------------------------------------------------------
# The author generated this text in part with GPT‑4o, OpenAI’s large-scale
# language-generation model. Upon generating draft language, the author 
# reviewed, edited, and revised the language to their own liking and takes
# ultimate responsibility for the content of this publication.
#-----------------------------------------------------------

# Check if Python is installed and determine the appropriate Python executable
if command -v python &>/dev/null; then
    selected_python=python
elif command -v python3 &>/dev/null; then
    selected_python=python3
elif command -v python2 &>/dev/null; then
    selected_python=python2
else
    # Exit if no Python interpreter is found
    echo "The Python program is not installed or could not be found."
    exit 1
fi


# IFS=$'\n' files=($(find . -maxdepth 1 -name "*.py" -type f -printf "%T@ %p\n" 2>/dev/null | sort -nr | cut -d' ' -f2-))

# List all Python files in the current directory, sorted by modification time cross-platform
IFS=$'\n' files=($(find . -maxdepth 1 -name "*.py" -type f 2>/dev/null | while read -r f; do
    echo "$(stat -c "%Y %n" "$f" 2>/dev/null || stat -f "%m %N" "$f")"
done | sort -nr | cut -d' ' -f2-))

# Initialize an array and an associative array to store file options
file_list=()
i=1
declare -A file_map

# Populate the file list and map for the dialog menu
for file in "${files[@]}"; do
    filename=$(basename "$file")
    formatted_index="[$i]"
    file_list+=("$formatted_index" "$filename")
    file_map["$formatted_index"]="$file"
    ((i++)) 
done

# Check if no Python files were found
if [ ${#file_map[@]} -eq 0 ]; then
    echo "Python files were not found in this directory."
    exit 1
fi

# Display a dialog menu to select a Python file
selected_number=$(dialog --clear --keep-tite --backtitle "$(realpath .)" --title "Run the Python script files." --menu "Please select:" 15 50 15 "${file_list[@]}" --stdout)

# Check if a selection was made
if [ -n "$selected_number" ]; then
    selected_file="${file_map[$selected_number]}"

    # Uncomment the line below to display the command being run
    # echo "Run: $selected_python $(basename "$selected_file")"
    # Run the selected Python file
    "$selected_python" "$selected_file" 
else
    # Handle the case where the user cancels the selection
    echo "cancelled."
    exit 1
fi
