# -*- coding: utf-8 -*-
import pandas as pd

data = pd.read_csv("big5GroupedV1.csv", encoding="utf-8", index_col=0)
#data 중에서 A,C,E,N,O열과 나머지 열들을 열기
data = data[["A","C","E","N","O",data.columns[6],data.columns[5],data.columns[7],data.columns[8]]]

data = data.sort_values(by=["country","age","gender"])
#race 열 빼기
data = data.drop("race", axis=1)
#data의 country, age, gender열을 합치고 remaining columns 지우기
data["country_age_gender"] = data.country + "_" + data.age.apply(str) + "_" + data.gender.apply(str)
data = data.drop(["country","age","gender"], axis=1)

temp = data.groupby("country_age_gender").count().A
#표본이 30개 이상인 것들만 기록하기                   
tempIndex = temp[temp>=30].index
#이상값 제거
for i in tempIndex:
    if "(nu" in i:
        tempIndex = tempIndex.drop(i)
        
#표본이 30개 이상인 것만 남기기
indexFiltered = data.country_age_gender.apply(lambda x : x in tempIndex)
data = data[indexFiltered]



#data.to_csv("big5GroupedSortedV4.csv", encoding="utf-8")

#w = data.groupby(["country","age","gender"])