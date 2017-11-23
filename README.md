# gotchyerface
This is a bash script that saves a history of screen locks/unlocks. It also takes a picture (using your webcam) of the user that unlocks the screen, so you can see who is accessing your computer and when she/he did it.

NOTE: This project is supposed to be a tool to help you keep protected your computer. However, its reliability is very low, i.e. it would just take the user to cover the webcan to make it useless (don't tell anyone!).

## Requirements
* Streamer (https://launchpad.net/ubuntu/+source/xawtv/3.103-4)
* Linux OS.

## How to use
1. Download this repository.
2. Install Streamer.
3. In repository folder, make the script executable with this command `chmod +x lock_watcher.sh`.
4. run this command `./lock_watcher.sh`
Remember that in order to take pictures with your webcam, you must turn it on.

## Current features
* Logs time of screen lock/unlock.
* Takes a webcam picture on screen unlock.
* Tested on Debian 9 laptop.

## To Do
* Daemon-ize this script.
* Accept arguments to indicate where webcam pictures will be saved.
* Implement command to easily display the log.
* Cross-user test.

## What can I do to help?
Any help (new features, fixes, development, tests, comments, pretty much anything) will be very appreciated. Just send me a message or fork this repo and send me a PullRequest.
