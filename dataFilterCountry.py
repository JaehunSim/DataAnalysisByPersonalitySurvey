# -*- coding: utf-8 -*-
import pandas as pd

data = pd.read_csv("big5ResTotalSummarized2.csv", encoding="utf-8", index_col=0)

temp = data.country.value_counts()
#나라별로 묶었을 때 30개 이상인 것만 남기기
tempIndex = temp[temp>=30].index          
indexFiltered = data.country.apply(lambda x : x in tempIndex)
data = data[indexFiltered]

#data.to_csv("big5GroupedFilteredByCountryV1.csv", encoding="utf-8")