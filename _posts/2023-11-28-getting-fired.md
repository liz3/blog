---
layout: post
title: Getting let go suddenly of a company i liked working at
date: 2023-11-28
---
In my last post i proudly said im working for [Bun](https://bun.sh), well that didn't exactly last long.
To be clear i don't want to accuse anyone of the bun team, its more just writing down my thoughts.

## What happened
Frankly i'm still processing that myself and if i had a definite answer i would give you it but i don't have one so this is just thoughts.

On friday Jarred asked if we could chat, i answered a bit later but didn't get a response, i tried again Saturday and Sunday,
but i only got a response on Monday evening(my time) short notice which i was fine with, buuut it was basically: We are terminating the contract effective immediately.

That caught me very off guard since i wasn't expecting it at all and there was no prior communication that something was not up to expectation.

The abstract reason seamed to be that the communication and quality of the contributions was not meeting expectations.

### Communications
This is partly probably due to the reason that i'm remote and the bun team does not have a lot of experience working with remote people, which is fine.
I think when i started i was even asked if i would consider moving to the US but i have friends here in Germany and i have Diabetes typ 1 which means that
for me it would be pretty hard there considering the insulin price. So that was never really a option for me, at least not long term.

I should really point out that prior to starting at bun i didn't have any real experience in the zig language, but that can be learned.
I did although create some bigger prs pretty early even before working for them, which is maybe something i should have reconsidered but at that time i thought
its a good approach to challenge myself and surely i would get good reviews pointing me into the right directions.

Well thats the big point, reviews: Getting reviews was very hard due to to the fact i often requested reviews but these requests got left unanswered,
where answered with little explanation but most importantly: **no followup**, there was almost never a follow up after me answering or asking a question on reviews, neither on github nor discord.
And for the most part i did write follow up questions asking what the correct or better approach would be, knowing that i didn't have a lot of experience in zig.

One time i was even offered advice where to investigate a bug, but me asking about that was left unanswered.

Note that in no point was i ever informed that this is something i should know, which understandably is not something a team would just do but id rather have that
then being let go instantly, i mean afterall don't we all have to learn at some point? Learning was the most important thing for me besides helping the project,
it seams that view was not really shared...at least in the aftermath now.

### Quality of Contributions
This is somewhat subjective but il try to keep it as objective as possible.

Knowing i was new to the codebase its likely contributions would initially have more mistakes and be more bug prone, thats unavoidable.
There also lies part of my fault maybe for trying bigger contributions early. But thats how you learn, and its not like there was ever broken code merged.
A example is this Pull request: [bun:6693](https://github.com/oven-sh/bun/pull/6693) which i firstly implemented wrongly based on a flawed assumption, after a short
conversation that the code might be flawed and me arguing it seams to work we left the pr open with the explanation that this needs more tests, since this
included edits to a third party library maybe also running their test suite(Something another engineer had on their TODO).

Fast forward a few weeks the maintainer of the third party library wrote that the implementation is flawed, the next day after some comments i implemented the "correct"
approach and also added a lot of extra tests, note that in the weeks from opening that Pull Request and the new comments i also learned more of course and got more experiemce with the codebase.

Now you get to decide whether this is something worth getting let go over, i don't know the answer but my subjective opinion is that knowing im **learning**,
and implemented the fix within a day and also addressed further reviews very fast it seams somewhat hard but again thats my subjective view.

## Conclusion
Im not entirely sure what the takeaway is here, because the mistakes i was let go over seam like something you should **expect** from someone new to the project and i made clear
very early that im new to zig too but willing to learn. Id argue im generally not someone who needs a _lot_ of guidance.

But my only real critique is that i **really really** tried to get feedback and advice the entire way through. And im not referring to being spoon-fed the solution,
but just being pointed in the right direction. And maybe questions not ignored. Further maybe giving a **single** headsup that its not going as expected,
before ultimately just being let go instantly.

I like the bun project and the way it works and maybe i will continue open-source contributing to it if it works out, but the way i was let go was a punch in the face, since i did try to do it the right way but trying was not enough.