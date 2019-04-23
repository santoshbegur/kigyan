# -*- coding: utf-8 -*-
"""
Created on Sat Apr 20 16:19:14 2019

@author: Santosh
"""

from pandas import read_csv
from pandas import DataFrame,datetime
from matplotlib import pyplot
from statsmodels.tsa.arima_model import ARIMA
from sklearn.linear_model import LinearRegression
from sklearn.metrics import mean_squared_error
import mysql.connector
import pandas as pa
from mysql.connector import Error
import numpy as np

try:
    # Connect to MySQL database
    connection = mysql.connector.connect(host='localhost',
                             database='upcdatamodel',
                             user='root',
                             password='admin@kigyan')

    if connection.is_connected():
       cursor=connection.cursor()
       sql_select_Query = "select distinct store_id from transaction_summary where store_id in (1,2,3,4)"
       cursor.execute(sql_select_Query)
       records = cursor.fetchall()
       for row in records:
           store = row[0]
           print("store:",store)
           sql_select_Query1 = "select distinct l3_id from transaction_summary where l3_id in (100037,100038,100003,100104)"
           cursor.execute(sql_select_Query1)
           records1 = cursor.fetchall()
           for row in records1:
               prod = row[0]
               print ("Product:" ,prod)
               sql_select_Query2 = "select s_week_id, sum(qty) from transaction_summary where store_id = %s and l3_id = %s group by s_week_id "
               cursor.execute(sql_select_Query2,(store,prod))
               records2 = cursor.fetchall()
               df = DataFrame(records2)
               #print (df.shape)
               #df.head()
               X = df[0].values
               Y = df[1].values
               m = len(X)
               #mean_x = np.mean(X)
               mean_x = 36
               mean_y = np.mean(Y)
               print("x :" ,mean_x, "Y:" ,mean_y)
               numer = 0
               denom = 0

               for i in range(m):
                   numer += (X[i] - mean_x) * (Y[i] - mean_y)
                   denom += (X[i] - mean_x) ** 2

               b1 = numer / denom
               b0 = mean_y - (b1 * mean_x)
               print(b1,b0)
               n = 158
               for j in range(n):
                   y_pred = b0 + b1 * j
                       #rmse += (Y[j] - y_pred) ** 2
                       #rmse = np.sqrt(rmse/m)
                   try:
                       sql_select_Query_final = """ INSERT INTO `prediction`(`s_week_id`, `Week_id`, `store_id`, `l3_id`,`qty`) VALUES (%s,%s,%s,%s,%s)"""
                       sql_update_s_week_id = """ update prediction p inner join week_master w set p.week_id=w.week_id where p.s_week_id=w.s_id"""
                       insert_tuple = (j+1,i,store,prod,y_pred)
                       result  = cursor.execute(sql_select_Query_final, insert_tuple)
                       update = cursor.execute(sql_update_s_week_id)
                       connection.commit()
                       print ("Record inserted successfully: ",insert_tuple)
                   except mysql.connector.Error as error:
                       connection.rollback()
                       print("Failed to insert into MySQL table {}".format(error))

except Error as e :
    print ("Error while connecting to MySQL", e)
finally:
    #closing database connection.
    if(connection.is_connected()):
        cursor.close()
        connection.close()
        print("MySQL connection is closed")