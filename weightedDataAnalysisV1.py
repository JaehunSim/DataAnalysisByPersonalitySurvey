import pandas as pd

data = pd.read_csv("big5weightedWithAgeSample10.csv", encoding="utf-8", index_col=0)
#데이터 정규분포화
data2 = (data - data.mean()) / (data.max() - data.min())

#데이터 퍼센트로 표시하기
dataByRankPercentile = (data2.rank(pct=True) * 100)
#반올림
dataByRankPercentile2 = dataByRankPercentile.apply(lambda x: round(x,1))
#dataByRankPercentile.to_csv("dataByRankPercentileTotaldWithAgeSample10.csv",encoding="utf-8" )
#dataByRankPercentile2.to_csv("dataByRankPercentileTotal2dWithAgeSample10.csv",encoding="utf-8" )