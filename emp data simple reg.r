ed <- emp_data
summary(ed)
plot(ed$Salary_hike,ed$Churn_out_rate)
cor(ed$Salary_hike,ed$Churn_out_rate)
reg <- lm(ed$Churn_out_rate~ed$Salary_hike)
summary(reg)
confint(reg,level = 0.95)
predict(reg,interval = 'confidence')
attach(ed)
reg.log <- lm(log(Churn_out_rate)~Salary_hike)
summary(reg.log)
confint(reg.log,level = 0.95)
predict(reg.log,interval = 'confidence')
reg.log1 <- lm(Churn_out_rate~log(Salary_hike))
summary(reg.log1)
confint(reg.log1,level = 0.95)
predict(reg.log1,interval = 'confidence')