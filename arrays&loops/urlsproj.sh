#! /bin/bash

# getting the urls from the input file
# curling the urls and saving the headers into a respective O/P file

# creating a separate directory to create the files

dirname="urlf"
if [ -d "$dirname" ]; then
    echo "Folder exists continuing"
else
    echo "creating folder"
    mkdir "$dirname"
fi 

readarray -t urls < urls.txt

#echo ${urls[@]}
echo "curling and creating files......"
echo

cd $dirname

for url in "${urls[@]}"; do 
    # create the filename e.g. for 'www.google.com' 'google.txt'
    file_name=$(echo "$url" | cut -d '.' -f 2)
    touch "$file_name".txt
    # curl and save header into output file 
    
    # curl --header "$url" > "$file_name".txt
    echo "Header for $file_name" >> "$file_name".txt 
done

cd ..

exit 0