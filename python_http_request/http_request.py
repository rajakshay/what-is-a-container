import requests
url = "https://www.google.com"
response = requests.get(url)
if response:
    print("The HTTP response code from " + url + " is " + str(response.status_code))
else:
    print("An error has occurred.")