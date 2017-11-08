# -*- coding: utf-8 -*-
import pandas as pd

data = pd.read_csv("big5GroupedSortedV2.csv", encoding="utf-8", index_col=0)

data[data.gender==1].to_csv("big5AgeGroupedMale.csv",encoding="utf-8")
data[data.gender==2].to_csv("big5AgeGroupedFemale.csv",encoding="utf-8")
