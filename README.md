# DTMF Capture Bot 📞

Welcome to the DTMF Capture Bot! This bot captures Dual-tone multi-frequency (DTMF) signals during live calls. Perfect for integrating with IVR systems and automating telephony applications.

## About

This bot captures and processes DTMF tones during live calls, allowing you to automate various telephony tasks. Whether you are building an IVR system or need to capture user inputs during calls, this bot has you covered.

## Features

- 📞 **Live Call DTMF Capture**: Capture DTMF tones in real-time during live calls.
- ⚙️ **Easy Integration**: Seamlessly integrate with your existing telephony systems.
- 📊 **Analytics**: Get detailed analytics on captured DTMF tones.
- 🔒 **Secure**: Ensures secure capture and processing of DTMF tones.
- 📈 **Scalable**: Handle multiple calls simultaneously.

## Demo

Check out the live demo of the application: [DTMF Capture Bot Demo](https://t.me/witchvoip_bot)

## Installation

To get a local copy up and running, follow these simple steps.

### Prerequisites

- Python 3.x
- pip

### Installation Steps

1. **Clone the repository**

    ```bash
    git clone https://github.com/your-username/dtmf-capture-bot.git
    ```

2. **Navigate to the project directory**

    ```bash
    cd dtmf-capture-bot
    ```

3. **Install dependencies**

    ```bash
    pip install -r requirements.txt
    ```

4. **Run the application**

    ```bash
    python app.py
    ```

The bot should now be running and ready to capture DTMF tones.

## Usage

1. **Start the bot**: Run the bot using the command above.
2. **Make a call**: Call the bot's phone number.
3. **Capture DTMF tones**: Enter DTMF tones during the call, and they will be captured and processed by the bot.

## Code Example

Here's a simple example of how the bot captures DTMF tones:

```python name=app.py
from twilio.twiml.voice_response import VoiceResponse, Gather
from flask import Flask, request

app = Flask(__name__)

@app.route("/voice", methods=['GET', 'POST'])
def voice():
    response = VoiceResponse()
    
    gather = Gather(input='dtmf', timeout=10, num_digits=1, action='/gather')
    gather.say('Please enter a digit.')
    response.append(gather)
    
    return str(response)

@app.route("/gather", methods=['GET', 'POST'])
def gather():
    response = VoiceResponse()
    digit = request.values.get('Digits', None)
    
    if digit:
        response.say(f'You entered {digit}')
    else:
        response.say('No input received.')
    
    return str(response)

if __name__ == "__main__":
    app.run(debug=True)
```

## Contact

For purchasing and inquiries, contact me on [Telegram](https://t.me/WitchShopHub).

## License

Distributed under the MIT License. See `LICENSE` for more information.

<!---
your-username/dtmf-capture-bot is a ✨ special ✨ repository because its `README.md` (this file) appears on your GitHub profile.
You can click the Preview link to take a look at your changes.
--->
