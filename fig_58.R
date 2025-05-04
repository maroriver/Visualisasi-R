library(ggplot2)
ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
  geom_point() +
  labs(title = "Hubungan Panjang dan Lebar Sepal",
       x = "Panjang Sepal",
       y = "Lebar Sepal")
