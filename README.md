Programming-Assignment-4-in-October-2013
========================================

This Programming Assignment will focus on regular expressions and the various regular
expression functions implemented in R. The ability to handle and construct regular expressions is important when dealing with unstructured text data, often obtained from the Web
or other online source.
First download the Baltimore_homicides.zip le from Courseplus and unzip it into your
working directory. You can read the le homicides.txt with readLines via
> homicides <- readLines("homicides.txt")

The data were downloaded from the Baltimore Sun web site (http://goo.gl/hSofH) and
contain information about homicides occurring between 2007 and the middle of 2012. There
is one homicide record per line of text. The data contain various HTML and JavaScript
markup and so are not easily read into R without some manipulation/processing.

Count.R -- How many of each cause of homicide?
========================================

The goal of this problem is to count the number of different types of homicides that are
in this dataset. In each record there is a eld with the word \Cause" in it indicating the
cause of death (e.g. \Cause: shooting"). The basic goal is to extract this eld and count the
number of instances of each cause.
Write a function named count that takes one argument, a character string indicating the
cause of death. The function should then return an integer representing the number of
homicides from that cause in the dataset. If no cause of death is specied, then the function
should return an error message via the stop function.

Agecount.R -- Age of homicide victims?
========================================

The goal of this part is to write a function called agecount that returns the number of
homicide victims of a given age. For most (but not all) records there is an indication of the
age of the victim. Your function should take one argument, the age of the victim(s), extract
the age of the victim from each record and then return a count of the number of victims of
the specied age.
