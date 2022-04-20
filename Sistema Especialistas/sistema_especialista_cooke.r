# install.packages("expert")
# https://cran.r-project.org/src/contrib/Archive/expert/expert_1.0-0.tar.gz
library(expert)
x <- list(exp_1 <- list(semente_1 <- c(75, 80, 85),
                        semente_2 <- c(10, 15, 20),
                        int <- c(650, 800, 850)),
          exp_2 <- list(semente_1 <- c(80, 90, 95),
                        semente_2 <- c(25, 30, 35),
                        int <- c(500, 600, 700)),
          exp_3 <- list(semente_1 <- c(65, 70, 80),
                        semente_2 <- c(20, 25, 30),
                        int <- c(450, 650, 800)))
probabilidade <- c(0.1, 0.5, 0.9)

semente_verdadeiro<- c(80, 25)

inf <- expert(x, "cooke", probabilidade, semente_verdadeiro)

inf
hist(inf, col = "blue")

par(bg = "white")
split.screen(c(2,2))
screen(1)
hist(inf, col = "gray", main = "Distribuição agregada")
screen(2)
s = density(c(650, 800, 850))
plot(s, main = "Especialista 1")
polygon(s, col = "blue")
screen(3)
s = density(c(500, 600, 700))
plot(s, main = "Especialista 2")
polygon(s, col = "blue")
screen(4)
s = density(c(450, 650, 800))
plot(s, main = "Especialista 3")
polygon(s, col = "blue")
close.screen(all = TRUE)

summary(inf)

quantile(inf)

mean(inf)

dc = cdf(inf)
plot(dc)

og = ogive(inf)
plot(og)