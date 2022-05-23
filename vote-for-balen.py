print("""
   ______ ___ ______ ______ ____  ___ _____ _____ _____
  / ____/<  // ____// ____// __ \<  /|__  /|__  //__  /
 / /     / //___ \ / /    / / / // /  /_ <  /_ <   / /
/ /___  / /____/ // /___ / /_/ // / ___/ /___/ /  / /
\____/ /_//_____/ \____/ \____//_/ /____//____/  /_/
""")

import requests
from bs4 import BeautifulSoup
html_file = "https://localelection.ekantipur.com/pradesh-3/district-kathmandu/kathmandu?lng=eng"

r = requests.get(html_file)
htmlContent = r.content

soup = BeautifulSoup(htmlContent, "lxml")

def balen():
    div = soup.find_all("div", {"class": "candidate-name"}, text='Balendra Shah')
    for each in div:
        vote = each.find_next('div',{'class':'vote-numbers'})
        print("Balendra Shah: "+ vote.text)

def keshav():
    ldiv = soup.find_all("div", {"class": "candidate-name"}, text='Keshav Sthapit')
    for each in ldiv:
        vcount = each.find_next('div',{'class':'vote-numbers'})
        print("Keshav Sthapit: "+ vcount.text)

def shirjana():
    sridiv = soup.find_all("div", {"class": "candidate-name"}, text='Shirjana Shrestha')
    for each in sridiv:
        sricount = each.find_next('div',{'class':'vote-numbers'})
        print("Shirjana Shrestha: "+ sricount.text)

def sunita():
    sdiv = soup.find_all("div", {"class": "candidate-name"}, text='Sunita Dangol')
    for each in sdiv:
        scount = each.find_next('div', {'class': 'vote-numbers'})
        print("Sunita Dangol: "+ scount.text)

def main():
    print("Who will win this election? Balen VS Keshav VS Shrijana?")
    balen()
    keshav()
    shirjana()
    print("")
    print("Deputy Mayor")
    sunita()

main()
