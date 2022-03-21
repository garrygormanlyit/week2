date_col <- c("10/15/18", "01/11/18", "10/21/18", "10/28/18", "05/01/18")
class(date_col)
country_col <- c("US", "US", "IRL", "IRL", "IRL")
gender_col <- c("M", "F", "F", "M", "F")
age_col <- c(32, 45, 25, 39, NA)
q1_col <- c(5,3,3,3,2)
q2_col <- c(4,5,5,3,2)
q3_col <- c(5,2,5,4,1)
q4_col <- c(5,5,5,NA,2) # NA = not available (missing data)
q5_col <- c(5,5,2,NA,1)

managers_data <- data.frame(date_col, 
                            country_col, 
                            gender_col, 
                            age_col, 
                            q1_col, 
                            q2_col, 
                            q3_col, 
                            q4_col, 
                            q5_col)

str(managers_data)# shows the logical structure. obs are observations (rows)

column_names <- c("Dates", "Country", "Gender", "Age", "Q1", "Q2", "Q3", "Q4", "Q5")

colnames(managers_data) <- column_names

head(managers_data) # prints the first five rows of the df

managers_data$Age[managers_data$Age == 99] <- NA # if age == 99 replace with NA

managers_data

# create age-cat column with young, middleages and old
managers_data$age_cat[managers_data$Age < 25] <- "Young"
managers_data$age_cat[managers_data$Age >= 25 & managers_data$Age < 44] <- "Middle aged"
managers_data$age_cat[managers_data$Age >= 44] <- "elder"

managers_data

# recode age-cat to ordinal
managers_data$age_cat[managers_data$Age < 25] <- 1
managers_data$age_cat[managers_data$Age >= 25 & managers_data$Age < 44] <- 2
managers_data$age_cat[managers_data$Age >= 44] <- 3

managers_data

# summary column
managers_data$row_summary[managers_data$Age < 25 & managers_data$Country == "US"] <- "Young Yank"
managers_data$row_summary[managers_data$Age >= 25 & managers_data$Age < 44 & managers_data$Country == "US"] <- "Middle aged yank"
managers_data$row_summary[managers_data$Age >= 44 & managers_data$Country == "US"] <- "Old Yank"
managers_data$row_summary[managers_data$Age < 25 & managers_data$Country == "IRL"] <- "Young Paddy"
managers_data$row_summary[managers_data$Age >= 25 & managers_data$Age < 44 & managers_data$Country == "IRL"] <- "Middle aged Paddy"
managers_data$row_summary[managers_data$Age >= 44 & managers_data$Country == "IRL"] <- "Old Paddy"

managers_data

managers_data$an_sum[managers_data$Age > 0] <- paste(managers_data["Q1"], managers_data["Q2"], managers_data["Q3"])

managers_data




