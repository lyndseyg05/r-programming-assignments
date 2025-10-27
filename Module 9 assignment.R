GermanUnemployment <- read.csv("C:/Users/Polly/Downloads/GermanUnemployment.csv")

# Task 1: Base R Graphics
plot(GermanUnemployment$unadjusted, GermanUnemployment$adjusted,
     main = "Unadjusted vs. Adjusted Unemployment",
     xlab = "Unadjusted (%)",
     ylab = "Adjusted (%)",
     col = "lightgreen",
     pch = 19)

hist(GermanUnemployment$unadjusted,
     main = "Distribution of Unadjusted Unemployment",
     xlab = "Unadjusted (%)",
     col = "pink",
     border = "black")

# Task 2: Lattice Graphics
library(lattice)

GermanUnemployment$group <- ifelse(GermanUnemployment$rownames <= 60, "Group 1", "Group 2")

bwplot(unadjusted ~ group,
       data = GermanUnemployment,
       main = "Unadjusted Unemployment by Group",
       xlab = "Group",
       ylab = "Unadjusted (%)",
       col = "purple")

# Task 3: ggplot2
library(ggplot2)

ggplot(GermanUnemployment, aes(x = unadjusted, y = adjusted)) +
  geom_point(color = "darkgreen") +
  geom_smooth(method = "lm", se = FALSE, color = "black") +
  labs(title = "Unadjusted vs. Adjusted with Trend Line",
       x = "Unadjusted (%)",
       y = "Adjusted (%)") +
  theme_minimal()
