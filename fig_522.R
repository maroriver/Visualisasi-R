library(plotly)
plot_ly(iris, x = ~Sepal.Length, y = ~Sepal.Width, z = ~Petal.Length,
        color = ~Species, type = "scatter3d", mode = "markers")
