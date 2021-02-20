setwd("~/Projects/IAA/ciencia_de_dados/cancer")

# read csvs incidence
incidence <- read.csv("data/incidence.csv")
incidence_males <- read.csv("data/incidence_males.csv")
incidence_females <- read.csv("data/incidence_females.csv")

mortality <- read.csv("mortality.csv")
mortality_males <- read.csv("mortality_males.csv")
mortality_females <- read.csv("mortality_females.csv")

## Incidente X Mortality 2020
df_incidence_vs_mortality <- data.frame(incidence = incidence$X2020, mortality = mortality$X2020)
mtx_incidence_vs_mortality <- data.matrix(t(df_incidence_vs_mortality))
# Create the input vectors.
colors = c("green","red")
countries <- incidence$Label
kinds <- c("Incidence","Mortality")
barplot(mtx_incidence_vs_mortality, main = "Incidence X Mortality 2020", names.arg = countries, las = 2, col = colors, beside = TRUE)

legend("topright", kinds, cex = 0.5, fill = colors)


## Incidente X Mortality 2040
df_incidence_vs_mortality <- data.frame(incidence = incidence$Prediction.in.2040, mortality = mortality$Prediction.in.2040)
mtx_incidence_vs_mortality <- data.matrix(t(df_incidence_vs_mortality))
# Create the input vectors.
colors = c("green","red")
countries <- incidence$Label
kinds <- c("Incidence","Mortality")
barplot(mtx_incidence_vs_mortality, main = "Incidence X Mortality 2040", names.arg = countries, las = 2, col = colors, beside = TRUE)

legend("topright", kinds, cex = 0.5, fill = colors)


## Incidente X Mortality 2020 and 2040
df_incidence_vs_mortality <- data.frame(incidence = incidence$X2020, mortality = mortality$X2020, incidence2020 = incidence$Prediction.in.2040, mortality2040 = mortality$Prediction.in.2040)
mtx_incidence_vs_mortality <- data.matrix(t(df_incidence_vs_mortality))
# Create the input vectors.
colors = c("green","red","green","red")
countries <- incidence$Label
kinds <- c("Incidence","Mortality")
barplot(mtx_incidence_vs_mortality, main = "Incidence X Mortality 2020 and 2040", names.arg = countries, las = 2, col = colors, beside = TRUE)

legend("topright", kinds, cex = 0.5, fill = colors)





## Incidente X Mortality Males 2020
df_incidence_vs_mortality <- data.frame(incidence = incidence_males$X2020, mortality = mortality_males$X2020)
mtx_incidence_vs_mortality <- data.matrix(t(df_incidence_vs_mortality))
# Create the input vectors.
colors = c("green","red")
countries <- incidence$Label
kinds <- c("Incidence","Mortality")
barplot(mtx_incidence_vs_mortality, main = "Incidence X Mortality Males 2020", names.arg = countries, las = 2, col = colors, beside = TRUE)

legend("topright", kinds, cex = 0.5, fill = colors)

## Incidente X Mortality Males 2040
df_incidence_vs_mortality <- data.frame(incidence = incidence_males$Prediction.in.2040, mortality = mortality_males$Prediction.in.2040)
mtx_incidence_vs_mortality <- data.matrix(t(df_incidence_vs_mortality))
# Create the input vectors.
colors = c("green","red")
countries <- incidence$Label
kinds <- c("Incidence","Mortality")
barplot(mtx_incidence_vs_mortality, main = "Incidence X Mortality Males 2040", names.arg = countries, las = 2, col = colors, beside = TRUE)

legend("topright", kinds, cex = 0.5, fill = colors)


## Incidente X Mortality Males 2020 and 2040
df_incidence_vs_mortality <- data.frame(incidence = incidence_males$X2020, mortality = mortality_males$X2020, incidence2020 = incidence_males$Prediction.in.2040, mortality2040 = mortality_males$Prediction.in.2040)
mtx_incidence_vs_mortality <- data.matrix(t(df_incidence_vs_mortality))
# Create the input vectors.
colors = c("green","red","green","red")
countries <- incidence$Label
kinds <- c("Incidence","Mortality")
barplot(mtx_incidence_vs_mortality, main = "Incidence X Mortality Males 2020 and 2040", names.arg = countries, las = 2, col = colors, beside = TRUE)

legend("topright", kinds, cex = 0.5, fill = colors)







## Incidente X Mortality Females 2020
df_incidence_vs_mortality <- data.frame(incidence = incidence_females$X2020, mortality = mortality_females$X2020)
mtx_incidence_vs_mortality <- data.matrix(t(df_incidence_vs_mortality))
# Create the input vectors.
colors = c("green","red")
countries <- incidence$Label
kinds <- c("Incidence","Mortality")
barplot(mtx_incidence_vs_mortality, main = "Incidence X Mortality Females 2020", names.arg = countries, las = 2, col = colors, beside = TRUE)

legend("topright", kinds, cex = 0.5, fill = colors)

## Incidente X Mortality Females 2040
df_incidence_vs_mortality <- data.frame(incidence = incidence_females$Prediction.in.2040, mortality = mortality_females$Prediction.in.2040)
mtx_incidence_vs_mortality <- data.matrix(t(df_incidence_vs_mortality))
# Create the input vectors.
colors = c("green","red")
countries <- incidence$Label
kinds <- c("Incidence","Mortality")
barplot(mtx_incidence_vs_mortality, main = "Incidence X Mortality Females 2040", names.arg = countries, las = 2, col = colors, beside = TRUE)

legend("topright", kinds, cex = 0.5, fill = colors)


## Incidente X Mortality Females 2020 and 2040
df_incidence_vs_mortality <- data.frame(incidence = incidence_females$X2020, mortality = mortality_females$X2020, incidence2020 = incidence_females$Prediction.in.2040, mortality2040 = mortality_females$Prediction.in.2040)
mtx_incidence_vs_mortality <- data.matrix(t(df_incidence_vs_mortality))
# Create the input vectors.
colors = c("green","red","green","red")
countries <- incidence$Label
kinds <- c("Incidence","Mortality")
barplot(mtx_incidence_vs_mortality, main = "Incidence X Mortality Females 2020 and 2040", names.arg = countries, las = 2, col = colors, beside = TRUE)

legend("topright", kinds, cex = 0.5, fill = colors)


