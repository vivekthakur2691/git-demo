#!/bash/bin

#cd /home/viveks/


#file_path="/home/viveks/Downloads/vimclass/inserting.txt"

file_path="/home/viveks/Downloads/darti_all_2020-10-01.log"
#file_path="/home/viveks/Downloads/darti_all_2021-06-14.log"


echo "Total video start are: "
grep -ic 'Video START' $file_path

echo "Total play complete: "
grep -ic 'Video play complete' $file_path

echo "Total Errors are: "
grep -ic 'ERROR' $file_path

echo "Total warnings are: "
grep -ic 'WARN' $file_path

echo "Total fatal errros are: "
grep -ic 'fatal error' $file_path

echo "Total times app started are: "
grep -ic 'app started' $file_path


number_of_lines=`wc --lines < $file_path`
number_of_words=`wc --word < $file_path`

echo "Number of lines: $number_of_lines"
echo "Number of words: $number_of_words"


longest=0
shortest=5000
for word in $(<$file_path)
do
    len=${#word}
    if (( len > longest ))
    then
        longest=$len
       # longword=$word
    #fi

    elif((len<shortest))
    then
        shortest=$len
    fi

done
printf 'The longest word length is %d.\n' "$longest"
echo "The shortest word length is $shortest"


