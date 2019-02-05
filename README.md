# CapsLock Monitor for Ubuntu 16
This is a simple script that can detect a CapsLock button and give a notification when it is on. I needed it because I dont have a light for my CapsLock button


# Setup
To setup the script, follow the steps.

First, clone the repository by using the following code: 

```
  git clone https://github.com/arishabh/caps-monitor
```

Then, go inside the directory:

```
  cd caps-monitor
```

Next, run the following code:

```
  chmod +x caps-monitor.sh
```

Lastly, search **Startup Application** and then click the **Add** button, and then select the code. This will make the code run every time you start your computer. You can add comments if you want, but it is not compulsory
```
  Startup Applications -> Add -> Select caps-monitor.sh
```

# Output
- It wil give a notification everytime CapsLock turns on

# Uninstall

To uninstall, go to **Startup Application** and **Remove** the Caps Monitor you had added and delete the repository by using:
```
rm -rf caps-monitor
```
