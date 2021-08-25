---
layout: post
title: Why are Genshin impact reversers so closed
published: false
---
In learning, being mentored by something is incredible important right?
Let me tell you how i had to learn that at least some if not the marjority of reversers are very closed about a lot of things.

## Before
I play [Genshin impact](https://genshin.mihoyo.com/) a lot, or at least used to.

Back when i was still actively playing at one point i discovered a public api, which provided data on existing characters and items, mostly generated through scraping and otherwise manually filled...
I had never done much in reversing games but i have done some interesting things with code, so i would say i am somewhat tech savvy.
So i thought maybe its possible to extract the data for that api out of the game.

## Main
Turns out this was the first thing i had to really give up on...why? because i didnt manage to do it, ive modified chromium to a good degree for a company, build a own language parser/runtime(skx) and build complex apis.
But the main issue with this was the lack of information. Yes ive seen some basic reversing tutorials, but they are about: "Find the main function in a stripped binary, well thats not really hard now is it".

The Main issue is that genshin encrypts its file using AES256 and XOR, further it modifies some file formats from the unity engine.
So i tried to reach people who are good at this, there where some old repos about this and i tried to reach the authors. The first person i reached wasnt cloesd against me but had moved on with genshin, but it started there, they told me that they where still on a server which has reversers, when i asked if i could join to get some help there, that question got dismissed with, "no because its private", since back then i was still totally new to all this i didnt doubt and just moved on.

The Next person i contacted was probably the only who did provide some help in the way they helped me getting the game running under a debugger, but nothing more specific. They stopped answering after that too, tho that might have other reasons.  After that i spent some good time trying to reverse engineer myself through the game, but i was simply lacking the knowledge what and where to look for..i think after 2 weeks i contacted a reverser who had done it
