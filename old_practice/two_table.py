from bs4 import BeautifulSoup
import requests
import csv
import sys
reload(sys)
sys.setdefaultencoding( "utf-8" )
header = {'User-Agent': 'Mozilla/5.0'}  # Needed to prevent 403 error on Wikipedia

def check_link(url):
    try:
        r = requests.get(url)
        r.raise_for_status()
        r.encoding = r.apparent_encoding
        return r.text
    except:
        print('error')


def get_contents(ulist, rurl):
    soup = BeautifulSoup(rurl, 'html5lib')


    for tr in trs[25]:
        ui = []
        for td in tr:

            ui.append(td.string)
        ulist.append(ui)

def save_contents(urlist):
    try:
        #with open(test2/yxx.txt) as f:
        with open("shareholders", 'w') as f:
            writer = csv.writer(f)
            writer.writerow(['shareholders'])
            for i in range(len(urlist)):
                writer.writerow([urlist[i][1],urlist[i][2],urlist[i][3]])
        # print(urlist)
    except:
        print('ERROR')

def main():
    urli = []
    url = "http://data.eastmoney.com/gdhs/detail/000001.html"
    rs = check_link(url)
    print(rs)
    # get_contents(urli,rs)
    # save_contents(urli)
    # print(urli)
    # print(charData["result"])

main()
