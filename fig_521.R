# Memuat pustaka
library(ggplot2)
library(rpart)

# Menggunakan dua fitur utama
data <- iris[, c("Sepal.Length", "Sepal.Width", "Species")]

# Membuat model decision tree
model <- rpart(Species ~ Sepal.Length + Sepal.Width, data = data, method = "class")

# Membuat grid data untuk prediksi seluruh area plot
x_min <- min(data$Sepal.Length) - 0.5
x_max <- max(data$Sepal.Length) + 0.5
y_min <- min(data$Sepal.Width) - 0.5
y_max <- max(data$Sepal.Width) + 0.5

grid <- expand.grid(
  Sepal.Length = seq(x_min, x_max, by = 0.05),
  Sepal.Width = seq(y_min, y_max, by = 0.05)
)

# Prediksi seluruh grid menggunakan model
grid$Species <- predict(model, newdata = grid, type = "class")

# Plot Decision Boundary
ggplot() +
  geom_tile(data = grid, aes(x = Sepal.Length, y = Sepal.Width, fill = Species), alpha = 0.3) +
  geom_point(data = data, aes(x = Sepal.Length, y = Sepal.Width, color = Species), size = 2) +
  labs(
    title = "Decision Boundary pada Dataset Iris",
    x = "Sepal Length",
    y = "Sepal Width"
  ) +
  theme_minimal()
