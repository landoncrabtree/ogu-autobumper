# Setup Instructions
This tool requires Python3 to run. Install it first here: https://www.python.org/downloads/. Please follow Python's official instructions for your operating system. Then, install the latest version of Firefox here: https://www.mozilla.org/en-US/firefox/new/. 

### Prerequisites 
1. Latest version of Firefox.
2. Latest version of Python3.
3. [Export cookie JSON file for Puppeteer](https://addons.mozilla.org/en-US/firefox/addon/%E3%82%AF%E3%83%83%E3%82%AD%E3%83%BCjson%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E5%87%BA%E5%8A%9B-for-puppeteer/)
4. Login to OGUsers and export cookies using Export cookie JSON file for Puppeteer.

## macOS
1. Install prerequisites. 
2. Unzip `religion-autobumper.zip`
3. Make `religion-autobumper` your active directory via Terminal with `cd path/to/religion-autobumper`
4. Install dependencies via `python3 -m pip install -r requirements.txt`
5. Configure `config.py` (See Configuration section)
6. Move `ogusers.com.cookies.json` to `religion-autobumper/cookies`
7. Run the tool with `python3 main.py`

#### macOS Catalina and Above:
Apple introduced a new notarization feature. You may get the message: "'mac_m1_geckodriver' executable may have wrong permissions.". To solve this, do the following:
1. `chmod a+x <driverFile>`
2. `xattr -r -d com.apple.quarantine <driverFile>`

## Linux
1. Install prerequisites.
2. Unzip `religion-autobumper.zip`
3. Make `religion-autobumper` your active directory via Terminal with `cd path/to/religion-autobumper`
4. Install dependencies via `python3 -m pip install -r requirements.txt`
5. Configure `config.py` (See Configuration section)
6. Move `ogusers.com.cookies.json` to `religion-autobumper/cookies`
7. Run the tool with `python3 main.py`

## Windows
1. Install prerequisites.
2. Go to -> "start" and type "Manage App Execution Aliases". Go to it and turn off "Python"
3. Unzip `religion-autobumper.zip`
4. Make `religion-autobumper` your active directory via Command Line with `cd path\to\religion-autobumper`
5. Install dependencies via `py -m pip install -r requirements.txt`
6. Configure `config.py` (See Configuration section)
7. Move `ogusers.com.cookies.json` to `religion-autobumper/cookies`
8. Run the tool with `python3 main.py`

## Detailed Ubuntu Linux VPS Setup
1. Purchase a VPS (Such as an OVH VPS)
2. SSH into the VPS
3. Run `sudo apt-get install wget`
4. Run `wget https://raw.githubusercontent.com/landoncrabtree/ogu-autobumper/main/setup.sh`
5. Run `sudo -s`
6. Run `chmod +x setup.sh`
7. Run `./setup.sh <link provided upon purchase`

# Configuration
The tool is configured via the `config.py` file. 

```python
class Config:
    driver = ""

class Threads:
    threadList = {
        "url": "bump message"
    }
```

For example;
```python
class Config:
    driver = "mac_m1_geckodriver"

class Threads:
    threadList = {
        "https://ogusers.com/Thread-✅-CRYPTO-EXCHANGE-✅-PAYPAL-CASHAPP-APPLEPAY-ZELLE-CRYPTO": "Bumping this thread! Available to exchange!",
        "https://ogusers.com/Thread-OG-Semi-and-4-Char-TikToks-CHEAPEST-5": "Super cheap TikTok accounts for sell!",
        "https://ogusers.com/Thread-OG-physical": "Super hot Snapchat OG buy it now"

    }
```

Here is a detailed explanation of each config field.

`driver`: The driver for your OS. Located in the `/drivers` folder. 

`threadList{}`: A dictionary of thread URLs and the message used to bump them.

# Common Errors
1. "[-] Failed to authenticate. Try refreshing your cookies." - Use normal Firefox browser and login to OGUsers. Use the Export cookie JSON file for Puppeteer addon to export your cookies and put the `ogusers.com.cookies.json` file in the `religion-autobumper/cookies` directory. This is required to authenticate your account and bypass Cloudflare.
