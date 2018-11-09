library("dlstats")
library("ggplot2")
library("dplyr")
library("viridis")

x <- cran_stats(c("gamlss", "bamlss", "VGAM", "R2BayesX"))
x <- x %>%
  filter(end < as.Date("2018-11-08"))
plot <- ggplot(x, aes(end, downloads, group = package, color = package)) + 
  geom_line() +
  theme_bw() +
  labs(x = "Time", y = "Downloads", title = "# downloads of distributional regression R packages")
ggsave(plot, filename = "/Users/stani/ownCloud/distreg.vis presentation/images/030_dl_plot.pdf", width = 16, height = 9, units = "cm")
