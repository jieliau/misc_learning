import hashlib, os

hashlib.sha256(os.urandom(10)).hexdigest()
