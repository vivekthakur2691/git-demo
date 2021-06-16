#!/bash/bin


#file_path="/home/viveks/Downloads/vimclass/inserting.txt"

#file_path="/home/viveks/Downloads/darti_all_2020-10-01.log"
file_path="/home/viveks/Downloads/darti_all_2021-06-14.log"


video_start=`grep -ic 'Video START' < $file_path`

video_complete=`grep -ic 'Video play complete' $file_path`

error=`grep -ic 'ERROR' $file_path`

warning=`grep -ic 'WARN' $file_path`

fatal_error=`grep -ic 'fatal error' $file_path`

app_start=`grep -ic 'app started' $file_path`

number_of_lines=`wc --lines < $file_path`

number_of_words=`wc --word < $file_path`



#program for finding longest and shortest string in a file

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
      shortword=$word
    fi

done



echo "total video start: $video_start"
echo "total video omolete: $video_complete"
echo "total Errors: $error"
echo "total warnings: $warning"
echo "total fatal error: $fatal_error"
echo "total app started: $app_start"
echo "Number of lines: $number_of_lines"
echo "Number of words: $number_of_words"
echo "The shortest word length is $shortest and word is $shortword"
echo "The longest word length is $longest"


