library(SDSFoundations)
bike <- BikeData

### Pre-lab ###################################################################
# @TODO move user_id column data as row names starting with user_
row.names(bike) = bike$user_id

# Q1A: What is the age of the 7th rider in the dataset?
q1a = bike$age[7]

# Q1B: How many of the first 10 riders in the dataset ride daily?
q1b = length(which(bike$cyc_freq[1:7] == 'Daily'))

# Q1C: What is the speed of the first female who cycles less than one time per month (in miles/hour)?
q1c = bike$speed[which(bike$gender == 'F' & bike$cyc_fre == 'Less than once a month')[1]]

# RESEARCH QUESTION
student = bike[bike$student == 1,]
stopifnot(is.data.frame(student) == TRUE)

# 1. how many of the cyclists were students, 
rq1 = nrow(student)

# 2. how often did they ride, and 
rq2 = table(student$cyc_freq)

# 3.what was the average distance they rode?
rq3 = round(mean(student$distance), digits=2)

### Lab #######################################################################

# Q1: How many of the cyclists rode daily
daily = bike[bike$cyc_freq == 'Daily',]
q1 = nrow(daily)

# Q2: how many of these riders were male 
q2 = nrow(daily[daily$gender == 'M',])

# Q3: What is the average age of daily riders? (Round to 1 decimal place.)
q3 = round(mean(daily$age), digits=1)

# Q4: What is the average age of the female daily riders? (Round to 1 decimal place)
q4 = round(mean(daily[which(daily$gender == 'F'),]$age), digits=1)

# Q5: What is the average age of the male daily riders? (Round to 1 decimal place.)
q5 = round(mean(daily[which(daily$gender == 'M'),]$age), digits=1)

# Q6: How many daily male riders are age 30 or older?
q6 = length(which(daily$gender == 'M' & daily$age >= 30))
