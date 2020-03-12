import os
import sys
import time
import requests

R = '\033[1;31m'
G = '\033[1;32m'
Y = '\033[1;33m'
C = '\033[1;36m'
W = '\033[1;37m'

def slowprint(s):
    for c in s + '\n':
        sys.stdout.write(c)
        sys.stdout.flush()
        time.sleep(3.0 / 100)
      
logo = """
\033[1;32m  ______    _         \033[1;33m  __  __       _ _           
\033[1;32m |  ____|  | |        \033[1;33m |  \/  |     (_) |          
\033[1;32m | |__ __ _| | _____  \033[1;33m | \  / | __ _ _| | ___ _ __ 
\033[1;32m |  __/ _  | |/ / _ \ \033[1;33m | |\/| |/ _  | | |/ _ \  __|
\033[1;32m | | | (_| |   <  __/ \033[1;33m | |  | | (_| | | |  __/ |   
\033[1;32m |_|  \__,_|_|\_\___| \033[1;33m |_|  |_|\__,_|_|_|\___|_|   

\033[1;36m [\033[1;37m+\033[1;36m]\033[1;32m CREATED BY HTR-TECH (TAHMID RAYAT)
"""

os.system("clear")
slowprint (logo)
print ("")
slowprint(G + ' Launching Fake Mailer...')
time.sleep(2)
print ("")
to = raw_input('to: ')
to = raw_input(G + " to" + C + " > " + Y)
print ("")
by_one = raw_input(G + " Encrypted Script Name (without .py)" + C + " > " + Y)
