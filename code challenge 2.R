#### question 2，below is my code
library(ggplot2)  
library(readr)   

data <- read_csv("/Users/lihuixiang/Desktop/DON_data.csv")


ggplot(data, aes(x = Treatment, y = DON, color = 'Our label')) +
  geom_boxplot() +  
       xlab("") + 
       ylab("DON (ppm)") 


#### question3

library(ggplot2)
library(readr)

data <- read_csv("/Users/lihuixiang/Desktop/DON_data.csv")
ggplot(data, aes(x = Treatment, y = DON, fill = `Our label`)) +
  stat_summary(
    fun = mean,  
    geom = "bar",
    position = position_dodge(width = 0.8),
  ) +
  stat_summary(
    fun.data = mean_se,  
    geom = "errorbar",
    position = position_dodge(width = 0.8),
    width = 0.2
  ) +
    xlab("") + 
      ylab("DON (ppm)")+
  labs(fill = "Cultivar") 

#### question4

########for boxplot

ggplot(data, aes(x = Treatment, y = DON, fill = `Our label`)) +
  geom_boxplot(position = position_dodge(width = 0.8)) +  
  geom_point(
    aes(fill = `Our label`, group = `Our label`),  
    position = position_jitterdodge(jitter.width = 0.2, dodge.width = 0.8), 
    shape = 21, 
    color = "black", 
    size = 2
  ) +
  xlab("") + 
  ylab("DON (ppm)") +
  labs(fill = "Cultivar")
########for bar chart

ggplot(data, aes(x = Treatment, y = DON, fill = `Our label`)) +
  stat_summary(
    fun = mean,  
    geom = "bar",
    position = position_dodge(width = 0.8)
  ) +
  stat_summary(
    fun.data = mean_se,  
    geom = "errorbar",
    position = position_dodge(width = 0.8),
    width = 0.2
  ) +
  geom_point(
    aes(fill = `Our label`, group = `Our label`),  
    position = position_jitterdodge(jitter.width = 0.2, dodge.width = 0.8), 
    shape = 21, 
    color = "black", 
    size = 2
  ) +
  xlab("") + 
  ylab("DON (ppm)") +
  labs(fill = "Cultivar")

#### question5

cbbPalette <- c("#000000", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")
extended_palette <- colorRampPalette(cbbPalette)(142)
ggplot(data, aes(x = Treatment, y = DON, fill = `Our label`)) +
  stat_summary(
    fun = mean,  
    geom = "bar",
    position = position_dodge(width = 0.8)
  ) +
  stat_summary(
    fun.data = mean_se,  
    geom = "errorbar",
    position = position_dodge(width = 0.8),
    width = 0.2
  ) +
  geom_point(
    aes(fill = `Our label`, group = `Our label`),  
    position = position_jitterdodge(jitter.width = 0.2, dodge.width = 0.8), 
    shape = 21, 
    color = "black", 
    size = 2
  ) +
  scale_fill_manual(values = extended_palette) +  
  xlab("") + 
  ylab("DON (ppm)") +
  labs(fill = "Cultivar")


#### question6

cbbPalette <- c("#000000", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")
extended_palette <- colorRampPalette(cbbPalette)(142)
ggplot(data, aes(x = Treatment, y = DON, fill = `Our label`)) +
  stat_summary(
    fun = mean,  
    geom = "bar",
    position = position_dodge(width = 0.8)
  ) +
  stat_summary(
    fun.data = mean_se,  
    geom = "errorbar",
    position = position_dodge(width = 0.8),
    width = 0.2
  ) +
  geom_point(
    aes(fill = `Our label`, group = `Our label`),  
    position = position_jitterdodge(jitter.width = 0.2, dodge.width = 0.8), 
    shape = 21, 
    color = "black", 
    size = 2
  ) +
  scale_fill_manual(values = extended_palette) +  
  xlab("") + 
  ylab("DON (ppm)") +
  labs(fill = "Cultivar") +
  facet_wrap(~ `Our label`)  

#### question7

cbbPalette <- c("#000000", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")
extended_palette <- colorRampPalette(cbbPalette)(142)
ggplot(data, aes(x = Treatment, y = DON, fill = `Our label`)) +
  stat_summary(
    fun = mean,  
    geom = "bar",
    position = position_dodge(width = 0.8)
  ) +
  stat_summary(
    fun.data = mean_se,  
    geom = "errorbar",
    position = position_dodge(width = 0.8),
    width = 0.2
  ) +
  geom_point(
    aes(fill = `Our label`, group = `Our label`),  
    position = position_jitterdodge(jitter.width = 0.2, dodge.width = 0.8), 
    shape = 21, 
    color = "black", 
    size = 2,
    alpha = 0.3
  ) +
  scale_fill_manual(values = extended_palette) +  
  xlab("") + 
  ylab("DON (ppm)") +
  labs(fill = "Cultivar") +
  facet_wrap(~ `Our label`)  

#### question8

### I choose to use violin plot provided from the website, the codes are below

cbbPalette <- c("#000000", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")
extended_palette <- colorRampPalette(cbbPalette)(142)

ggplot(data, aes(x = Treatment, y = DON, fill = `Our label`)) +
  geom_violin(trim = FALSE, position = position_dodge(width = 0.8), alpha = 0.5) +  # 小提琴图
  geom_jitter(
    aes(fill = `Our label`, group = `Our label`),  
    position = position_jitterdodge(jitter.width = 0.2, dodge.width = 0.8), 
    shape = 21, 
    color = "black", 
    size = 2,
    alpha = 0.3
  ) +
  scale_fill_manual(values = extended_palette) +  
  xlab("") + 
  ylab("DON (ppm)") +
  labs(fill = "Cultivar") +
  facet_wrap(~ `Our label`) + 
  theme_minimal()

####which method i will choose:
###The violin plot provided on the website is suitable for large datasets and visualizing the distribution of DON values in each treatment. 
###In contrast, the boxplot and bar chart are useful for observing the median DON value,
###and comparing mean DON values across treatment groups. 
###Since this study aims to assess changes in DON levels after three different endophyte treatments, 
###the bar chart is the best choice to represent the data.


