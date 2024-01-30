#(1) Load in the ‘dung_beetles.csv’ into R
dung_beetle <- read.csv('dung_beetles.csv', header = TRUE)
str(dung_beetle)

#(2) it is a numerical dataset 

#(3)  Make a new object that is a vector of all the species names
dung_names <- colnames(dung_beetle)

#(4) Use your new found grep() prowess to find the names of all the species that have a genus name that starts with the letter ‘C'
genus <- grep(pattern = '[C-C]', x = dung_names)
genus
#3,4,5,6,7,8

#(4) Find all the species where the specific epithet (the second word) starts with the letter ‘r’
genus2 <- grep(pattern = '_r', x = dung_names)
genus2
#5,7,36,38,56,64

#(5) There is a typo in the species names! Replace all the ‘Copis’ genus names with the correct ‘Copris’ spelling
replacement_cop <- gsub(pattern = 'Copis', x = dung_names, replacement = 'Copris')
replacement_cop

#(6) Another genus name has been misspelled - ‘Microcopis’ should be ‘Microcopris’. Fix this too
replacement_micro <- gsub(pattern = 'Microcopis', x = dung_names, replacement = 'Microcopris')
replacement_micro

#(8) Now create a new gsub() command that replaces the one you used in question 5 and 6, so that it is flexible enough to fix both genus names in one go
replacement_genus <- gsub('Copis', 'Copris',
                          gsub('Microcopis','Microcopris', dung_names))
replacement_genus

