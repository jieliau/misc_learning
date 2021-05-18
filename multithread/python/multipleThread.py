import threading
import time

def job(num):
    print("Thread", num)
    time.sleep(1)

threads = []
for i in range(5):
    threads.append(threading.Thread(target = job, args = (i,)))
    threads[i].start()

for i in range(5):
    threads[i].join()

print("Done.")
