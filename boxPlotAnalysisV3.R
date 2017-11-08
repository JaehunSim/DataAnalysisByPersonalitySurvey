
data1 = read.csv("C:\\Users\\Home\\Desktop\\study\\3학년1학기\\BigDataProject\\CodeNew\\v4\\big5AgeGroupedMale.csv",stringsAsFactors = TRUE)
data2 = read.csv("C:\\Users\\Home\\Desktop\\study\\3학년1학기\\BigDataProject\\CodeNew\\v4\\big5AgeGroupedFemale.csv",stringsAsFactors = TRUE)

#box plot Agreeableness
boxplot(A~age,data = data1,  main="Agreeableness to Age_Male",xlab="Age", ylab = "Agreeableness", las=1, border="blue", cex.axis = 1.5, cex.lab = 1.5)
dev.copy(png,filename="AgreeablenesstoAge_Male.png", width = 1200, height = 900);
dev.off ();
graphics.off()

#box plot Conscientiousness
boxplot(C~age,data = data1,  main="Conscientiousness to Age_Male", xlab="Age", ylab = "Conscientiousness", las=1, border="blue", cex.axis = 1.5, cex.lab = 1.5)
dev.copy(png,filename="ConscientiousnesstoAge_Male.png", width = 1200, height = 900);
dev.off ();
graphics.off()


#box plot Extraversion
boxplot(E~age,data = data1,  main="Extraversion to Age_Male", xlab="Age", ylab = "Extraversion", las=1, border="blue", cex.axis = 1.5, cex.lab = 1.5)
dev.copy(png,filename="ExtraversiontoAge_Male.png", width = 1200, height = 900);
dev.off ();
graphics.off()


#box plot Openness
boxplot(O~age,data = data1,  main="Openness to Age_Male", xlab="Age", ylab = "Openness", las=1, border="blue", cex.axis = 1.5, cex.lab = 1.5)
dev.copy(png,filename="OpennesstoAge_Male.png", width = 1200, height = 900);
dev.off ();
graphics.off()


#box plot Neuroticism
boxplot(N~age,data = data1,  main="Neuroticism to Age_Male",xlab="Age",  ylab = "Neuroticism", las=1, border="blue", cex.axis = 1.5, cex.lab = 1.5)
dev.copy(png,filename="NeuroticismtoAge_Male.png", width = 1200, height = 900);
dev.off ();
graphics.off()



#box plot Agreeableness
boxplot(A~age,data = data2,  main="Agreeableness to Age_Female", xlab="Age",ylab =  "Agreeableness", las=1, border="red", cex.axis = 1.5, cex.lab = 1.5)
dev.copy(png,filename="AgreeablenesstoAge_Female.png", width = 1200, height = 900);
dev.off ();
graphics.off()

#box plot Conscientiousness
boxplot(C~age,data = data2,  main="Conscientiousness to Age_Female", xlab="Age", ylab = "Conscientiousness", las=1, border="red", cex.axis = 1.5, cex.lab = 1.5)
dev.copy(png,filename="ConscientiousnesstoAge_Female.png", width = 1200, height = 900);
dev.off ();
graphics.off()


#box plot Extraversion
boxplot(E~age,data = data2,  main="Extraversion to Age_Female",xlab="Age", ylab =  "Extraversion", las=1, border="red", cex.axis = 1.5, cex.lab = 1.5)
dev.copy(png,filename="ExtraversiontoAge_Female.png", width = 1200, height = 900);
dev.off ();
graphics.off()


#box plot Openness
boxplot(O~age,data = data2,  main="Openness to Age_Female", xlab="Age", ylab =  "Openness", las=1, border="red", cex.axis = 1.5, cex.lab = 1.5)
dev.copy(png,filename="OpennesstoAge_Female.png", width = 1200, height = 900);
dev.off ();
graphics.off()


#box plot Neuroticism
boxplot(N~age,data = data2,  main="Neuroticism to Age_Female",  xlab="Age", ylab = "Neuroticism", las=1, border="red", cex.axis = 1.5, cex.lab = 1.5)
dev.copy(png,filename="NeuroticismtoAge_Female.png", width = 1200, height = 900);
dev.off ();
graphics.off()

