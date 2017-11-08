# -*- coding: utf-8 -*-
import pandas as pd
from pandas import DataFrame
from sklearn.decomposition import FactorAnalysis, PCA

data = pd.read_csv("big5ResSimpleV1.csv", encoding="utf-8", index_col=0)
#A,C,E,N,O 열만 따로 뽑아내기
data2 = data.iloc[:,:50]
factor = FactorAnalysis(n_components=5).fit(data2)

#factor Analysis 결과값 저장하기
fAResult = (pd.DataFrame(factor.components_,columns=data2.columns))
#fAResult.to_csv("fAResult.csv", encoding="utf-8")

data = pd.read_csv("big5ResTotal.csv", encoding="utf-8", index_col=0)
data2 = data.iloc[:,:50]
weightOfFactors = pd.read_csv("big5weightsWithAgeSample10.csv", index_col=0)

#기존 response 값에서 Fator Analysis를 통해 구한 weight를 곱해주고 저장하기
weightedResponseList = []
for personIndex in range(len(data2.index)):
    w  = data2.iloc[personIndex,:]
    tempList = []
    for i in range(len(w)):
        tempList.append(w[i] * weightOfFactors.values[i][0])
    weightedResponseList.append(tempList)

#weight를 곱해준 DataFrame
weightedResponseDF = DataFrame(weightedResponseList, columns = data2.columns)
#A,C,E,N,O별로 weighted response 모아서 합 구하기
big5weightedDF = weightedResponseDF.groupby(by=(lambda x: x[0]),axis=1).sum()
#big5weightedDF.to_csv("big5weightedPart.csv", encoding="utf-8")

