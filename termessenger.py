#!/bin/python

import subprocess 
import time
import thread
import readline

rcv = raw_input("please enter the phone number of the person you want to message: ")
def update():
    old_line = ""
    while True:
        proc = subprocess.Popen("tail -n 1 rcv.log | sed '/^>.*/d'", shell=True, stdout=subprocess.PIPE)
        new_line = proc.stdout.readline()
        if new_line and new_line != old_line:     
            print new_line.rstrip()
            old_line = new_line
        time.sleep(0.1)

thread.start_new_thread(update, ())
#proc = subprocess.Popen("tail -f rcv.log | sed '/^>.*/d'", shell=True, stdout=subprocess.PIPE)
while True:
    message = raw_input()
    message = message
    cmd = ["osascript", "send.scpt", rcv, message]
    subprocess.call(cmd, shell=False)
    
        
