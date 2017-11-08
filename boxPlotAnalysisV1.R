
data = read.csv("C:\\Users\\Home\\Desktop\\study\\3학년1학기\\BigDataProject\\CodeNew\\v4\\big5ResTotalSummarized5.csv",stringsAsFactors = TRUE)

#data = data[-9]

#box plot
boxplot(A~age,data = data,  main="Agreeableness to Age",
        xlab = "Age", ylab = "Agreeableness")
out = aov(A~country_age_gender,data = data)
summary(out)
anova(out)
dev.copy(png,filename="Agreeableness to Country_Age_Gender.png", width = 1920, height = 1018);
dev.off ();
graphics.off()

boxplot(C~age,data = data,  main="Conscientiousness to Age",
        xlab = "Age", ylab = "Conscientiousness")
out = aov(A~country_age_gender,data = data)
summary(out)
anova(out)
dev.copy(png,filename="Agreeableness to Country_Age_Gender.png", width = 1920, height = 1018);
dev.off ();
graphics.off()

boxplot(E~age,data = data,  main="Extraversion to Age",
        xlab = "Age", ylab = "Extraversion")
out = aov(A~country_age_gender,data = data)
summary(out)
anova(out)
dev.copy(png,filename="Agreeableness to Country_Age_Gender.png", width = 1920, height = 1018);
dev.off ();
graphics.off()

boxplot(N~age,data = data,  main="Neuroticism to Age",
        xlab = "Age", ylab = "Neuroticism")
out = aov(A~country_age_gender,data = data)
summary(out)
anova(out)
dev.copy(png,filename="Agreeableness to Country_Age_Gender.png", width = 1920, height = 1018);
dev.off ();
graphics.off()

boxplot(O~age,data = data,  main="Openness to Age",
        xlab = "Age", ylab = "Openness")
out = aov(O~age,data = data)
summary(out)
anova(out)
dev.copy(png,filename="Openness to Age.png", width = 1920, height = 1018);
dev.off ();
graphics.off()

