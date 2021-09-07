# Get_MovieName_RunLength_In_Perl
Perl script parses a HTML file, extracts just the Movie Name and Run Length - Helps to check if it's a full movie or not. 


This is an experimental perl script that is used to get a list of all movies and it's run length from you tube collected in a HTML file.

The use case is : lets say you know the name of a movie and would like to see if such a movie exists in Youtube.

Currently if user goes to Youtube and searches for the movie name - it lists 100s of movies that have differing run lengths, some may be 2 minutes, and some are advertisements, and some are not even movies but something else with the same name.
The objective is to collect the names of the videos from Youtube, dump it to a file, and then parse it to extract just the name and the run length of the videos.

By looking at the Run length when you run the script - one can determine if it's a Movie ( typically around 1hr 30 minutes ) and go there directly.

Steps :

1. Get the list of movies from Youtube using curl tool, and redirect it to an external file 

curl https://www.youtube.com/results?search_query=amapola > amapola.html


2. ./gettitle.sh 
This shell script calls perl inside, which parses the HTML file and lists the videos and it's run lengths.
By looking at the run lengths ( 2 minutes Versus 1 hr 30 minutes ) - one can determine whether it's a movie or not. 
Easier to find that going thru multiple pages at a time in Youtube and using command line.

Note : You will have to give it execute permissions to the gettitle.sh script.

I got the idea of using the search and replace regular expressions using this link.

  1 https://www.blostars.org/p/56969


The Youtube extract HTML external file is a huge one, and first few lines are not meaningful and the list of movies starts from line 20 onwards and it's one BIG line containing multiple paragraphs, each para containing Video and it's descriptions.
The script searches for multiple repeated paragraphs in a loop and prints out.
The shell now - eliminates the braces and other unwanted tags.

To Do : 
Have everything in a single script and then list or just give the link to the video which is a movie.
How to get multiple pages in video, currently only 1 page data is retrieved.
How to determine if it's a movie or just another blob of 1.5 minutes.



A sample output :

![image](https://user-images.githubusercontent.com/14288989/132293496-b515d5ca-157b-45a8-a0f5-e789e529670b.png)


