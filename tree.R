library(ggimage)
library(ggtree)
library(TDbook)
library(ggtree)
library(tidyverse)
library(ape)

tree <- read.tree("accessory_binary_genes.fa.newick")
metadata <- read.table(file = "SGB985_metadata.tsv", header = TRUE, sep = "\t")

p <- ggtree(tree) %<+% metadata 


unique_smoking_states <- unique(metadata$smoking_state)
shape_values <- setNames(21:23, unique_smoking_states)  
unique_study_groups <- unique(metadata$study_group)
color_palette <- rainbow(length(unique_study_groups))  
names(color_palette) <- unique_study_groups


p + geom_tiplab(aes(label = metadat$magID)) +
  geom_tippoint(aes(shape = smoking_state, color = study_group)) +
  scale_fill_manual(values = color_palette) + 
  scale_shape_manual(values = shape_values) +
  theme(legend.position = "right") + 
  geom_point(data = subset(fortify(tree, only.node = TRUE), node == 51),
               aes(x = x, y = y), shape = 20, size = 5, fill = "red") +
  guides(size = FALSE) 

  