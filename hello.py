#!/usr/bin/env python3
"""
hello.py
---------
A simple Python script for the DevOps Final Assessment.
It prints a welcome message and confirms environment details.
"""

import platform
import datetime

def main():
    print("=" * 50)
    print("👋 Hello, DevOps Engineer!")
    print("Welcome to the DevOps Final Assessment 🚀")
    print("=" * 50)
    print(f"Python Version : {platform.python_version()}")
    print(f"Platform       : {platform.system()} {platform.release()}")
    print(f"Date & Time    : {datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')}")
    print("=" * 50)
    print("✅ Script executed successfully!")
    print("=" * 50)

if __name__ == "__main__":
    main()
