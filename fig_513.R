ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width)) +
  geom_point(aes(color = Species)) +
  labs(title = "Hubungan Sepal Length dan Sepal Width", x = "Sepal Length", y = "Sepal Width")
