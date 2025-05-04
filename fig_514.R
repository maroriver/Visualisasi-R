ggplot(iris, aes(x = Species, y = Sepal.Length)) +
  stat_summary(fun = mean, geom = "bar", fill = "orange") +
  labs(title = "Rata-rata Sepal Length per Spesies", y = "Mean Sepal Length")
