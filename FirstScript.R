# Getting started with R
dir.create("data")
dir.create("data_output")
dir.create("fig-output")
# Get SAFI data
> download.file(
  +     "https://raw.githubusercontent.com/datacarpentry/r-socialsci/main/episodes/data/SAFI_clean.csv",
  +     "data/SAFI_clean.csv", mode = "wb")
# Play with R
7+5
12/7

# Create objects
area_hectare <- 1.0

area_hectare * 2.47

area_hectare <- 2.5
area_hectare * 2.47

area_acres <- area_hectare * 2.47
area_hectare <- 50

remove(area_hecatare)

# Functions
sqrt(9)
sqrt(17)

round(3.14159)
?round()
round(3.14159, 3)
round(3.14159, 2)
round(digits=2,x=3.14159)

# Vectors
hh_members <- c(3,7,18,6)
hh_members
c(5, 19, 20, 36)
wall_type <- c("muddaub","burntbrick","sunbrick")

length(hh_members)
length(wall_type)

class(hh_members)
class(wall_type)

wall_type2 <- c(wall_type,"wood", wall_type)
wall_type2

num_char <- c(1,2,3,"a")
num_char
class(num_char)

test<- c(1,2,3,NA)

num_logical <- c(1,2,3,TRUE)
class(num_logical)
num_logical

char_logical <-c("a", "b", "c", TRUE)
class(char_logical)

tricky <-c(1,2,3,"4")
class(tricky)

combined_logical <- c(num_logical, char_logical)
combined_logical
num_logical
char_logical
combined_logical

# Subsetting
wall_type[3]
walltype2[5]
remove(walltype2)
wall_type2[5]
wall_type2[c(3,4)]
wall_type2[c(5,4,1)]
wall_type2[-7]
wall_type2[-c(5,4,1)]
length(wall_type2)

wall_type3 <- wall_type2[-c(5,4,1)]

# Conditional

hh_members [hh_members>5 & hh_members < 10]
hh_members [hh_members>5 & hh_members == 18]
hh_members [hh_members == 18]

# Missing data

# Ignoring NAs in arithmetic functions
rooms <- c(2,1,1,NA,7)
mean(rooms, na.rm=TRUE)
max(rooms, na.rm=TRUE)

# Removing NAs by subsetting
rooms_no_na <- rooms[-4]

! is.na(rooms)
rooms[! is.na(rooms)]
rooms_no_na <- rooms[! is.na(rooms)]

# omitting NAs
room_no_na <- na.omit(rooms)
room_no_na

rooms[complete.cases(rooms)]

# installing tidyverse
install.packages("tidyverse")
library(tidyverse)

interviews <- read_csv("data/SAFI_clean.csv")
class(interviews)
dim(interviews)

nrow(interviews)
ncol(interviews)
names(interviews)

head(interviews)
tail(interviews)

glimpse(interviews)

interviews [1:10,1:5]
last_row <- interviews[131,]
interviews ["village"]
interviews [["village"]]
interviews [["years_liv"]]

mean (interviews [["years_liv"]])

interviews$village
interviews$years_liv
interviews$no_membrs-interviews$years_liv

# Rooms task week 9 assignment

rooms <- c(1, 5, 2, 3, 1, NA, 3, 1, 3, 2, NA, 1, 8, 3, 1, 4, NA, 1, 3, 1, 2, 1, 7, 1, NA, 4, 3 ,1 ,7 ,2 ,1 ,NA ,1, 1, 3)
rooms <- rooms [complete.cases(rooms)]
rooms [rooms>2]
rooms_more_than_two <- c(5,3,3,3,8,3,4,3,7,4,3,7,3)
length(rooms_more_than_two)
median(rooms)
