---
layout: post
title: Beyond the PHP mountain
location: Szczyrk, Poland
excerpt: Why do language wars happen? They happen because for a long while you could only use one of them. Once you picked the one you liked, you kind of wished it was the best one. Hours of arguing that on the forums surely made that true. As developers started to call themselves _“X language developers”_ the whole industry got segmented.
---

Why do language wars happen? They happen because for a long while you could only use one of them. Once you picked the one you liked, you kind of wished it was the best one. Hours of arguing that on the forums surely made that true. As developers started to call themselves _“X language developers”_ the whole industry got segmented.

Many developers got sold on the idea of “one language to rule them all”. Using something built in a different language was considered crazy. Look at how many build or deploy tools got re-implemented just to allow staying on one language. Thus every time you read someone trashing other languages you are reading someone who is locked-in.

<img src="/blog/images/stormy-night-laptop.jpg" alt="Stormy night" class="right" />

For a while this made sense. Setting up an environment for a different language required so much experience, you just stuck with what you know. Otherwise the then fancy PHP 3 website was as _hackable_ as iCloud is today, supposedly. Now I can have a production-ready Node.js stack after 5 minutes on StackOverflow. So why not.

Learning a programming language is easy. Once you picked up a few of them, they all start to look the same. Yet this doesn’t matter, and too many developers focus on the syntax. The value in learning a different language is the different features it provides. Not how an array gets defined, but once you have it defined, what you can do with it.

Some languages just happen to be better at certain things. PHP is great for building web applications, it has a lot of built-in support for web tasks. Node.js is much better for concurrent I/O, it doesn’t block on most of them. Python beats them all for data processing. R allows to do even more crazy things with data. But you wouldn’t want to build websites for it.

Today using one language for everything just because you know it is plain wrong.

This narrow minded approach has also meant that most applications are too reliant on the framework they are built on. As with languages, being religious about this is too _limiting_. The problem with frameworks is they allow clean separation between application logic and themselves... But it’s oh so easy just to let it take care of you.

<img src="/blog/images/man-in-a-pot.jpg" alt="Man in a pot" class="right" />

Frameworks and libraries are feature obsessed and will sooner or later break your application. Or you just freeze a version of the library and have a stable app. One year from now it becomes something you give to a developer you hate to work on. Yuck. Maybe one day someone will figure this out. For now, you are kind of screwed.

Yet we go and build monolithic applications. Making it not only impossible to keep up with external changes, but also eventually making it hard to do any changes at all. Everyone has worked on a 5-year-old web application where even the most obvious things break the moment you touch them. And it only gets worse as time progresses.

But you can avoid this by not depending on any outside code. Build your framework instead! Heh, don’t do it. Instead, write applications which are isolated from the framework _carrying_ them. If it is a standard web application, then all what the framework should be doing is handling the routing of requests. Anything more and you rely on something which will sooner or later break.

But if all the web application is doing is routing requests, then why it has to be all in the same application? KAPOW! Now you got to the point when you can use different tools and languages for one application. Congratulations. You have changed your architecture style to be the opposite of monolithic applications.

In the same way as you are using APIs to communicate with outside services, you should do the same with internal applications. It’s called the service-oriented architecture (SOA. A lot of great resources - [Microservices - 72 resources](http://blog.arkency.com/2014/07/microservices-72-resources/)). There is nothing new about this, but it’s only now we have figured out how to build them efficiently. Years ago all this was implemented using remote call protocols and a lot of enterprise-grade magic juice. Today a bunch of RESTful APIs allow simple communication between say a Python data backend and a PHP frontend.

<img src="/blog/images/snail-mountain.jpg" alt="Snail mountain" class="right" />

Amazon.com has [famously](http://apievangelist.com/2012/01/12/the-secret-to-amazons-success-internal-apis/) used this architecture for absolutely everything. But it doesn’t have to be a big project to make sense. Small applications can be kept small by splitting them when requirements increase. It’s about making sure that no application is doing more than it needs to. Maintaining and building simple systems is much easier than the ones which do it all.

When NoSQL databases came out, everyone got confused how to migrate their existing relational data to them. Well you wouldn’t. Instead use it for what it was built for. So a graph database can be handling a recommendation service while everything else stays the same. It’s important to stop trying to run everything on one system.

[Docker](https://www.docker.com/) has made building isolated systems a commodity. Long gone are the days when a server running one thing could not be used for anything else. A server now is just a box, and any application builds its own environment inside it. Compared to virtual machines, it’s a much better choice for small applications.

One more thing.

This is not about switching out languages for different ones. It’s about understanding that systems can span many of them. Nowadays it’s all about distributed systems and isolated units in them. If you are still focused on a single language, don’t miss out. Things are changing quick.

I used to call myself a PHP developer, you are probably reading this because of that. But at some point I stopped carrying about languages and tools. They come and go. Now I work on building _things_. And these things tend to be a mix of everything.

*\*all illustrations done by Frits from hikingartist.com*