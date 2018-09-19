
# lmc - Linux Memory Capturer 

Linux Memory Grabber - A script for dumping Linux memory and creating Volatility(TM) profiles.

Hal Pomeranz (hal@deer-run.com), 2016-01-12

https://github.com/halpomeranz/lmg

[Hal Pomeranz. "Automating Linux Memory Capture." SANS DFIR Summit, 2014.](http://www.deer-run.com/~hal/AutomatingLinuxMemoryCapture.pdf)


## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

It was tested on Ubuntu version 16.04, 17.10, and 18.04.

```
cpuu@ubuntu:~$ sudo apt-get install yara
cpuu@ubuntu:~$ sudo apt-get install python-pip
cpuu@ubuntu:~$ sudo -H pip install --upgrade pip
cpuu@ubuntu:~$ sudo -H pip install distorm3 pycrypto openpyxl Pillow
```

### Installing

A step by step series of examples that tell you how to get a development env running

Say what the step will be

```
cpuu@ubuntu:~$ git clone https://github.com/cpuu/lmc.git
cpuu@ubuntu:~$ cd lmc
cpuu@ubuntu:~/lmc$ sudo ./setup.sh
```
### Capturing the Memory

```
cpuu@ubuntu:~/lmc$ sudo ./lmc
```

Two questions will be asked.
* Try to build LiME kernel module? [N|y] 
* Compile profile for this system? [N|y] 

If this is your first time, select 'y' for both.

## Analysing Memory dump

Explain how to run the automated tests for this system

### linux_pslist

Explain what these tests test and why

```
cpuu@ubuntu:~/lmc/volatility$ python vol.py --conf-file=../capture/osboxes-2018-09-18_21.41.50/volatilityrc linux_pslist
```
