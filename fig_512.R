ggplot(iris, aes(y = Sepal.Length)) +
  geom_boxplot(fill = "lightgreen") +
  labs(title = "Boxplot Sepal Length", y = "Sepal Length")
