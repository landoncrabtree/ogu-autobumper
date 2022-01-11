# Setup Instructions
This tool requires Python3 to run. Install it first here: https://www.python.org/downloads/. Please follow Python's official instructions for your operating system. Then, install the latest version of Firefox here: https://www.mozilla.org/en-US/firefox/new/. 

## macOS
1. Install Python3 and the latest version of Firefox.
2. Unzip `religion-autobumper.zip`
3. Make `/religion-autobumper` your active directory via Terminal with `cd religion-autobumper`
4. Install dependencies via `python3 -m pip install -r requirements.txt`
5. Configure `config.py`
6. Run the tool with `python3 main.py`

#### macOS Catalina and Above:
Apple introduced a new notarization feature. You may get the message: "'mac_m1_geckodriver' executable may have wrong permissions.". To solve this, do the following:
1. `chmod a+x <driverFile>`
2. `xattr -r -d com.apple.quarantine <driverFile>`

## Linux
1. Install Python3 and the latest version of Firefox.
2. Unzip `religion-autobumper.zip`
3. Make `/religion-autobumper` your active directory via Terminal with `cd religion-autobumper`
4. Install dependencies via `python3 -m pip install -r requirements.txt`
5. Configure `config.py`
6. Run the tool with `python3 main.py`

## Windows
1. Install Python3 and the latest version of Firefox.
2. Go to -> "start" and type "Manage App Execution Aliases". Go to it and turn off "Python"
3. Unzip `religion-autobumper.zip`
4. Make `/religion-autobumper` your active directory via Command Line with `cd religion-autobumper`
5. Install dependencies via `py -m pip install -r requirements.txt`
6. Configure `config.py`
7. Run the tool with `python3 main.py`

# Configuration
The tool is configured via the `config.py` file. 

```python
class Config:
    driver = ""
    cf_clearance = ""
    ogusersmybbuser = ""

class Threads:
    threadList = {
        "url": "bump message"
    }
```

For example;
```python
class Config:
    driver = "mac_m1_geckodriver"
    cf_clearance = "XXXXXXX-1641695245-0-150" # These need to be kept private.
    ogusersmybbuser = "XXXXXXXXXXk0JJDbcfKbDPeFw7RZStY2uBrmxQB81yNe327xgUAt" # These need to be kept private.

class Threads:
    threadList = {
        "https://ogusers.com/Thread-✅-CRYPTO-EXCHANGE-✅-PAYPAL-CASHAPP-APPLEPAY-ZELLE-CRYPTO": "Bumping this thread! Available to exchange!",
        "https://ogusers.com/Thread-OG-Semi-and-4-Char-TikToks-CHEAPEST-5": "Super cheap TikTok accounts for sell!",
        "https://ogusers.com/Thread-OG-physical": "Super hot Snapchat OG buy it now"

    }
```

Here is a detailed explanation of each config field.

`driver`: The driver for your OS. Located in the `/drivers` folder. 

`cf_clearance`: The cookie value of your Cloudflare session used to bypass CF. 

`ogusersmybbuser`: The authentication key to your MyBB user, used to login. 

`threadList{}`: A dictionary of thread URLs and the message used to bump them.
![img](https://i.imgur.com/xZnsiRr.png)
