import requests

def fetch_api_data():
  url = "https://api.openweathermap.org/data/2.5/weather?q=London"
  response = requests.get(url)
  # Process the response data (assuming JSON)
  data = response.json()
  with open("api_data.json", "w") as f:
    f.write(json.dumps(data))

if __name__ == "__main__":
  fetch_api_data()
