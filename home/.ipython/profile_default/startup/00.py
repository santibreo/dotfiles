get_ipython().magic(u"%reload_ext autoreload")
get_ipython().magic(u"%autoreload 2")
import os, platform
if platform.system() == 'Windows':
    get_ipython().magic(u"%cls")
else:
    get_ipython().magic(u"%clear")

