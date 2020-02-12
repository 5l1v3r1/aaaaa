        #-*- coding: utf-8 -*-

import os
import sys
import time
import colorama
from colorama import *
import sys

def slowprint(s):
    for c in s + '\n':
        sys.stdout.write(c)
        sys.stdout.flush()
        time.sleep(1. / 100)

def again():
      run = raw_input("\033[1;91m\n=> [l]\033[1;92m exit\033[1;96m or \033[1;91m[Enetr]\033[1;92m continue ? [l / enter] =\033[1;96m  ")
      if run=='l':
         print('Exiting......')
         time.sleep(0.5)
         print("             \033[1;92mThank You For Using T-Speak !")
         time.sleep(1)
         print("")
         os.system("echo ---------------------------------------------- | lolcat")
         os.system("echo [ ------T-Speak By Mujeeb ------] | lolcat")
         print("")
      else:
         os.system("clear")
         logo()
         main()

def td():
     time.sleep(1)

os.system("clear")
time.sleep(0.5)
def logo():
      print("\033[0;34m")
      print("████████╗   ███████╗██████╗ ███████╗ █████╗ ██╗  ██╗ v1.0")
      print("╚══██╔══╝   ██╔════╝██╔══██╗██╔════╝██╔══██╗██║ ██╔╝")
      print("   ██║█████╗███████╗██████╔╝█████╗  ███████║█████╔╝")
      print("   ██║╚════╝╚════██║██╔═══╝ ██╔══╝
