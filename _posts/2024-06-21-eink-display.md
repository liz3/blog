---
layout: post
published: false
title: Experience turning a color e-ink paper display into a digital picture frame...and learning rust along the way.2024-02-06
date: 2024-06-21
---
This is not something i expected myself to be writing about, but i think the hurdles, learning and overall experience doing this project are worth a blog post.

A close friend of mine had started tinkering with a color e-ink display a while ago, we talked about it and she proposed me to buy a bigger version of the display. Since we had planned to meet up it was a good idea for a time sink anyway, so i ordered a [7.3inch ACeP 7-Color E-Paper E-Ink Display Module](https://www.waveshare.com/7.3inch-e-paper-hat-f.htm), a [starter electrics bundle](https://www.amazon.de/dp/B09WRBHS7B?ref=ppx_yo2ov_dt_b_product_details&th=1) and a [debug probe for the Raspberry Pico W](https://www.amazon.de/dp/B0CG3BV1TZ?psc=1&ref=ppx_yo2ov_dt_b_product_details), totally unaware of what rabbithole i was signing up to. I should mention that my friend provided the PI pico at first.

# What's a E-Ink paper display anyway?
It's a display but rather then using lid pixels it uses pigments which physically alter the display creating the image.
This has the advantage that the image is clearer and does not have the issue of edges you can have with normal displays.
Further if you cut the power to the display, the image stays, theres no blackout like on classsical displays.
One of the disadvantages is that a update of the frame can take a long time, multiple seconds. Also that most E-Ink display's do not support a lot of colours.

# What's about the Pico
The Pico is a super tiny computer. It does not run a classical operating system. It only runs your code, but still has multicore capabilities, has a wifi chip(the W version) and has a usb port you can use to flash the 2mb ROM of the Pico, a clock chip and so on.
But Of course besides the extremely low power consumption, the appeal is that it is designed to interact with external hardware like displays.

For that interaction it has a range of connectors, Pins which support different protocals, by that i mean that they do not only support setting or reading a voltage and removing it. But they also support more complex protocols for data transfer, analog read and so on.

# Getting started
When starting i had no experience working with the pico or those e-ink displays. My idea was simply put to have this display rotate through some of my images and display them like a digital picture frame.

After getting the display the first thing was not to use it actually but to get familiar with the pi by just playing around with some LEDs.
That went pretty well, the pi has a bunch of input and output pins you can control by simply setting them high or low, or in other cases use more advanced protocols for data transfers like i2c, spi and so on.

<img src="/assets/images/eink/diagram.png" style="width: auto" />

This might seam like a lot but once you get the idea of it, the usage actually becomes pretty simple and intuitive.

## Getting the Waveshare display to work
The display we use is the [7.3inch ACeP 7-Color E-Paper E-Ink Display Module](https://www.waveshare.com/7.3inch-e-paper-hat-f.htm), it supports 7 colors, the data transfer is done via the SPI protocol.

The first hurdles is getting the pins connected, the display has 8 pins, not all of them can be connected to any slot of the Pico, because for example not all pins of the Pico support the SPI protocol.

After the pins are connected, getting the default code setup is the next step. This is not really complicated per se. The issue is that you need specific toolchain setups and libraries for the Pico. After all you are running software directly on the chip, theres no operating system inbetween.
For this after some time i decided to use [embassy-rs](https://github.com/embassy-rs/embassy).

There are [dedicated libraries](https://github.com/caemor/epd-waveshare) for those displays but i decided against using it because at time of starting the project the implementation for the specific display was just merged into the main branch but even then it did not seam to work and besides that the code needed for the display is not very complicated anyways.
Although i should mention that the reason the display was not working might have been another one. 

## Issues getting the Display to work
I would argue the biggest issue while getting the display to work is that Waveshare does provide little to no effective documentation regarding the hardware setup. When starting with this, it could have eliminated a lot of uncertainity while trying to get it to work.
This comes from the fact that besides the *busy* pin theres no feedback from the display, the pin can be low showing the display is busy and high indicating it's not busy, but thats all.

One of the biggest issues i encountered during that, was that the display not doing anything and the driver board of the display heating up a lot. That came from the fact, that the ribbon cable from the display's driver board and the display has a connector which can be hard to understand.
Tne reason is that the connector has a closing mechanism which is not intuitive to use, if you do not know the mechanism for opening and closing it, you might aswell think it has no closing function at all. Besides that you need a lot of force equaly distribution to open it.
