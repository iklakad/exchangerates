#import required modules
import requests
import json
#pass the API parameters
Exchangerate_RawData = requests.get('https://api.exchangeratesapi.io/v1/timeseries?access_key=e220123abca072517e7d5620224964e9&start_date=2024-04-29&end_date=2024-05-29&base=AUD&symbols=AUD,NZD,USD')
Exchangerate_RawData = Exchangerate_RawData.json()
#to view the data
print("The raw data looks as below:\n" ,Exchangerate_RawData)
#save the json file
with open('Exchangerate_RawData.json','w', encoding='utf-8') as file:
    json.dump(Exchangerate_RawData,file,indent=4)

