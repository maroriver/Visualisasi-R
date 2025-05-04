library(ggplot2)
library(reshape2)

# Mengonversi confusion matrix menjadi dataframe
cm_df <- as.data.frame(conf_mat$table)
colnames(cm_df) <- c("Predicted", "Actual", "Freq")

# Membuat heatmap
ggplot(data = cm_df, aes(x = Predicted, y = Actual, fill = Freq)) +
  geom_tile() +
  geom_text(aes(label = Freq), color = "white", size = 5) +
  scale_fill_gradient(low = "lightblue", high = "steelblue") +
  theme_minimal() +
  labs(title = "Visualisasi Confusion Matrix", x = "Prediksi Model", y = "Kelas Aktual")

