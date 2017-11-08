# -*- coding: utf-8 -*-
import pandas as pd

data = pd.read_csv("big5ResTotalAgeFiltered2.csv", encoding="utf-8", index_col=0)
data2 = pd.read_csv("dataByRankPercentileTotal2dWithAgeSample10.csv", encoding="utf-8", index_col=0)

result = pd.concat([data,data2], axis=1) #concatenation of data and data2 by axis=1

#change the column's order, pick up some of the columns from result
fdata = result[["A","C","E","N","O",result.columns[50],result.columns[51],result.columns[52],result.columns[53],result.columns[54],result.columns[55],result.columns[56]]]

#fdata.to_csv("big5ResTotalSummarized2.csv", encoding="utf-8")
