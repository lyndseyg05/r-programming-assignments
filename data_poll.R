# Create vectors
Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bernie")
ABC_poll   <- c(  4,      62,      51,    21,      2,        14,       15)
CBS_poll   <- c( 12,      75,      43,    19,      1,        21,       19)

# Combine into a data frame
df_polls <- data.frame(Name, ABC_poll, CBS_poll)

# Inspect data frame
str(df_polls)
head(df_polls)

# Compute summary statistics 
mean_ABC <- mean(df_polls$ABC_poll)
median_ABC <- median(df_polls$ABC_poll)
range_ABC <- range(df_polls$ABC_poll)

mean_CBS <- mean(df_polls$CBS_poll)
median_CBS <- median(df_polls$CBS_poll)
range_CBS <- range(df_polls$CBS_poll)

df_polls$Diff <- df_polls$CBS_poll - df_polls$ABC_poll

mean_ABC; median_ABC; range_ABC
mean_CBS; median_CBS; range_CBS

