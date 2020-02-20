# 27 July 2019, Bill Diammond, Carbon Black
# Offline cbapi installer with all dependencies
# all modules:
# PyYAML-5.1.1.tar.gz		chardet-3.0.4.tar.gz		prompt_toolkit-2.0.9.tar.gz	solrq-1.1.1.tar.gz
# Pygments-2.4.2.tar.gz		decorator-4.4.0.tar.gz		protobuf-3.9.0.tar.gz		validators-0.13.0.tar.gz
# attrdict-2.0.1.tar.gz		futures-3.3.0.tar.gz		python-dateutil-2.8.0.tar.gz	wcwidth-0.1.7.tar.gz
# cachetools-3.1.1.tar.gz		install.sh			requests-2.22.0.tar.gz
# cbapi-1.4.5.tar.gz		pika-1.1.0.tar.gz		setuptools-41.0.1.zip
# certifi-2019.6.16.tar.gz	pip-19.2.1.tar.gz		six-1.12.0.tar.gz


# Objective: manually installs all CB API python packages from local directory
# without external callout
# resolve dependencies

# primary dependencies: six, decorator, setuptools

# secondary dependencies: wcwidth

# tertiary dependencies: urllib3, certifi, chardet, idna

#What does this do?  It creates a local pip cache with all the requiremnts listed in the requirements file (cbapi.txt) which it install from the local directory instead of pulling from PyPI (pythonhosted.org).  It then installs from the local cache


pip download -r cbapi.txt -d .
pip install -r cbapi.txt --find-links=.




