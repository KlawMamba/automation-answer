import random
import string

def generate_random_string(length):
    return ''.join(random.choices(string.ascii_letters, k=length))

def generate_random_email():
    return f"user{random.randint(100, 999)}@example.com"

def generate_random_phone():
    return str(random.randint(1000000000, 9999999999))