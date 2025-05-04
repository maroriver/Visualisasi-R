ggplot(iris, aes(x = Sepal.Length)) +
  geom_histogram(binwidth = 0.3, fill = "steelblue", color = "black") +
  theme_minimal() +
  labs(title = "Distribusi Sepal Length", x = "Sepal Length", y = "Frekuensi")
