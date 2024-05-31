import pandas as pd
import json 
Exchangerate_RawData = open('C://Users//rpyla//OneDrive - Bendigo Kangan Institute//Desktop//python//Exchangerate_RawData.json','r')
# to read json format by parse a JSON string
Exchangerate_RawData = json.loads(Exchangerate_RawData.read())
#to view the keys that exist in json file
print("The data looks as below before pre process:\n",Exchangerate_RawData)
print("List of keys:\n",Exchangerate_RawData.keys())

################Pre Process start##################
#to pick the required information from raw file
Exchangerate_Requiredinformation = Exchangerate_RawData["rates"]
#create dataframe for Exchangerate_Requiredinformation
df_Exchangerate_beforetranspose = pd.DataFrame(Exchangerate_Requiredinformation)
print("The data looks as below before transpose:\n",df_Exchangerate_beforetranspose)
#Transpose Dataframe to  create date as row index
df_Exchangerate_aftertranspose = df_Exchangerate_beforetranspose.T
#rename columns in DataFrame
df_Exchangerate_aftertranspose = df_Exchangerate_aftertranspose.rename(columns = {'AUD':'Australia base rate','NZD':'Newzealand_Exchangerate','USD':'Unitedstates_Exchangerate'})
print("The data looks as below after pre process:\n" ,df_Exchangerate_aftertranspose)
#to create text file from dataframe
custom_delimiter = '"'
df_Exchangerate_aftertranspose.to_csv("C:\\Users\\rpyla\\OneDrive - Bendigo Kangan Institute\\Desktop\\python\\ExchangesRates_May.txt",sep=custom_delimiter)
################Pre Process end##################

################Calculating aggregations start##################

#to find the row index/date on which the exchange rate is minimum
Index_Min_Newzealand_Exchangerate = df_Exchangerate_aftertranspose['Newzealand_Exchangerate'].idxmin()
#to find the minimum exchange rate for a given month of data
Min_Newzealand_Exchangerate = df_Exchangerate_aftertranspose['Newzealand_Exchangerate'].min(axis=0)
print( "The minimum value of Newzealnd Exchange Rate for the given month is ",Min_Newzealand_Exchangerate," on",Index_Min_Newzealand_Exchangerate)

#to find the row index/date on which the exchange rate is maximum
Index_Max_Newzealand_Exchangerate = df_Exchangerate_aftertranspose['Newzealand_Exchangerate'].idxmax()
#to find the maximum exchange rate for a given month of data
Max_Newzealand_Exchangerate = df_Exchangerate_aftertranspose['Newzealand_Exchangerate'].max(axis=0)
print( "The maximum value of Newzealnd Exchange Rate for the given month is ",Max_Newzealand_Exchangerate," on",Index_Max_Newzealand_Exchangerate)

#to find the average exchange rate for a given month of data
Avg_Newzealand_Exchangerate = df_Exchangerate_aftertranspose['Newzealand_Exchangerate'].mean(axis=0)
print( "The average value of Newzealnd Exchange Rate for the given month is ",Avg_Newzealand_Exchangerate)

################Calculating aggregations end##################
