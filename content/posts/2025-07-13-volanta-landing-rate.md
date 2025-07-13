---
title: Reverse engineering Volanta to understand how it calculates the landing rate
date: 2025-07-13
---

<img src="/images/volanta/image.png" style="height: auto; width: auto; max-height: 480px" />
<img src="/images/volanta/image2.png" style="height: auto; width: auto; max-height: 480px" />


[Volanta](https://volanta.app/) is a application to track sessions and flights in Flight simulators. Besides tracking where you go and when, it also provides information about the landing, among that the **Landing rate**, which describes the value in feet per minute at which the plane touched the ground. 

Within the flight simulation Community that *feet per minute* value is the defacto standard measurement of how "smooth" the touch down was.

Twitch streamer [elmoradar](https://twitch.tv/elmoradar) uses this value to decide the winners of a prediction where you can win or loose points(no real life monetary value).

## Expectaction
I had no set expectation or theory i wanted to prove/disprove. But some values you get made me wonder whether **Volanta adds some randomness** to the landing rate.

## Researching
Volanta is a [Electron](https://www.electronjs.org/) app which means, its a website running on your desktop with access to the file system and so on, a lot of apps a build that way.

Electron apps are relatively easy to reverse engineer as all the assets are packed in a `app.asar` file, which is basically a zip like format. Asar is open so we can simply use its utility to decompress it:
```sh
npx asar extract app.asar ./decompressed
```
Electron apps are written in Javascript, which means you can only obfuscate and minify(compress) the code, there are various levels of that. There are also more advanced techniques. But volanta made it relatively easily for me to figure out that:

The app spawns a sub exe file, then opens a tcp(network) server to which (assumingly) the exe connects. Within the electron(javascript) code theres is only data forwarding but we can still deduce a lot, which is that.

The subprocess constantly sends data to the electron app retrieved by the simulator through simconnect(which is a official link to the sim).

Those consists of values in that moment like plane position, speed, altitude and so on. It also contains values for vertical speed and a true or false value whether the sim currently senses its on the ground.

*Volanta considers a landing if the last dataframe did indicate the plane was in the air and the current data frame indicates the plane is on the ground. Additionally it checks if the actual speed of the plane is greater then zero.*
```js
    checkLanding(t) {
            if (
              this.previousData &&
              !this.previousData.onGround &&
              t.onGround &&
              !t.inReplayMode &&
              t.groundSpeed > 0
            ) {
              const r = {
                landingRate: t.verticalSpeed,
// ...
              };
// ...
            }
          }
```

But to actually know whether the value is edited or comes directly from the sim we need to go deeper, we know its somewhere in that sub exe.

The sub exe turns out to be native code, which does make sense since using SimConnect does require native code.
Compiled native code is **considerably harder to reverse** then electron. Since compiling strips the code of most information we use as humans to read it.

But the fortune is with us! For debugging purposes compilers can generate a extra file which saves the lost information alongside the native code, Volanta conviently provides that file for us.
I used [Ghidra](http://ghidra.net/) to load the native file, iot automatically loads the extra info file and as a result it gives us code that is much closer to how it was and most important makes it easier to search it.

From there i searched references to the landing rate which did not take long to find:
```cpp

void __thiscall ESPPlatform::handle_acf_data(ESPPlatform *this,ObjectData *param_1)

{
  FlightData *this_00;
// ...
      (this->sim_state).flight_data.gravity = param_1->dGravity;
// ...
      (this->sim_state).flight_data.vertical_speed = param_1->dVerticalSpeed * 60.0;
// ...
}
```
From here we can see that the vertical speed from the sim is used while being multiplied by 60.

This might seam weird, but theres a logical reason, the default unit provided for vertical speed is *feet per second*, not *feet per minute*.

So to have *feet per minute* multiplying the value by 60 is logical, but does mean theres a loss of precision over another approach like average of *feet per second* from multiple frames. 

## Conclusion
Against expectation we can see the calculation of the landing rate is very simple, it's not even really a calculation. **The landing rate is the vertical speed converted from feet per second to feet per minute on the data frame of touch down**. At least currently!