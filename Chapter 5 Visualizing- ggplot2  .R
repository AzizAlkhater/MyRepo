

install.packages("tidyverse")
library(tidyverse)




#National Parks in California
ca <- read_csv("https://raw.githubusercontent.com/OHI-Science/data-science-training/master/data/ca.csv") 

#Acadia National Park
acadia <- read_csv("https://raw.githubusercontent.com/OHI-Science/data-science-training/master/data/acadia.csv")

#Southeast US National Parks
se <- read_csv("https://raw.githubusercontent.com/OHI-Science/data-science-training/master/data/se.csv")

#2016 Visitation for all Pacific West National Parks
visit_16 <- read_csv("https://raw.githubusercontent.com/OHI-Science/data-science-training/master/data/visit_16.csv")

#All Nationally designated sites in Massachusetts
mass <- read_csv("https://raw.githubusercontent.com/OHI-Science/data-science-training/master/data/mass.csv")

## Coronavirus Disease 2019 (COVID-19) Statistics
Covid19 <- read_csv2("https://www.data.gov.qa/explore/dataset/covid-19-cases-in-qatar/download/?format=csv&timezone=Asia/Baghdad&lang=en&use_labels_for_header=true&csv_separator=%3B")

View(visit_16)
head(visit_16)

################################################################3

colnames(Covid19)[colnames(Covid19) == "Number of New Positive Cases in Last 24 Hrs" ] <- "ConfirmedCases"

ggplot(data = Covid19) +
  geom_line(aes(x = Date, y = ConfirmedCases)) 
############################################################ 

ggplot(data = ca) +
  geom_point(aes(x = year, y = visitors, color = park_name)) +
  labs(x = "Year",
       y = "Visitation",
       title = "California National Park Visitation") +
  theme_bw() +
  theme(legend.title=element_blank())


# 1.Using the se dataset, make a scatterplot showing visitation to all national parks
# in the Southeast region with color identifying individual parks.
ggplot(data = se) +
  geom_point(aes(x = year, y = visitors, color = park_name))

# 2. & 3.Change the plot so that color indicates state.
# Customize by adding your own title and theme. You can also change the text sizes and angles.
# Try applying a 45 degree angle to the x-axis. Use your cheatsheet!

ggplot(data = se) +
  geom_point(aes(x = year, y = visitors, color = state)) +
  labs(x = "Year",
       y = "Visitation",
       title = "Southeast States National Park Visitation") +
  theme_light() +
  theme(legend.title = element_blank(),
        axis.text.x = element_text(angle = 45, hjust = 1, size = 14))
 