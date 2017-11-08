# -*- coding: utf-8 -*-

import json
import pandas as pd
from pandas import DataFrame

#json파일 안의 값을 리스트로 변경해주는 함수
def dictToList(dict1,values):
    #values in strings
    dicIndex = []
    dicList = list(dict1.keys())
    dicList.sort()
    for i in dicList:
        #dicIndex.append(i +": "+ dict1[i][values])
        dicIndex.append(dict1[i][values])
    return dicIndex

#json파일 안의 dictonary의 값들을 리스트로 변경해주는 함수
def dictInsideDictToList(dict1, values):
    #values in strings
    dicIndex = []
    dicList = list(dict1.keys())
    dicList.sort()
    for i in dicList:
        dicListTemp = list(dict1[i][values].keys())
        dicListTemp.sort()
        stringTemp = ""
        for index in range(len(dicListTemp)):
            stringTemp += (dicListTemp[index] +": "+ str(dict1[i][values][dicListTemp[index]])+ ", ")
            stringTemp = stringTemp[:-2]  
        #dicIndex.append(i+ ": "+ stringTemp)
        dicIndex.append(stringTemp)
    return dicIndex

w = pd.read_json("personalities_cut.json")
q = json.load(open("personalities_cut.json"))

big5 = q['big5']
#cfcs = q['cfcs']

des = big5["description"] #'The big five personality traits are the best accep'
dic = big5["dictionary"] #dict of survay
res = big5["responses"] #values in string(numbers), characters less than 2 words(Countries)


dicIndex1 = dictToList(dic, "text")
dicIndex2 = dictInsideDictToList(dic,"values")

#data = DataFrame(res)
#data.to_csv("big5ResTotal.csv", encoding="utf-8")

data = DataFrame(res)
#data.to_csv("big5ResSimpleV1.csv", encoding="utf-8")

