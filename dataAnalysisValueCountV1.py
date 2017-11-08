# -*- coding: utf-8 -*-
import pandas as pd
data = pd.read_csv("big5ResTotal.csv", encoding="utf-8", index_col=0)

dAge = data.age.value_counts() #나이별
dAge2 = dAge.sort_index() 

dCountry = data.country.value_counts() #나라별

dEngnat = data.engnat.value_counts() #영어 모국어 여부별

dGender = data.gender.value_counts() # 성별

dHand = data.hand.value_counts() #손잡이별

dRace = data.race.value_counts() #인종별
dRace2 = dRace.sort_index() 

dSource = data.source.value_counts() #소스별