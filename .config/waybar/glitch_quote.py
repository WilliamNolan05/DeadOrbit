#!/usr/bin/env python3
import random
import time
import os

file_path = os.path.expanduser("~/.config/waybar/quotes.txt")
symbols = ['@', '#', '$', '%', '*', '!', '?', '/', 'X', '0', '1']

def get_random_quote():
    fallback = "OBEY THE SIGNAL"
    if os.path.exists(file_path):
        with open(file_path, "r") as f:
            lines = [line.strip() for line in f if line.strip()]
            if lines:
                return random.choice(lines)
    return fallback

def glitch_text(text):
    text_list = list(text)
    # Change the number below between 0.0 and 1 to change the chance of a glitch
    if random.random() < 0.35:
        idx = random.randint(0, len(text_list) - 1)
        if text_list[idx] != ' ':
            text_list[idx] = random.choice(symbols)
    return "".join(text_list)

while True:
    current_quote = get_random_quote()
    
    # Glitch the current quote for 10 seconds (20 iterations at 0.5s intervals)
    for _ in range(20):
        print(f"“{glitch_text(current_quote)}”", flush=True)
        time.sleep(0.5)