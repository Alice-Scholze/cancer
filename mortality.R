setwd("~/Projects/IAA/ciencia_de_dados/cancer")

# read csvs mortality
mortality <- read.csv("data/mortality.csv")
mortality_males <- read.csv("data/mortality_males.csv")
mortality_females <- read.csv("data/mortality_females.csv")

## Incidente value - Males X Females 2020
df_mortality_males_females <- data.frame(male = mortality_males$X2020, female = mortality_females$X2020)
mtx_mortality_males_females <- data.matrix(t(df_mortality_males_females))
# Create the input vectors.
colors = c("blue","pink")
countries <- mortality$Label
genders <- c("Male","Female")
barplot(mtx_mortality_males_females, main = "mortality values - males X females 2020", names.arg = countries, las = 2,col = colors, beside = TRUE)

legend("topright", genders, cex = 0.5, fill = colors)


## Incidente value - Males X Females 2040
df_mortality_males_females <- data.frame(male = mortality_males$Prediction.in.2040, female = mortality_females$Prediction.in.2040)
mtx_mortality_males_females <- data.matrix(t(df_mortality_males_females))
# Create the input vectors.
colors = c("blue","pink")
countries <- mortality$Label
genders <- c("Male","Female")
barplot(mtx_mortality_males_females, main = "mortality values - males X females 2040", names.arg = countries, las = 2,col = colors, beside = TRUE)

legend("topright", genders, cex = 0.5, fill = colors)


## Incidente value - Males X Females 2020 and 2040
df_mortality_males_females <- data.frame(male = mortality_males$X2020, female = mortality_females$X2020, male2040 = mortality_males$Prediction.in.2040, female2040 = mortality_females$Prediction.in.2040)
mtx_mortality_males_females <- data.matrix(t(df_mortality_males_females))
# Create the input vectors.
colors = c("blue","pink","blue","pink")
countries <- mortality$Label
genders <- c("Male","Female")
barplot(mtx_mortality_males_females, main = "mortality values - males X females 2020 and 2040", names.arg = countries, las = 2,col = colors, beside = TRUE)

legend("topright", genders, cex = 0.5, fill = colors)



## mortality percent - Males X Females 2020
percent_male <- (mortality_males$X2020 * 100)/mortality$X2020
percent_female <- (mortality_females$X2020 * 100)/mortality$X2020

df_mortality_males_females <- data.frame(male = percent_male, female = percent_female)
mtx_mortality_males_females <- data.matrix(t(df_mortality_males_females))
# Create the input vectors.
colors = c("blue","pink")
countries <- mortality$Label
genders <- c("Male","Female")
barplot(mtx_mortality_males_females, main = "mortality percent in each country - Males X Females 2020", names.arg = countries, las = 2,col = colors, beside = TRUE)

legend("topright", genders, cex = 0.5, fill = colors)

## mortality percent - Males X Females 2040
percent_male <- (mortality_males$Prediction.in.2040 * 100)/mortality$Prediction.in.2040
percent_female <- (mortality_females$Prediction.in.2040 * 100)/mortality$Prediction.in.2040

df_mortality_males_females <- data.frame(male = percent_male, female = percent_female)
mtx_mortality_males_females <- data.matrix(t(df_mortality_males_females))
# Create the input vectors.
colors = c("blue","pink")
countries <- mortality$Label
genders <- c("Male","Female")
barplot(mtx_mortality_males_females, main = "mortality percent in each country - Males X Females 2040", names.arg = countries, las = 2,col = colors, beside = TRUE)

legend("topright", genders, cex = 0.5, fill = colors)


## mortality percent - Males X Females 2020 and 2040
percent_male <- (mortality_males$X2020 * 100)/mortality$X2020
percent_female <- (mortality_females$X2020 * 100)/mortality$X2020
percent_male2040 <- (mortality_males$Prediction.in.2040 * 100)/mortality$Prediction.in.2040
percent_female2040 <- (mortality_females$Prediction.in.2040 * 100)/mortality$Prediction.in.2040

df_mortality_males_females <- data.frame(male = percent_male, female = percent_female, male2040 = percent_male2040, female2040 = percent_female2040)
mtx_mortality_males_females <- data.matrix(t(df_mortality_males_females))
# Create the input vectors.
colors = c("blue","pink","blue","pink")
countries <- mortality$Label
genders <- c("Male","Female")
barplot(mtx_mortality_males_females, main = "mortality percent in each country - Males X Females 2020 and 2040", names.arg = countries, las = 2,col = colors, beside = TRUE)

legend("topright", genders, cex = 0.5, fill = colors)





