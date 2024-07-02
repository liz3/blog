---
layout: post
published: false
title: Experience turning a color e-ink paper display into a digital picture frame...and learning rust along the way.
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
When starting i had no experience working with the pico or those e-ink displays.