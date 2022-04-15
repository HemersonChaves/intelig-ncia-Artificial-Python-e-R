#install.packages("GA")
library(GA)

f <- function(x) {
    # equacao 2* x + 5 = 20
    resultado <- 2 * x + 5

    if (resultado > 20) {
        return(20 - resultado)
    } else {
        return(resultado - 20)
    }
    resultado = ga(
      "real-value", 
      fitness = f, 
      min=c(-20),
      max=c(20), 
      popSize = 10, 
      maxiter = 20,
      monitor = T,
      names=c("a"))
    
    sumary(resultado)$solution
}