# Step 1: Data import

library(readxl)
data1 <- read_excel("OD_data.xlsx", range = "B28:CU317")
data1 <- select(data1, -2)

#Step 2: Data tidying

data1 <- data1 %>%
  mutate(Time = Time / 60) %>%
  pivot_longer(-Time, names_to = "Well", values_to = "OD")

#Step 3
