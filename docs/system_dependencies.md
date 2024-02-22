# Env Setup for the project

To run the project we have following dependencies
* ruby: 2.6.10
* sqlite3:  1.4

## Installation on Ubuntu

For setting up in ubuntu follow these steps.

0. install  sqlite3:  1.4
0. Run => `sudo apt -y install libmysqlclient-dev`

0. Install rvm from  https://rvm.io/rvm/install
0. Check if rvm is in the path, if not, update ~/.bashrc accordingly.
0. Open new terminal window (or source ~/.bashrc)
0. Install ruby 2.6.10 => `rvm install 2.6.10`
0. use ruby 2.6.10 => `rvm use --default 2.6.10`
0. Run => `gem install bundler`


## Installation on Mac

For setting up in mac follow these steps.

0. Install brew from 'https://brew.sh/'
## this part is optional
0. install mysql5.6 => `brew install mysql@5.6`
0. Run => `brew install redis`
0. Set password for redis and restart

       sudo nano /usr/local/etc/redis/redis.conf 
0. Install rvm from  https://rvm.io/rvm/install
0. Check if rvm is in the path, if not, update ~/.bashrc accordingly.
0. Open new terminal window (or source ~/.bashrc)
0. Install ruby 2.6.2 => `rvm install 2.6.10`
0. use ruby 2.6.2 => `rvm use --default 2.6.10`
0. Run => `gem install bundler`
