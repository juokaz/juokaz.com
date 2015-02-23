---
layout: post
title: Expectations for modern applications
location: New York, NY, USA
excerpt: Some years ago there was the social network, the messaging, the accounting software, etc. Most people used a single tool for the job. While it didn’t cause major issues for consumers, it was painful for businesses. To capture the market a lot of business tools tried to incorporate as much functionality as possible. This lead to big, bloated and complicated software suites. Most of them are still being used today, because no one is brave enough to touch them.
---

Some years ago there was *the* social network, *the* messaging, *the* accounting software, etc. Most people used a single tool for the job. While it didn’t cause major issues for consumers, it was painful for businesses. To capture the market a lot of business tools tried to incorporate as much functionality as possible. This lead to big, bloated and complicated software suites. Most of them are still being used today, because no one is brave enough to touch them.

Why did we do things this way?

It used to be expensive and difficult to manage many different applications. Any sort of decoupling commonly lead to slow performance and a lot of headaches. Thus the whole industry agreed that the only way to build things was singular. [One language, one platform, one application](/blog/beyond-the-php-mountain.html). These limitations have also influenced the way applications get designed. Building single-purpose tools was not easy.

Furthermore those applications were terrible at sharing data. A warehouse management application did just that, and no other system had access to its data. No one wanted to manage two or more separate systems doing *kind of* the same thing. Almost always that would have meant inconsistencies, overhead and fragmentation. Silos got created to manage everything instead. The issue with silos is that they are extremely hard to improve. It is almost always impossible to replace one part, rather the whole thing would have to be rebuilt from scratch. So even a modern startup couldn’t improve much, because unless the service replaced it all it would be a yet another thing to manage.

Companies are not worried about the cost of new tools. If it provides a return, it will get used. The opportunity cost is the difficult one to handle. Training staff, copying data in and out, handling updates, etc. All these things are in a way of adopting new technology. With SaaS on a rise a lot of these obstacles got removed, but it didn’t solve the critical issue. An application still had to be *used* to provide value.

In this great talk on [managing growth & delivering magic](http://thisweekinstartups.com/launch-incubator-des-traynor/) Des Traynor describes expectations for modern applications as:

> Not a destination where people go to, but something that expels value.

In other words, instead of an application being something I need to check on, it will let me know when it has something to say. Otherwise it will sit quietly in a corner.

A key to success for an application is how it gets and shares the data. If it doesn’t have an API, it won’t work. It only sometimes works because not everyone realizes how important this is. In a lot of cases the newly introduced tool should be ingesting data from other sources and providing some new insight. If done well it requires almost zero setup and drops an email when it has came up with something. For a user that means it has value and does not need any investment. Perfect.

For consumer applications, signing in with a social network and using the social graph is essential. If the application provides movie recommendations, it should be able to do it with a Facebook login alone. Based on what me and me friends like. I open it, login and it immediately shows the results. As opposed to having to first add *friends*, fill out forms, etc. Immediate result without having to do any work. With the ever-decreasing attention span of a mobile user, it either does this or no one will ever use it.

I like to use this quote by Richard Hamming when talking about data:

> The purpose of computing is insight, not numbers.

While hard to achieve, it also makes most people think of the self-aware [Skynet](http://en.wikipedia.org/wiki/Skynet_%28Terminator%29). But that’s what everyone wants.

When smartphones came out they weren’t that special at first. But a few years in they got notifications. Previous generation phones notified about text messages and emails. Yet a regular application asking for attention was unheard of. With notifications, thought, this has fundamentally changed. Fast forward to [today](http://ben-evans.com/benedictevans/2014/11/20/time-for-new-questions-in-mobile), it is not uncommon to have a few messaging apps. They will all let me know when I need to do something. I don’t need to open each of them repeatedly to see if there are new messages. It is fair to call them *apps*, because they do work differently than how applications everyone grew to expect did. While sounds trivial, I think this has transformed the way people interact with all applications.

This has spilled into non-mobile environments too. Running a company now means building a toolbox out of dozens of different applications. For example, *Trello* for tasks, *GitHub* for code versioning, *Slack* for messaging, *Stripe* for payments, *Pipedrive* for leads tracking, *Hit List* for todo lists, *TripIt* for travel plans, *Dropbox* for files. The list goes on. 10 years ago all this was one big application or it didn’t exist at all. Today many companies focus on doing one thing really well, leaving everyone else to pick the pieces to use.

What is a modern application? Something that has a simplified and focused interaction, pulls all the data it needs and provides insight without having to be used.
