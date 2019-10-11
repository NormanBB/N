#睡前故事

import requests 
import re
import time
from bs4 import BeautifulSoup
from fake_useragent import UserAgent
import random



def start(url,headers):
    start_response = requests.get(url,headers=headers)
    start_soup = BeautifulSoup(start_response.content.decode("utf-8"), "lxml")
    start_h2_str = str(start_soup.find(name = 'div',attrs={'class':'content'}).find_all('h2'))
    h2_find_result = re.findall('href=\"(.+?)\"',start_h2_str)
    return h2_find_result
	
def get_gushi(h2_find_result,headers,t):
	t = t
	count_list = [1,2,3,4,5,6]
	count = iter(count_list)
	for i in h2_find_result:
		gushi_respnse = requests.get(i,headers=headers)
		gushi_soup = BeautifulSoup(gushi_respnse.content.decode("utf-8"), "lxml")
		gushi_textlist = gushi_soup.find(name = 'div',attrs={'class':'entry'}).find_all('p')
		lianjie_xuhao = next(count)
		print('正在获取第{0}页第{1}个链接'.format(t,lianjie_xuhao))
		for text in gushi_textlist:
			gushi_text=text.get_text() 
			f = open(str('text')+str(t)+str('_')+str(lianjie_xuhao)+str('.txt'),'a')
			f.write(gushi_text)
			f.write('\n')
		f.close		
		time.sleep(1)	

def Get_POOLS():
	headers = {'User-Agent': UserAgent().random}
	html = requests.get(url='https://www.xicidaili.com/nn/', headers=headers)
	pools = re.findall(r'<td>(.+?)</td>', html.text)[0:499:5]
	return pools
	
def Get_Headers(pools):
	Random_IP = random.choice(pools)
	headers = {	 
		'User-Agent':UserAgent().random,
		'X-Forwarded-For':Random_IP,
		}
	return headers

if __name__ == '__main__':	
	pools = Get_POOLS()
	for t in range(1,9):
		start_url = str('http://www.qlgushi.com/a/1/')+str(t)
		headers=Get_Headers(pools)
		s= start(start_url,headers)
		get_gushi(s,headers,t)





