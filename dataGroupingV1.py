# -*- coding: utf-8 -*-
import pandas as pd
import math

data = pd.read_csv("big5ResTotalSummarized4.csv", encoding="utf-8")

#age값들을 10단위로 묶기
data.age = data.age.apply(lambda x: math.floor(x/10)*10)
#age값중 70이하의 값들만 골라내기
data = data[data.age<=70]
#race가 2,7인값들 제외하기
data = data[data.race != 2][data.race != 7]
data = data[data.gender != 3][data.gender != 0]

#country중 9개이하의 값들 제거하기
temp = data.country.value_counts()
countryFiltered = data.country.apply(lambda x : x not in temp[temp<=9].index)
data = data[countryFiltered].dropna()

#race중 0인것 제외하기
data = data[data.race != 0]
#data.to_csv("big5GroupedV1.csv", encoding="utf-8")