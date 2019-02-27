# Welcome to Rebrow!

This is the same project as https://github.com/marians/rebrow


## Features

 - redis cluster support
 - authentication support


## Redis Setup

 1. Create a redis cluster using helm:
	```  
	$ helm install --name my-release stable/redis  
	```

 2. Add Data to redis:
	```
	fillredis/fill.sh
	```
## Project Setup:

> *Note*: Anaconda is used here to setup the python environment here
1. `conda create -n <yourenvname> python=x.x`
2. `activate <yourenvnname>`
3. `python -m pip install -r ./requirements.txt`
4.  `python wsgi.py`
> (redis-gui) λ python wsgi.py
> Running on http://127.0.0.1:5000/ (Press CTRL+C to quit)

## Deploy to Openshift:
> ./build.bat

