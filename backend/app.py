
from flask import Flask, jsonify
import random

app = Flask(__name__)

quotes = [
    "May the Force be with you.",
    "I'll be back.",
    "Here's looking at you, kid.",
    "You talking to me?",
    "I see dead people.",
    "Why so serious?",
    "To infinity and beyond!",
    "I'm the king of the world!"
]

@app.route("/api/quote")
def get_quote():
    return jsonify({"quote": random.choice(quotes)})

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
