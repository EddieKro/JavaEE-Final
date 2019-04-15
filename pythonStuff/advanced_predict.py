import lightgbm as lgb
import sys
import datetime
import numpy as np
import pandas as pd

def get_city_index(month,city,cities=pd.read_csv('./data/cities_small.csv')):
	return cities.iloc[month][city].tolist()
arguments = [[0 for x in range(len(sys.argv)-1)],[]]
for i in sys.argv[1:len(sys.argv[1:len(sys.argv)])]:
	arguments[1].append(float(i))
print(arguments)
month = datetime.date.today().month
arguments[1].append(datetime.date.today().month)
city_index = get_city_index(month,sys.argv[-1])
model = lgb.Booster(model_file='advanced_model.txt')

print(model.predict(np.array(arguments))[1]*(city_index/get_city_index(month,'MA-Boston')))