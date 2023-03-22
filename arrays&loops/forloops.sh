#! /bin/bash

# allows to iterate over an array and perfom a command for 'each' element in the list until there is no element left
# repeatadely runs the commands

# syntax start with :
#  for <el> in <elements>; do
#    <commands>
#  done

for el in first second third ; do
    echo $el
done

# iterating over arrays
echo
echo "for loops over arrays"
readarray -t days < days.txt

for nday in "${days[@]}"; do
    echo $nday
done


echo
echo "Creating files with for loops"

readarray -t files < files.txt;

echo ${files[@]}

for file_name in "${files[@]}"; do

    # check if the file already exists first
    if [ -e "$file_name" ] && [ -f "$filename"] ; then
        echo "$file_name already exists";
    else
        touch "$file_name"
    fi
done

echo "Script ran successfully"

PS3="Delete created files: "
select opt in delete keep; do

    case "$opt" in
        delete) 
            for file in "${files[@]}"; do
                rm "./$file"
            done
            echo "Deleted files"
        ;;
        keep) echo "Keeping files";;
        *) ;;
    esac

    break
done