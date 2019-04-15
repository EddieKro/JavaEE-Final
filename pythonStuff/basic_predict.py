import lightgbm as lgb
import sys
import datetime
import numpy as np
import pandas as pd

def get_city_index(month,city,cities=pd.read_csv('/home/tomato/IdeaProjects/JavaEE-Final2/pythonStuff/data/cities_small.csv')):
	return cities.iloc[month][city].tolist()
arguments = [[0 for x in range(9)],[]]
for i in sys.argv[1:9]:
	arguments[1].append(float(i))
month = datetime.date.today().month
arguments[1].append(datetime.date.today().month)
city_index = get_city_index(month,sys.argv[-1])
model = lgb.Booster(model_file='/home/tomato/IdeaProjects/JavaEE-Final2/pythonStuff/basic_model.txt')

print(model.predict(np.array(arguments))[1]*(city_index/get_city_index(month,'MA-Boston')))