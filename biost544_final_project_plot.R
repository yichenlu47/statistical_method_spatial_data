source("biost544_final_project_code")
current_style <- tmap_style("col_blind")

# Figure 1
tm_shape(dt2_complete) + 
  tm_fill("n_med", title = "Number of \nMedicare enrollees", style="quantile", palette = "Reds") +
  tm_borders(alpha = 0.1) +
  tm_layout(legend.position = c("right", "bottom"), legend.title.size = 0.8)

# Figure 2
tm_shape(dt2_complete) + 
  tm_fill("pct_med", title = "Percentage of \nEligible Population", style="quantile", palette = "Blues") +
  tm_borders(alpha = 0.1) +
  tm_layout(legend.position = c("right", "bottom"), legend.title.size = 0.8)

# Figure 3
tm_shape(dt2_complete) + 
  tm_fill("smr", title = "Observed to \nexpected ratio", style="quantile", palette = "YlOrBr") +
  tm_borders(alpha = 0.1) +
  tm_layout(legend.position = c("right", "bottom"), legend.title.size = 0.8)

# Figure 4
hist(dt2_complete$smr, main = "",
     xlab = 'Observed to Expected Ratio of Medicare Enrollees Count', 
     breaks=seq(0, 2, 0.05), col="tan2")

# Figure 5
hist(dt2_complete$pct_med, main = "",
     xlab = 'Percentage Enrolled in Medicare', 
     breaks=seq(0, 1, 0.05), col="deepskyblue")

hist(dt2_complete$pct_med_trans, main = "",
     xlab = 'Arcsine of Percentage Enrolled in Medicare', col="lightskyblue1")

# Figure 6
plot(fit1)

# Figure 7- 9
tm_shape(dt2_complete) + 
  tm_fill("lm_residuals", 
          title = "Residuals", breaks = c(-0.7, -0.5, -0.3, -0.1, 0.1, 0.3, 0.5, 0.8), midpoint = NA, palette = "RdBu") +
  tm_borders(alpha = 0.1) +
  tm_layout(legend.position = c("right", "bottom"), legend.title.size = 0.8)

tm_shape(dt2_complete) + 
  tm_fill("err_residuals", 
          title = "Residuals", breaks = c(-0.7, -0.5, -0.3, -0.1, 0.1, 0.3, 0.5, 0.8), midpoint = NA, palette = "RdBu") +
  tm_borders(alpha = 0.1) +
  tm_layout(legend.position = c("right", "bottom"), legend.title.size = 0.8)

tm_shape(dt2_complete) + 
  tm_fill("lag_residuals", 
          title = "Residuals", breaks = c(-0.7, -0.5, -0.3, -0.1, 0.1, 0.3, 0.5, 0.8), midpoint = NA, palette = "RdBu") +
  tm_borders(alpha = 0.1) +
  tm_layout(legend.position = c("right", "bottom"), legend.title.size = 0.8)

