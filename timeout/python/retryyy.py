from retry import retry
import sys

@retry(tries = 60, delay = 4)
def demoFunc():
    # Put your command here
    if result != 'OK':
        raise ValueError("It's not ok !!!")

try:
    demoFunc()
except Exception as e:
    print('Error: %s' % e)
    sys.exit(1)
