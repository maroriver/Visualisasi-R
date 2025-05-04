library(plotly)
plot_ly(data = iris,
        x = ~Sepal.Length,
        y = ~Sepal.Width,
        color = ~Species,
        type = "scatter",
        mode = "markers")
