
library(ggplot2)
library(gtable)
library(grid)

data = read.csv("C:\\Users\\Home\\Desktop\\study\\3학년1학기\\BigDataProject\\CodeNew\\v4\\big5GroupedSortedV4.csv",stringsAsFactors = TRUE)
data2 = read.csv("C:\\Users\\Home\\Desktop\\study\\3학년1학기\\BigDataProject\\CodeNew\\big5ResTotalSummarized5.csv",stringsAsFactors = TRUE)
data3 = read.csv("C:\\Users\\Home\\Desktop\\study\\3학년1학기\\BigDataProject\\CodeNew\\big5GroupedFilteredByCountryV1.csv",stringsAsFactors = TRUE)
data4 = read.csv("C:\\Users\\Home\\Desktop\\study\\3학년1학기\\BigDataProject\\CodeNew\\v4\\big5AgeGroupedMale.csv",stringsAsFactors = TRUE)
data5 = read.csv("C:\\Users\\Home\\Desktop\\study\\3학년1학기\\BigDataProject\\CodeNew\\v4\\big5AgeGroupedFemale.csv",stringsAsFactors = TRUE)
#box plot Agreeableness, ANOVA
boxplot(A~country_age_gender,data = data,  main="Agreeableness to Country_Age_Gender", ylab = "Agreeableness", las=2)
out = aov(A~country_age_gender,data = data)
summary(out)
anova(out)
dev.copy(png,filename="Agreeableness to Country_Age_Gender.png", width = 1920, height = 1018);
dev.off ();
graphics.off()

#box plot Conscientiousness, ANOVA
boxplot(C~country_age_gender,data = data,  main="Conscientiousness to Country_Age_Gender", ylab = "Conscientiousness", las=2)
out = aov(A~country_age_gender,data = data)
summary(out)
anova(out)
dev.copy(png,filename="Conscientiousness to Country_Age_Gender.png", width = 1920, height = 1018);
dev.off ();
graphics.off()

#box plot Extraversion, ANOVA
boxplot(E~country_age_gender,data = data,  main="Extraversion to Country_Age_Gender", ylab = "Extraversion", las=2)
out = aov(A~country_age_gender,data = data)
summary(out)
anova(out)
dev.copy(png,filename="Extraversion to Country_Age_Gender.png", width = 1920, height = 1018);
dev.off ();
graphics.off()

#box plot Neuroticism, ANOVA
boxplot(N~country_age_gender,data = data,  main="Neuroticism to Country_Age_Gender", ylab = "Neuroticism", las=2)
out = aov(N~country_age_gender,data = data)
summary(out)
anova(out)
dev.copy(png,filename="Neuroticism to Country_Age_Gender.png", width = 1920, height = 1018);
dev.off ();
graphics.off()

#box plot Openness, ANOVA
boxplot(O~country_age_gender,data = data,  main="Openness to Country_Age_Gender", ylab = "Openness", las=2)
out = aov(O~country_age_gender,data = data)
summary(out)
anova(out)
dev.copy(png,filename="Openness to Country_Age_Gender.png", width = 1920, height = 1018);
dev.off ();
graphics.off()



#box plot Agreeableness, ANOVA
boxplot(A~gender,data = data2,  main="Agreeableness to gender", ylab = "Agreeableness", las=2)
out = aov(A~gender,data = data2)
summary(out)
anova(out)
dev.copy(png,filename="Agreeableness to gender.png", width = 1920, height = 1018);
dev.off ();
graphics.off()

#box plot Conscientiousness, ANOVA
boxplot(C~gender,data = data2,  main="Conscientiousness to gender", ylab = "Conscientiousness", las=2)
out = aov(C~gender,data = data2)
summary(out)
anova(out)
dev.copy(png,filename="Conscientiousness to gender.png", width = 1920, height = 1018);
dev.off ();
graphics.off()

#box plot Extraversion, ANOVA
boxplot(E~gender,data = data2,  main="Extraversion to gender", ylab = "Extraversion", las=2)
out = aov(E~gender,data = data2)
summary(out)
anova(out)
dev.copy(png,filename="Extraversion to gender.png", width = 1920, height = 1018);
dev.off ();
graphics.off()

#box plot Neuroticism, ANOVA
boxplot(N~gender,data = data2,  main="Neuroticism to gender", ylab = "Neuroticism", las=2)
out = aov(N~gender,data = data2)
summary(out)
anova(out)
dev.copy(png,filename="Neuroticism to gender.png", width = 1920, height = 1018);
dev.off ();
graphics.off()

#box plot Openness, ANOVA
boxplot(O~gender,data = data2,  main="Openness to gender", ylab = "Openness", las=2)
out = aov(O~gender,data = data2)
summary(out)
anova(out)
dev.copy(png,filename="Openness to gender.png", width = 1920, height = 1018);
dev.off ();
graphics.off()


#box plot Agreeableness, ANOVA
boxplot(A~country,data = data3,  main="Agreeableness to Country", ylab = "Agreeableness", las=2)
out = aov(A~country,data = data3)
summary(out)
anova(out)
dev.copy(png,filename="Agreeableness to country.png", width = 1920, height = 1018);
dev.off ();
graphics.off()

#box plot Conscientiousness, ANOVA
boxplot(C~country,data = data3,  main="Conscientiousness to Country", ylab = "Conscientiousness", las=2)
out = aov(C~country,data = data3)
summary(out)
anova(out)
dev.copy(png,filename="Conscientiousness to country.png", width = 1920, height = 1018);
dev.off ();
graphics.off()

#box plot Extraversion, ANOVA
boxplot(E~country,data = data3,  main="Extraversion to Country", ylab = "Extraversion", las=2)
out = aov(E~country,data = data3)
summary(out)
anova(out)
dev.copy(png,filename="Extraversion to country.png", width = 1920, height = 1018);
dev.off ();
graphics.off()

#box plot Neuroticism, ANOVA
boxplot(N~country,data = data3,  main="Neuroticism to Country", ylab = "Neuroticism", las=2)
out = aov(N~country,data = data3)
summary(out)
anova(out)
dev.copy(png,filename="Neuroticism to country.png", width = 1920, height = 1018);
dev.off ();
graphics.off()

#box plot Openness, ANOVA
boxplot(O~country,data = data3,  main="Openness to Country", ylab = "Openness", las=2)
out = aov(O~country,data = data3)
summary(out)
anova(out)
dev.copy(png,filename="Openness to country.png", width = 1920, height = 1018);
dev.off ();
graphics.off()


### Exception
boxplot(A~N,data = data3,  main="Openness to Country", ylab = "Openness", las=2)
out = aov(A~N,data = data3)
summary(out)
anova(out)
dev.copy(png,filename="Openness to country.png", width = 1920, height = 1018);
dev.off ();
graphics.off()


#Age_Male box plot Agreeableness
data4$age <- as.factor(data4$age)
temp <- ggplot(data4, aes(x=age, y=A)) +
    scale_y_reverse() +
    scale_x_discrete(position = "top") +
    geom_boxplot(color="blue") +
    labs(title="Male",x="", y = "Agreeableness(Percentage)", size =20)

temp <-  temp + coord_flip()
temp <-  temp + theme(axis.title.x=element_text(size=20))
temp

data5$age <- as.factor(data5$age)
temp2 <- ggplot(data5, aes(x=age, y= A)) +
    geom_boxplot(color="red") +
    labs(title="Female",x="Age", y = "Agreeableness(Percentage)", size =20)
temp2 <- temp2 + coord_flip()
temp2 <- temp2 + theme(axis.title.y  = element_text(angle=360))
temp2 <-  temp2 + theme(axis.title.x=element_text(size=20))
temp2

g1 <-  ggplotGrob(temp)
g2 <-  ggplotGrob(temp2)
temp3 <-  cbind(g1, g2, size="first")
grid.newpage()
grid.draw(temp3)
dev.copy(png,filename="AgreeablenessToAge.png", width = 1200, height =900 )
dev.off ();
graphics.off()



#Age_Male box plot Conscientiousness
data4$age <- as.factor(data4$age)
temp <- ggplot(data4, aes(x=age, y=C)) +
    scale_y_reverse() +
    scale_x_discrete(position = "top") +
    geom_boxplot(color="blue") +
    labs(title="Male",x="", y = "Conscientiousness(Percentage)", size =20)

temp <-  temp + coord_flip()
temp <-  temp + theme(axis.title.x=element_text(size=20))
temp

data5$age <- as.factor(data5$age)
temp2 <- ggplot(data5, aes(x=age, y= C)) +
    geom_boxplot(color="red") +
    labs(title="Female",x="Age", y = "Conscientiousness(Percentage)", size =20)
temp2 <- temp2 + coord_flip()
temp2 <- temp2 + theme(axis.title.y  = element_text(angle=360))
temp2 <-  temp2 + theme(axis.title.x=element_text(size=20))

g1 <-  ggplotGrob(temp)
g2 <-  ggplotGrob(temp2)
temp3 <-  cbind(g1, g2, size="first")
grid.newpage()
grid.draw(temp3)
dev.copy(png,filename="ConscientiousnessToAge.png", width = 1200, height =900 )
dev.off ();
graphics.off()



#Age_Male box plot Extraversion 
data4$age <- as.factor(data4$age)
temp <- ggplot(data4, aes(x=age, y=E)) +
    scale_y_reverse() +
    scale_x_discrete(position = "top") +
    geom_boxplot(color="blue") +
    labs(title="Male",x="", y = "Extraversion (Percentage)", size =20)

temp <-  temp + coord_flip()
temp <-  temp + theme(axis.title.x=element_text(size=20))
temp

data5$age <- as.factor(data5$age)
temp2 <- ggplot(data5, aes(x=age, y= E)) +
    geom_boxplot(color="red") +
    labs(title="Female",x="Age", y = "Extraversion (Percentage)", size =20)
temp2 <- temp2 + coord_flip()
temp2 <- temp2 + theme(axis.title.y  = element_text(angle=360))
temp2 <-  temp2 + theme(axis.title.x=element_text(size=20))

g1 <-  ggplotGrob(temp)
g2 <-  ggplotGrob(temp2)
temp3 <-  cbind(g1, g2, size="first")
grid.newpage()
grid.draw(temp3)
dev.copy(png,filename="ExtraversionToAge.png", width = 1200, height =900 )
dev.off ();
graphics.off()



#Age_Male box plot Openness
data4$age <- as.factor(data4$age)
temp <- ggplot(data4, aes(x=age, y=O)) +
    scale_y_reverse() +
    scale_x_discrete(position = "top") +
    geom_boxplot(color="blue") +
    labs(title="Male",x="", y = "Openness(Percentage)", size =20)

temp <-  temp + coord_flip()
temp <-  temp + theme(axis.title.x=element_text(size=20))
temp

data5$age <- as.factor(data5$age)
temp2 <- ggplot(data5, aes(x=age, y= O)) +
    geom_boxplot(color="red") +
    labs(title="Female",x="Age", y = "Openness(Percentage)", size =20)
temp2 <- temp2 + coord_flip()
temp2 <- temp2 + theme(axis.title.y  = element_text(angle=360))
temp2 <-  temp2 + theme(axis.title.x=element_text(size=20))

g1 <-  ggplotGrob(temp)
g2 <-  ggplotGrob(temp2)
temp3 <-  cbind(g1, g2, size="first")
grid.newpage()
grid.draw(temp3)
dev.copy(png,filename="OpennessToAge.png", width = 1200, height =900 )
dev.off ();
graphics.off()



#Age_Male box plot Neuroticism
data4$age <- as.factor(data4$age)
temp <- ggplot(data4, aes(x=age, y=N)) +
    scale_y_reverse() +
    scale_x_discrete(position = "top") +
    geom_boxplot(color="blue") +
    labs(title="Male",x="", y = "Neuroticism(Percentage)")

temp <-  temp + coord_flip()
temp <-  temp + theme(axis.title.x=element_text(size=20))

temp

data5$age <- as.factor(data5$age)
temp2 <- ggplot(data5, aes(x=age, y= N)) +
    geom_boxplot(color="red") +
    labs(title="Female",x="Age", y = "Neuroticism(Percentage)")
temp2 <- temp2 + coord_flip()
temp2 <- temp2 + theme(axis.title.y  = element_text(angle=360))
temp2 <-  temp2 + theme(axis.title.x=element_text(size=20))

g1 <-  ggplotGrob(temp)
g2 <-  ggplotGrob(temp2)
temp3 <-  cbind(g1, g2, size="first")
grid.newpage()
grid.draw(temp3)
dev.copy(png,filename="NeuroticismToAge.png", width = 1200, height =900 )
dev.off ();
graphics.off()

