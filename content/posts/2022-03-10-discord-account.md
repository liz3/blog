---
title: About loosing a discord account, getting it back and the Discord support
date: 2022-03-10
---
Hah, i would never lose my discord account, how could this ever happen to anyone EVER whos not actively trying to,
believe me i thought that too, i was sure i wouldnt ever get my account stolen,
but i still did, so let me tell you a story, with some key takeaways along the way, even for experienced users.

## How it started
Date: 13th January 2022

I am Administrator on a larger Discord server, > 100.000 users, i wont be mentioning the name here,
not because i want to hide it, but rather because its not important for this story.

A day before this happened, another admin on that server stepped down from their permissions,
they did not remove the roles doing hoisting or sorting but the roles actively giving permissions where removed from that user.

I have Administrator on that Server...
That night, the account of that Admin contacted me, note that i was aware of them being a admin, but i was not aware they stepped down, neither did we ever message before.

This is important as it meant i was not aware of how the person normally behaves in direct messages,
after a certain while of writing with a person you learn how they behave, their writing style, quirks and the likes.
Notheless since they where a Admin, they had a certain trust level already from me, a strange account would not have from me by default.

So during their initial messages, i was watching youtube, i was not on alert, their initial contact was, 
(i will be using Person rather then their real name, from here and for the rest of the story):
```
Person > Liz
Me > Hey
Person > Can you help me?
Me > depends
Person > i am *persons name*
```
The person then proceeded to send a link to the big server, along with a screenshot of their roles on that Server.

**Takeaway: A real person is not likely to mention its them in a direct message channel.**

I can only mention again i never wrote with that person before,
but here i did the first f-up, i did not get suspicious when they introduced themselfs, which normally shouldnt happen.

i then answered:
```
Me > ik
Me > it still depends
```
i actively ignored that warning signal.

## What the scam was
This was a targeted phishing attack towards people with high roles,
this was and is my main discord account which i have since 2016, it has dms with over 50.000 messages:

The person then proceeded to pretend the following:

*They where applying as a Discord verified moderator and i would need to vote for them,
along with a link which was not discord.com, but neither was a obvious typo of discord.com, it was a extra word,
which without context could have been valid.*

For context here: Discord does have a certified Moderator program, but it does not have a vote system(i was not certain about that at that date),
so before i did click the link i googled it, sadly google did not have that site as first result,
but a discord blog article which after checking it was close enough to me with the trust not instantly marking this as a red flag obvious scam, but the article also didnt link a external site anywhere.

So i clicked the link and it brough me to a discord login page, i was not sure here, i had a bad feeling about it being legitimate,
i went back to the discord chat and saw they *deleted the message with the link*!

**Takeaway: If a person deletes a link in a chat they want you to do something, thats a clear red flag!**

**Takeaway: if a domain isnt high up on googles result, do not trust it!**

i then wrote:
```
Me > did you delete the link?
Person > i accidentally deleted
Person > did you get to vote for me?
```

**Takeaway: Them pressuring you to do something should make you very suspicious**

I then refreshed the page to check if the QR code refreshed, it did.

So i tried to login with a QR code, but that did not work, it failed with the following message on my phone:
<img src="/images/discord/scam_qr_error.png" style="height: 400px; width: auto" />


**Takeaway: Discord has these systems centralized, if this fails its, 10000% a scam**

But i didnt think that in that moment, i thought that discord was just having issues with it...
So i manually logged into the site, together with 2FA.

**Takeaway: 2FA is not a protection against phishing!**

After logging in into the site, i was instantly redirected to that login site and there i realised it....

Within the 30 seconds time frame of the 2FA code, the scam automatically replaced the 2fa token AND the backup codes, it was not possible to login with the backup codes, yes i actually save them,
this was probably one of my darkest moments ever.

The main issue here again was that i had that initial trust towards a person, i had no direct contact with before but knew as a admin from a big server.

## Whats Next?
Wow what a shock, i just lost my discord account to a scam....it really happened to me.
After about 5 minutes of trying, i gave up on getting back into it, i would not.

The first thing i did then was messaging the owners/important persons outside of discord, i.e whatsapp, iMessage and so on to remove my account from servers,
remember this was a targeted attack, not a mass thing, further i asked to be removed from the bot teams i was on, well get to this later.

**Takeway: message server owners of servers your account could do damage to instantly, to minimize impact as far as possible, further message your friends, make people aware your account was compromised as much as you can to protect them!**

## The Server incident
The server of which the scammers got the account from which they messaged me, did not have people online who would have been able to remove my roles or kick my account,
there happened so much on that server, this would deserve its own blog entry to be honest, but in short, i tried to kick my account using bots, waiting for people but in the end non worked and yes,
here the worst of the worst happened, the entire server got destroyed because my account was compromised, remember the other account had no actual permissions left...

**Takeaways:**
- **Stand to your mistake, like i did, to this day i fully stand to what happened there, its my and only my responsbility.**
- **True friends will not leave you or be mad at you, even after this, funny this is a test to see directly if the people who entrusted you are real friends or people only using you against payment of roles**

Having to witness the server being destroyed was probably one of, if not the worst feeling i ever had.

Since then the server learned a lot, im still admin there, although i learned a lot too.

Even though the first reaction of a server owner would probably be to not trust people anymore with permissions,
i deeply think thats the wrong approach, why?

You need people you as a owner can trust and this happening will always be a risk, just try to minimize it as much as you can, not entrusting people with permissions is one way but it comes at a big price of extra work and possible distrust...

## Getting my account back OR Discord support, choose the one you like
This section will cover two incidents, one was getting the account, the other lasts to this day,
further i want to open how TERRIBLE and BROKEN the discord support is, told from my experiences.

### Getting the account back
I would not have gotten my account back through the normal support.

So rapidly after loosing the account, messaging the people of work and other servers,
i opened a support ticket with the normal support, both from my original email the account was under and the email of my alt.
Discord uses Zendesk, you can answer tickets in two way, the one is through the website although you need to login here, the other is through answering emails send to the address associated with the ticket.

Since i lost the account, that in returns means i would only be able to answer per email to the ticket opened from the original email the account was under.

Discord even required you to answer per email in order to confirm the ticket regarding a compromised account,
WELL JOKES ON YOU!!!

I use mailbox.org, a very very good german email provider which takes the work of hosting a email server from you, against a small price you can use custom domains and have a very reliable email service,
i never had problems with them before.

But my emails answering the ticket, where always **rejected**, not on a mail server layer, but by a zendesk filter, it does not matter if i used links or not, it simply did not work, here the answer:
![Discord email rejection](/images/discord/email.png)

Im pretty sure in total i tried to answer 25 times to tickets without a single success.

Because the next day, with the help of a friend, the original ticket was answered and they reset the account to my original email,
with the site effect of the account being active again resulting from that(the account was disabled luckily later the morning it got compromised).

But they didnt reset the 2FA! so i was unable to reset the password because the 2fa was still set to the scammers one, since the account was active again that meant the scammer /could/ theoretically login again,
again due to the 2FA of the scammers being still active on the account.

And i was unable to answer emails and let them know....

so i was in the air,
the request from my alt, the account i used while i did not have my original, clearly mentioned in the ticket that:

> This is the seccond request i do but i cannot answer the email to the first because it gets rejected by zendesk.

But still got a copy paste answer stating:

> Hey Yann,  
> To protect our users' privacy and security, we're only able to discuss account details with the email address associated with that Discord account. Since it looks like you're currently writing in about another account associated with another email address, please send us a new ticket through that other email address via our support form instead and I can help check on that request through there.  
> For General Support - https://dis.gd/contact  
> If you have any other questions in the meantime, please let me know here!

i.e the support did not even READ my request, i totally get those protective measures and they make sense, but the support should at least read and try to provide a way to work around the issue, we will get back to something similar in the next section.

In the end i got the account back the next morning through a friend who had directly contacted a employee at discord, who manually reset the 2fa code and all spam flags on the account, giving me it back, thank you.
To this day i stand by the statement, i would not have gotten the account back through the normal support, because of the email issue. which shows a fatal flaw in their system.

**Takeaway: The discord support might not be able to help you, if you loose your account!**

After this happened, i made a suggestion, that:

Discord should allow accounts who got important credentials like the email changed and which also have higher roles in big servers, allow the original entity, i.e the old email address to **suspend** the account through a link in a timeframe of maybe 12 hours,
freezing the account until manual verification is done, this would have prevented the destruction of the server which was destroyed by my account being compromised.

In total i lost the account for about 30 hours, maybe +- 2 hours.

### The Early verified Developer Badge story
This is pretty insane and goes to this day!

I worked at Animesoul for a long time, making anime.pics, working on their main site and also the bot Shoob, which i had written major parts in.
That bot also got verified before discord discontinued the badge, so i had that badge,
**and of course badges are cool, i would be lying to say i dont like them**.

When this happened i messaged the original admin to remove me from the team the bot was on in order to **Protect the bot**:
![whatsapp1](/images/discord/wa1.png)

Sadly doing that, also had as a side effect that i lost the badge, in the conversation we even quickly talked about the badge:
![whatsapp2](/images/discord/wa2.png)

Now lets forward a while,
two days after i got my account back, the Admin of the bot readded me to the team, where i was hoping to get the badge back, but i didnt, so i opened a support ticket in order to attempt to regain it,
one could argue that i lost it because of own dumbness and thats not even wrong, But i lost it in the process of protecting the bot, not as a direct effect of the compromise.

Here the message i wrote to the support:


> Hey there,  
> this means a lot to me so i would be happy to get a short attention from whoever reads this on the supporting end.  
> I lost this account a couple days ago to a scammer for a time period of about 26 hours.<br><br>
> My account had the Early verified bot developer badge for the bot Shoob, bot id: 673362753489993749.  
> I lost my Early verified bot developer badge during the time period the scammer had the account, although not because he did something, but because i asked the admin of the discord developer team to remove me in order to protect the bot.  
> After i got the account back, the admin of shoobs team already added me back to the team but sadly it seams that does not reinstate the badge :((((...i would lie to say the badge didnt make me proud and i would love to have it back although i will accept all outcomes, my id: 195906408561115137.  <br>
> I love discord and it would mean the world to me if it was possible to get it back.<br><br>
> here the data again  
> Bot id: 673362753489993749  
> My account(this) id: 195906408561115137  
> The Developer teams id(i am a part of it again): TEAM ID  
> I added a screenshot of a old chat with the animesoul owner where we got the badges...  
> Kind regards,  
> Liz3

I quickly got a answer, note that for the account restoration it took almost 16 hours, this answer came within 15 minutes:


> Hey Liz3,  
> Thanks for reaching out to us!  
> As we recently announced in our official Discord Developers server, we discontinued the verified developer profile badge for anyone who submitted their bot for verification after August 19th, 2020. Any bot which requested verification prior to that date and is approved for verification will still receive the profile badge, now renamed the Early Verified Developer badge.  
> When we announced the Bot Verification process, we promised that it wouldn't be a long and difficult process. We wanted to maintain a five-day turnaround time, and we haven't done that. We’re taking the following step to try and better meet that commitment.  
> We’ve approved thousands of bots so far. As time goes on, the verification queue has become more and more filled with fraudulent submissions by individuals that are not submitting actual bots, but are going to extreme lengths to get a profile badge. These submissions are hindering the ability for legitimate bots to get verified in time for the deadline.  
> All verified bots will continue to receive the Verified checkmark. The checkmark for your bot is an important way for our community to recognize your bot as a trusted bot partner. The only thing we've discontinued is the special badge on a developer's profile.  
> I sincerely apologize for any confusion or disappointment this causes. If you have any further questions regarding this change or anything else, I'd be happy to help further, and please consider joining our Developers server as well for further announcements regarding the Discord API and our bot verification program.<br><br>
> Sincerely,  
> Support person

I cannot express how incredibly disgusting the answer is, i was really thinking to include the persons name, but i have enough respect not to,
but this answer shows the support person did NO EFFORT to even READ my request and just went on with a simple copy paste answer...which is extremely disrespectful, considering i spent time detailing the case.

Do i not even deserve a human answer?
I then annoyed answered them with:

> did you read my question? i had it.  
> the bot is verified and i had the badge.  
> Why does the support seam to just paste answers copy paste, i spent time detailing my case and get hit like that. Please read my case and give he a human answer if possible.  
> Liz3. 

and importantly:

> Any bot which requested verification prior to that date and is approved for verification will still receive the profile badge, now renamed the Early Verified Developer badge  
> This applies here

They then just answered with, no sorry cant do anything...

wow, not a single interest in providing help, not only in the regards that the **important request** to lock or restore the account took almost a day and this was answered in 15 minutes, but also that they really do no effort in helping.

**But it gets even better!**

Out of frustration i opened a new ticket, with a very similar content to the original above,
to which i got this answer

> Hey Yann,<br>
> Thanks so much for gathering all of that info for me! I just wanted to let you know that I'll be escalating this ticket to our dev team to look into further. I genuinely apologize for the inconvenience in the meantime and will keep you updated here as soon as I hear back!  
> Let me know if you have any other questions at any time!<br><br>
> Best,  
> Another support person


That sounded so good, i answered thanking and that i would wait patiently,
wait, wait, *wait to this day*

Yes to this day they did not answer that ticket, i still want a answer as i think i made a good argument,
in the mean while discord removed the sign in on their support site, so all these texts are from the received emails....

Thats it!