#this a vector containing a quote. in the form of a character vector
sentence <- c('By','the','time','they', 'got', 'back,', 'the', 'lights', 'were', 'all', 'out', 'and', 'everybody', 'was', 'asleep.', 'Everybody,', 'that', 'is,', 'except', 'for', 'Guih', 'Kyom', 'the', 'dung', 'beetle.', 'He', 'was', 'wide', 'awake', 'and', 'on', 'duty,', 'lying', 'on', 'his', 'back', 'with', 'his', 'legs', 'in', 'the', 'air', 'to', 'save', 'the', 'world', 'in', 'case', 'the', 'heavens', 'fell.')

#this is used to find the word 'the' in the text
grep_out <- grep(pattern = 'the', x = sentence)
grep_out


#this checks if the grep() function has returned all the words and in the correct positions
#using subscript
sentence[grep_out]#this included the word 'they', which is not what we wanted 

#the '^' and '$' are known as anchors which will just find 'the' and not anything containing 'the'
grep_out2 <- grep(pattern = '^the$', x=sentence)
grep_out2

#regular expressions can be used to search for the elements that contain a capital letter using the pattern '[A-Z]'
#any letters in the text with a capital letter 
capital_letter <- grep(pattern = '[A-Z]', x = sentence)
capital_letter

#we can look for lowercase letters using '[a-z]'
lowercase_letter <- grep(pattern = '[a-z]', x = sentence)
lowercase_letter

any_letter <- grep(pattern = '[A-z]', x = sentence)
any_letter

#we can use the special character '.' to specify that any character can match the search pattern 
#if we search 'a.e' to look for matches where there is an 'a' and an 'e' separated by any character
special <- grep(pattern = 'a.e', x = sentence)
sentence[special]

#quantifiers allow you to specify how many of a character (or set of characters) grep() is matching to
#'?' denotes 0 or 1 instances 
#'*'denotes 0 or more instances 
#'+' denotes 1 or more instances 

#the '.' shows that there is a character in between, '?' means that there is either 0 or 1 characters in the middle
sentence[grep(pattern = 'e.?e', x = sentence)]

sentence[grep(pattern = 'e.*e', x = sentence)]

sentence[grep(pattern = 'e.+e', x = sentence)]

#gsub() can be used to search for text but it substitutes the matched text with the text of our choosing
gsub_out <- gsub(pattern = 'a.e', x = sentence, replacement = '!!!')
gsub_out

#this replaces all the 't's' with '???'
t_replacement <- gsub(pattern = 't', x = sentence, replacement = '???')
t_replacement





