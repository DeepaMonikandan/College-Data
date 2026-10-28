install.packages("devtools")
devtools::install_github("jhudsl/collegeIncome")
library(collegeIncome)
data(college)

devtools::install_github("jhudsl/matahari")
library(matahari)
dance_start(value = FALSE, contents = FALSE)

boxplot(median ~ major_category, data = college, las = 2,
        cex.axis = 0.6, main = "Median earnings by major category")

fit <- lm(median ~ major_category, data = college)
anova(fit)
kruskal.test(median ~ factor(major_category), data = college)