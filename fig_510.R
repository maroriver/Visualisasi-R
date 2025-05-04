library(lattice)
xyplot(Sepal.Width ~ Sepal.Length | Species, data = iris,
       layout = c(3,1),
       main = "Perbandingan Sepal per Spesies")
