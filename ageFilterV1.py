# -*- coding: utf-8 -*-
import pandas as pd

data = pd.read_csv("big5ResTotal.csv", encoding="utf-8", index_col=0)

data = data.sort(columns="age")

# drop index for age ranging (100 to 1000) or (larger than 2020)
data = data.drop((data[((data.age<1000) & (data.age>100)) | (data.age>2020)].index))

#change the age value as in 10 to 100 scale
data.age[data.age>1000] = (data.age[data.age>1000] - 2015) * -1
        
dAge = data.age.value_counts()
dAge2 = dAge.sort_index()

data = data.sort()

"save data as big5ResTotalAgeFiltered2.csv"
data.to_csv("big5ResTotalAgeFiltered2.csv", encoding="utf-8") 
