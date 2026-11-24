install.packages("palmerpenguins")
library(ggplot2)
library(palmerpenguins)
data(penguins)

ggplot(penguins, aes(x = body_mass_g, y = flipper_length_mm)) +
  geom_line()

ggplot(penguins, aes(x = body_mass_g)) +
  geom_histogram(bins = 30)

ggplot(penguins, aes(x = species)) +
  geom_bar()

ggplot(penguins, aes(x = body_mass_g, y = flipper_length_mm,
                     colour = species, size = island)) +
  geom_point()

ggplot(penguins, aes(x = body_mass_g, y = flipper_length_mm,
                     colour = species, shape = island)) +
  geom_point() +
  labs(title = "Masa ciała a długość płetwy",
       x = "Masa ciała [g]",
       y = "Długość płetwy [mm]",
       colour = "Gatunek",
       shape = "Wyspa") +
  theme_minimal()

sessionInfo()