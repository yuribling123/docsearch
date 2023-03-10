#  How many text files (files ending in .txt) are there?
find  written_2 > find-results.txt
  # Count how many files are there?
  grep ".txt" find-results.txt > grep-results.txt
  wc grep-results.txt

# How many total words are in the files in written_2/travel_guides/berlitz1?
wc  written_2/travel_guides/berlitz1/*.txt | tail -1 
wc  written_2/non-fiction/OUP/Abernathy/*.txt | tail -1

# which file in written_2/travel_guides/berlitz1/ has the most lines?
wc -l written_2/travel_guides/berlitz1/*.txt > berlitz1_sizes.txt
sort berlitz1_sizes.txt  | tail -n 2