# 1: Import Assignment 6 Data
# Opens a file chooser so you can select the dataset
# Reads file into a data frame called student6
student6 <- read.csv(file.choose(), header = TRUE, stringsAsFactors = FALSE)

# Load plyr and compute mean Grade by Sex
library(plyr)

# Calculates average Grade for each gender
gender_mean <- ddply(
  student6,
  "Sex",
  summarise,
  GradeAverage = mean(Grade, na.rm = TRUE)
)

# Write grouped means to a text file
# Saves the gender_mean data frame to a tab-delimited text file
# Excludes row names to keep file clean
write.table(
  gender_mean,
  file = "gender_mean.txt",
  sep = "\t",
  row.names = FALSE
)

# 2: Filter Names Containing “i” or “I”
# Filters original dataset to include only rows where Name contains "i"
# Uses grepl() to search for "i" in a case-insensitive way
i_students <- subset(
  student6,
  grepl("i", Name, ignore.case = TRUE)
)

# Write just the names to a CSV
# Extracts only Name column from filteres data
# Removes row numbers and quotes for cleaner formatting
write.csv(
  i_students$Name,
  file = "i_students.csv",
  row.names = FALSE,
  quote = FALSE
)

# 3: Export full filtered dataset to a CSV
# Saves entire filtered data frame to a CSV file
# Includes all columns like Name, Age, Sex, and Grade
write.csv(
  i_students,
  file = "i_students_full.csv",
  row.names = FALSE
)

# Step 7: Confirm files exist in working directory
# Lists all files in current working directory that match ouput filenames 
list.files(pattern = "gender_mean.txt|i_students.csv|i_students_full.csv")

