# -*- coding: utf-8 -*-
import pandas as pd

data = pd.read_csv("big5ResTotalAgeFiltered2.csv", encoding="utf-8", index_col=0)
                                  
tempList = []

uniqueAge = data.age.unique() #age중에서 unique 한 값들만 뽑아내기 
uniqueAge.sort()

#unique Age중에서 각각의 나이 표본 갯수가 12이상인 것들이면, 그 중에서 10개 셈플링하기 
for i in range(len(uniqueAge)):
    if len(data[data.age==uniqueAge[i]]) >= 12:    
        tempList.append(data[data.age==uniqueAge[i]].sample(10))
    
data2 = pd.concat(tempList)
#data2.to_csv("ageSameDistributedSample10.csv", encoding="utf-8")