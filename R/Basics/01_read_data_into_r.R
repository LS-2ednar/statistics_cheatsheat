# 0. Load your dataset to your curent working directory or change the direcotry
# to change the directory:
# Click on Session
# Hit "Set Working Directory" 
# and click on "Choose Directory..."
# or press "Ctrl+Shift+H"

# 1. Load Data into rStudio

data = read.delim('Filename.Filetyp', sep = ',' , header = TRUE , dec = '.' )

# The part inside of the parentesis has some points to look at:
# * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 

# if you are not sure what to do with your data look at it by clicking on the 
# file and open it with a texteditor


# write in '' the filename and .datatyp of the data you want to check

# sep is the seperator, you need to tell r how your data is seperated this can 
# be done by typeing ' ', ',' and, ' ' or anything else.

# header stands for the information if there is a headerline in your datafile
# choose eighter True or False as options here.

# dec tells r what sign is used to use as decimal indication. most of the time 
# this is eigther ',' or '.'

# check your structure after loading the data into r by useing the ommand str:
str(data)

# Here a real example for the Test.csv file is made

data = read.delim('Test.csv', sep = ',', header = TRUE, dec = '.')
data
str(data)
