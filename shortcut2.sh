# What is the file with the fewest words in written_2/non-fiction/OUP/Kauffman/
wc -w written_2/non-fiction/OUP/Kauffman/*.txt > KauffmanCount.txt
echo "Answer for question 1:"
sort KauffmanCount.txt | head -1

# What is the file with the most characters in either berlitz1 or berlitz2 within written_2/travel_guides? What are the first few lines of that file? 
wc -c  written_2/travel_guides/berlitz1/*.txt written_2/travel_guides/berlitz2/*.txt > travelCount.txt
echo "Answer for question 2:"
sort travelCount.txt| tail -2 | head -1

# How many lines in berlitz1 contain the string "vista"? What about in berlitz2?
echo "Answer for question 3:"
echo " berlitz1 :"
grep -r "vista" written_2/travel_guides/berlitz1/ | wc -l
echo " berlitz2 :"
grep -r "vista" written_2/travel_guides/berlitz2/ | wc -l

# How many files in berlitz1 contain the string "vista"? What about in berlitz2?
echo "Answer for question 4:"
echo " berlitz1 :"
grep -rl "vista" written_2/travel_guides/berlitz1/ |wc -l
echo " berlitz2 :"
grep -rl "vista" written_2/travel_guides/berlitz2/ |wc -l