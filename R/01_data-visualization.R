# Setup -----------------
library(tidyverse)
library(palmerpenguins)
library(ggthemes)

# View the data
head(penguins)

# ggplot basics -------------
# Basic plot
ggplot(                                    # ggplot function to define data and
  data = penguins,                         # global aesthetics
  mapping = aes(
    x = flipper_length_mm,
    y = body_mass_g
  )
) +
  geom_point(                              # geom objects define how data 
    mapping = aes(                         # represented
      colour = species,
      shape = species
    )
  ) +
  geom_smooth(method = "lm") +
  labs(
    title = "Body mass and flipper length",
    subtitle = "Dimensions for Adelie, Chinstrap and Gentoo Penguins",
    x = "Flipper length (mm)",
    y = "Body mass (g)",
    colour = "Species",
    shape = "Species"
  ) +
  scale_color_colorblind()                 # colourblind safe colours function

# Exercises -----------
# How many rows and columns are in penguins?
nrow(penguins)
ncol(penguins)

# What does the bill_depth_mm variable in the penguins data frame describe?
# Read the help for ?penguins to find out.
?penguins

# Make a scatterplot of bill_depth_mm vs. bill_length_mm. That is, make a scatterplot with
# bill_depth_mm on the y-axis and bill_length_mm on the x-axis. Describe the relationship
# between these two variables.