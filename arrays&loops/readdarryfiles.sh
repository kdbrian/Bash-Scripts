#! /bin/bash

# using the readarray command to store the absolute path of folders in the /files directory

# to create this files
# touch ./files/file{001..100}.txt //creates 100 .txt files
touch ./files/file{001..100}.txt;

# to get the absolute paths of these files 
# we use this command ls ~/Documents/BashScripting/arrays\&loops/files/*.txt

readarray -t filepaths < <(ls ~/Documents/BashScripting/arrays\&loops/files)

echo ${filepaths[@]}

echo ${filepaths[@]@Q}

# removes all the files (garbage)
echo 
echo 
PS3="Keep or delete the .txt files : "
select opt in delete keep; do

        case "$opt" in
            delete) rm ./files/*.txt ;;
            keep) echo "Done"; exit 0; ;;
            *) echo "invalid option deleting files anyway"; rm ./file/*.txt; ;;
        esac
        break
done

exit 0