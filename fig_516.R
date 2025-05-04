ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width)) +
  geom_point() +
  facet_wrap(~Species) +
  labs(title = "Scatter Plot per Spesies")
