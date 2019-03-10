+++ 
date = 2019-03-09T16:49:54-08:00
title = "I Don't Like Slack"
description = ""
slug = "" 
tags = []
categories = []
externalLink = ""
series = []
+++

# Introduction

Ready for a bit of tech heresy? I really don't like Slack. 

I know that I'm going to get some blow-back on this one. Slack is extremely popular, to the point of near religious devotion at times.  To give you an idea of how popular Slack tends to be, the main complaint that I have noticed around is about the *quality* of their desktop client, not the service itself. And while I too like to complaint about Slack memory usage, I have more bones to pick with the service itself than I do with their desktop client.

## Not a Chatroom

Let's get this out of the way right now: Slack is not a rebuild of the old chat-room for a modern corporate audience. While the (temporary) existence of the IRC gateway into Slack bolsters that argument, Slack contains a number of features that historical IRC lacked, and these features completely change the way that users interact with it.

At a very high level, Slack has a level of persistence and ubiquity that IRC never had. Users interact with Slack via official apps only, and these synchronize what they've read across all devices. Second, these apps provide *notifications*, even on mobile, which makes Slack much more intrusive than IRC ever was. While IRC had logs and some clients would handle some primitive notifications, Slack creates the explicit expectation that:

1. Any notification sent to a user *will* be delivered, even if they're logged out.
2. No user is ever truly logged out if they own a smart phone.
3. Users will see everything that happened since they last logged in, and can catch back up themselves.

This means that not only are any users instantly accessible via Slack no matter where they are, but there's a soft expectation that users will re-read everything that happened while they were gone. This was not the relationship that most IRC users had with their channels, and thus we can categorize Slack as something significantly different from legacy chat-rooms.

## Mixed Importance

By and far the biggest issue with Slack is that many organizations use it for far too much.

In some ways, this is a consequence of geographically remote teams that cannot conduct their business in person. And in that regard, Slack is a positive good. I can create a personal Slack with my remote coworkers both to accomplish business tasks, and to maintain personal connections with people that I don't see on a regular basis.

Similarly, I can create group slacks for similar interests. I know that when I take a picture of an exciting car on the walk to work, I can post it to #cars. And when I want something to destress, #emergency-cute is always there. This helps me maintain bonds with coworkers over shared interests, and helps everyone humanize themselves in the otherwise impersonal medium of online communication.

Most commonly, I can also create group slacks over shared corporate goals. Teams obviously get their own channels, but so do initiatives both long and short. Channels exist for cross-team functional groups to help share information, as well as for short lived incidents to help keep everyone on the same page. Each channel serves a distinct puprose, so that we can all talk about the right things in the right places.

Can you see the issue yet? So I'm supposed to use Slack for team wide communication, cross functional communication, emergencies, outages, and inter-personal communication? That's a huge array of ways to use this tool, surely there are tools available for me to manage that wide array of notifications, right?

Nope! Not really. You can leave a channel, mute a channel, and ... that's it. It's a good thing that a notification from Slack only has one level of importance & urgency then! Oh ... wait. In this scenario it is functionally impossible for any user to setup a reasonable way to handle Slack notifications. Either they will treat everything like its urgent and leave notifications on, or treat everything as low priority and turn notifications off. The former turns Slack into the engine of stress and distraction, the latter makes you look disconnected and disinterested. Not exactly a great choice.

Side note: My wife used to work for \<large tech company\> and had to do some on call rotations a few years ago. She *still* flinches whenever she hears the Slack noise, four years later. Luckily I'm already in the habit of using silent notifications, otherwise we would have a problem over Slack by now.

Side side note: While I'm typically pretty ambivalent on off topic and #emergency-cute channels, I consider the over-utilization of such channels as the canary in the coal mine for worker unhappiness. Ignore at your peril.

## We Killed Email! But Not Really

One of the big selling points of Slack was that it was going to tame the beast that was email, which is kind of hilarious in retrospect.

First of all, the problem with email was people, not email. Excessive emailing, poor communication, and inappropriate repy-alls were *never* the fault of the tool, it was a person issue. With that in mind, why would making it easier to send more messages improve anything at all?

Second, I'm not sure if you've noticed, but *email never went away*. So now rather than killing off one method of communication and replacing it with a better one, we've doubled the number of channels where we can communicate. I'm sure that this won't cause any extra confusion or stress for anyone. 

There is zero chance in my estimation that Slack will ever come anywhere close to eliminating email. Email is ubiquitous, cheap, necessary to access a huge array of services, and extremely easy to use across organizational lines. It's also inherently asynchronous, which makes it more useful than Slack when a delayed response is acceptable or preferable.

Finally, Slack gives you almost no controls to actually work with messages once you've got them, and it makes Outlook 2002 look absolutely packed full of features in comparison. You can star a message or mark it un-read, but that's about it. No folders, no flags, not automated rules, and an incredibly weak threading model make it very hard to take actionable Slack messages and do something with them. 

Oh, and remember that Slack still acts somewhat like a chat room, albeit a more intrusive one. Messages come in all the time, and they push old messages ~~below~~ above the fold at a constant rate. If you don't handle a message quickly it will become effectively lost, and you will be doomed to flail around with the search tool to try and find it. 

# Recommendations

Okay, so I don't like Slack, you probably get that by now. So what do I recommend instead? Surprisingly, I recommend that we change the way we communicate with Slack, rather than I recommend replacing Slack. All of the following recommendations will require conscious buy-in from all members of the organization, and gentle reminders for those that don't follow the rules. 100% compliance is not needed to greatly improve the situation, but the higher the compliance the better.

## Bias Towards Single Channel Communication

A large amount of communication problems center around unnecessary changes in communication venue, such as Email to Jira or Jira to Slack. These channel changes are confusing and stressful for everyone, because now all followers must carry extra context about where the conversation might be happening. Unless if there is a compelling reason, you should keep every bit of communication in the same channel where it started, it makes it much easier for everyone to follow.

If you must change venues, leave a note on the previous venue terminating that conversation and indicating where it can now be found. An email indicating that an incident was moved over to the #INC1234 channel will both ensure that everyone knows where to find the new information, and knows to stop using the email and to instead look to the new venue. The goal is to ensure that there is only ever **one** active venue for a given topic, even if you have to change them mid-stream. Obviously changing venues mid-conversation is inferior to remaining on the same venue, but it is far better than leaving both venues open and all parties confused.

## Bias Towards Face to Face Communication

With the obvious caveat that remote work makes this harder, try to actually *talk* to your coworkers more. A casual "how are you doing?" Slack is vastly inferior to a "how are you doing?" conversation. Not only is the latter much more connecting, it'll also reduce the clutter in Slack and leave it open for things more worthy of urgent notification.

For remote workers, I recommend "how are you doing?" video chats. They require more planning, but I still think they're superior.

## Question the Utility of Everything

Every channel you're a member of increases the risk of distraction massively. Be honest about what channels are worth being a member of, and which ones aren't worth it.

I for one am no longer a member of any off topic channel in any of my Slacks. While they can be entertaining, they're just not worth the nagging feeling that there are messages I should be catching up on. 

## Explicit Organization Wide Rules of Engagement

Every organization needs internal rules around what methods of communication are appropriate for what tasks, and what the expectations around them are. Slack, Email, and SMS have vastly different implications for immediacy and importance. It's best to discuss this as an organization so that everyone is on the same page. I recommend that every organization setup explicit recommendations about what communication channel to use, and what timeline they should expect a response by. 

For example, with my team there's an explicit understanding that an email might take a day or two respond to (longer if you emailed me). So if I have a random thought at 7PM and email a teammate, I don't even expect it to be read until tomorrow, *and we have agreed on this fact beforehand*. My team has set down a guide on what should be used when, but has your team? Have other teams in the organization? Setting these rules org-wide not only reduces inter-team friction, but it also makes every team be more cognizant of the issue as well. 