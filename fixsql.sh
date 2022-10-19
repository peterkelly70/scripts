#!/bin/bash
# hacksql
# Hacks moodle database sql file, replacing the search value with the replacevalue


search=""   # Serach for
replace=""  # Repalce with
datbase=""  # SQL file to process

while getopts "s:r:d:h" param; do
    case "${param}" in

    s)  search="$OPTARG";;  

    r)  replace="$OPTARG";;

    d)  replace="$OPTARG";;
         
    h)  printf "Usage hacksql -s <search term> -r <replace term> -d <sql file>" \n"
        printf "example: hacksql -s 'sit-lms.literacyhub.edu.au'  -r 'merlin.lih_moodle.edu.au' -d 'lih_moodle_database_bak_sit_38.221121.sql'  \n"
         
         exit 2;;
    
    ?)  printf "Usage hacksql -s <search term> -r <replace term> -d <sql file> \n"
        printf "example: hacksql -s 'sit-lms.literacyhub.edu.au'  -r 'merlin.lih_moodle.edu.au' -d 'lih_moodle_database_bak_sit_38.221121.sql'  \n"
         
         exit 2;;
    esac
done
shift $((OPTIND-1))

if [ ! -z "${search}" ] && [ ! -z "${replace}" ] && [ ! -z "${database}" ]; then
    oldsite='sit-lms.literacyhub.edu.au'
    newsite='merlin.lih_moodle.edu.au'
    echo "sed -e  \"s/${search}/${replace}/g\" ${database} > nu_${database}"
    sed -e  "s/${search}/${replace}/g\" "${database} > nu_${database}"

else
    printf "Usage hacksql -s <search term> -r <replace term> -d <sql file>" \n"
    exit 2
fi

# oldsite='sit-lms.literacyhub.edu.au'
# newsite='merlin.lih_moodle.edu.au'
# echo "sed -e  \"s/$oldsite/$newsite/g\" lih_moodle_database_bak_sit_38.221121.sql > lih_moodle_database_merlin.sql"
