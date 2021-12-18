---
layout: post
name: iRacing and kernel developing
---
So you do windows kernel development but then one day decide you want to play iRacding? Heres my story:

## The Problem
I like motorsport, its not a secret, on that day i wanted to play some iRacing to see the Mercedes Benz AMG W12 which was developed for the iRacing simulator.
But surprise i also develop! And while i do not mainly work on windows, i have a ssd in my tower running windows for some games or when i test/develop windows specific things...and it happens that around 4-5 months ago i did some kernel development/testing regarding Genshin impact reverse work.

iRacing installed correctly, everything fine. But when i then tried to launch the test track, **It got stuck at "Loading Sim: 0%"**...

Mh i wondered, what could that be, did the install fail? did i need to restart?(iRacing comes with EasyAntiCheat, which i can understand since its a competitive simulator)
So i re reinstalled everything, but still, nothing....so i did some digging where iRacings logs are and after i found them i saw: "Cannot launch Easy anti Cheat with Forced driver signing disabled".

Oh okay....

## The solution.
Since i did the kernel testing i had test mode enabled....*The sim could have warned me but whatever, just lost 30 minutes trying to search for the reason*.

So the fix in the end was rather simple but i wanted to write it down incase this might help someone.
Run a CMD as Admin and use
```
bcdedit /set TESTSIGNING off
```
Then you will need to restart but that should let iRacing be happy and start normally...