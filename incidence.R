setwd("~/Projects/IAA/ciencia_de_dados/cancer")

# read csvs incidence
incidence <- read.csv("data/incidence.csv")
incidence_males <- read.csv("data/incidence_males.csv")
incidence_females <- read.csv("data/incidence_females.csv")

## Incidente value - Males X Females 2020
df_incidence_males_females <- data.frame(male = incidence_males$X2020, female = incidence_females$X2020)
mtx_incidence_males_females <- data.matrix(t(df_incidence_males_females))
# Create the input vectors.
colors = c("blue","pink")
countries <- incidence$Label
genders <- c("Male","Female")
barplot(mtx_incidence_males_females, main = "Incidence values - males X females 2020", names.arg = countries, las = 2, col = colors, beside = TRUE)

legend("topright", genders, cex = 0.5, fill = colors)


## Incidente value - Males X Females 2040
df_incidence_males_females <- data.frame(male = incidence_males$Prediction.in.2040, female = incidence_females$Prediction.in.2040)
mtx_incidence_males_females <- data.matrix(t(df_incidence_males_females))
# Create the input vectors.
colors = c("blue","pink")
countries <- incidence$Label
genders <- c("Male","Female")
barplot(mtx_incidence_males_females, main = "Incidence values - males X females 2040", names.arg = countries, las = 2, col = colors, beside = TRUE)

legend("topright", genders, cex = 0.5, fill = colors)


## Incidente value - Males X Females 2020 and 2040
df_incidence_males_females <- data.frame(male = incidence_males$X2020, female = incidence_females$X2020, male2040 = incidence_males$Prediction.in.2040, female2040 = incidence_females$Prediction.in.2040)
mtx_incidence_males_females <- data.matrix(t(df_incidence_males_females))
# Create the input vectors.
colors = c("blue","pink","blue","pink")
countries <- incidence$Label
genders <- c("Male","Female")
barplot(mtx_incidence_males_females, main = "Incidence values - males X females 2020 and 2040", names.arg = countries, las = 2, col = colors, beside = TRUE)

legend("topright", genders, cex = 0.5, fill = colors)



## Incidence percent - Males X Females 2020
percent_male <- (incidence_males$X2020 * 100)/incidence$X2020
percent_female <- (incidence_females$X2020 * 100)/incidence$X2020

df_incidence_males_females <- data.frame(male = percent_male, female = percent_female)
mtx_incidence_males_females <- data.matrix(t(df_incidence_males_females))
# Create the input vectors.
colors = c("blue","pink")
countries <- incidence$Label
genders <- c("Male","Female")
barplot(mtx_incidence_males_females, main = "Incidence percent in each country - Males X Females 2020", names.arg = countries, las = 2, col = colors, beside = TRUE)

legend("topright", genders, cex = 0.5, fill = colors)

## Incidence percent - Males X Females 2040
percent_male <- (incidence_males$Prediction.in.2040 * 100)/incidence$Prediction.in.2040
percent_female <- (incidence_females$Prediction.in.2040 * 100)/incidence$Prediction.in.2040

df_incidence_males_females <- data.frame(male = percent_male, female = percent_female)
mtx_incidence_males_females <- data.matrix(t(df_incidence_males_females))
# Create the input vectors.
colors = c("blue","pink")
countries <- incidence$Label
genders <- c("Male","Female")
barplot(mtx_incidence_males_females, main = "Incidence percent in each country - Males X Females 2040", names.arg = countries, las = 2, col = colors, beside = TRUE)

legend("topright", genders, cex = 0.5, fill = colors)


## Incidence percent - Males X Females 2020 and 2040
percent_male <- (incidence_males$X2020 * 100)/incidence$X2020
percent_female <- (incidence_females$X2020 * 100)/incidence$X2020
percent_male2040 <- (incidence_males$Prediction.in.2040 * 100)/incidence$Prediction.in.2040
percent_female2040 <- (incidence_females$Prediction.in.2040 * 100)/incidence$Prediction.in.2040

df_incidence_males_females <- data.frame(male = percent_male, female = percent_female, male2040 = percent_male2040, female2040 = percent_female2040)
mtx_incidence_males_females <- data.matrix(t(df_incidence_males_females))
# Create the input vectors.
colors = c("blue","pink","blue","pink")
countries <- incidence$Label
genders <- c("Male","Female")
barplot(mtx_incidence_males_females, main = "Incidence percent in each country - Males X Females 2020 and 2040", names.arg = countries, las = 2, col = colors, beside = TRUE)

legend("topright", genders, cex = 0.5, fill = colors)





