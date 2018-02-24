---
layout: post
title: The miseries of hosting in the cloud
location: Selbyville, DE, USA
excerpt: Cloud is for building architectures. It's a terrible idea to just upload a web app and call it a day. It is by far the most expensive and likely unreliable way to host anything. Unless you throw in a load balancer in front, a pool of web servers, etc. Soon enough you end up building an architecture for something which could have been hosted for $5 a month on any hosting platform.
---

Some time ago we decided to build a subjectively large distributed system. It had 3,000 nodes and was using [Amazon SQS](http://aws.amazon.com/sqs/) as the communication system. Amazon SQS was easiest because we were already hosting everything on Amazon. What we didn't realize, though, was that Amazon charges for all operations on the queue.

Three thousand processes calling to get new messages is enough for Amazon to call you. To suggest that you probably are doing something wrong. Yet impressed by your own skills you think it is all good. Next thing you know the bill is growing by $1,000 every hour. The Amazon support person wasn't just looking for someone to chat with.

<img src="/blog/images/cloud-bill.jpg" alt="Cloud bill" class="center" />

Shit.

This has happened a few times since. All because no one reads the documentation. Depending on your system size, you probably should. Understanding what you are going to pay for is crucial. While any cloud provider makes it easy to spin up a database, it might not be worth the cost. Installing a database server yourself on a server might be better. It depends.

In our case having an additional instance to host a queueing system would have barely costed anything. Yes, managing it would have required additional effort and setup time. But not having to spend $1,000 every hour is worth the wait. The functionality offered by a cloud service, be it an application or a disk space, should be well understood. Sometimes the only thing it offers is the ease of setup.

On the other hand, if you are not using 80-90% of the provisioned capacity chances are you are not getting a good deal. Based purely on previous experience. Make those servers sweat. The _best_ way to achieve this is to host a website in the clouds. There should be a badge you could unlock for doing so. A badge of shame.

Cloud is for building architectures. It's a terrible idea to just upload a web app and call it a day. It is by far the most expensive and likely unreliable way to host anything. Unless you throw in a load balancer in front, a pool of web servers, etc. Soon enough you end up building an architecture for something which could have been hosted for $5 a month on any hosting platform.

<img src="/blog/images/cloud-fishing.jpg" alt="Cloud fishing" class="right" />

It doesn't scale by itself either. Nor does it run smoothly because of it. It is merely a collection of raw tools you can connect up to form whatever you need. Unless you really know what you are doing, it will end up just causing more problems. Like when the server restarts and all the data is gone, because you stored it in the local server disk.

Actually the scaling part is quite tricky. None of the services offer anything which does it neatly for you. You end up doing it by hand, throwing extra servers when the load becomes to much to handle. But then soon enough you have loads of extra capacity. We are back to buying servers and racking them up for that max day which just might not happen.

Amazon also has a Cassandra-like database called [DynamoDB](http://aws.amazon.com/dynamodb/). It doesn't have any sort of auto-scaling available, yet charges for the provisioned throughput. You either provision for max throughput or the application lags. It becomes rather wasteful very fast. Eventually we implemented the [dynamic dynamodb](https://github.com/sebdah/dynamic-dynamodb) provisioner. It reduced the bill by more than 50%.

Measuring every metric of the server, applications and the network is the key. Ideally all this should be a bunch of scripts. Every month I sit down to review the cloud bills and analyze the metrics. If some once-a-day cron job is the only reason the server needs to be massive, spending some effort really pays off. It rarely is about having two or three servers. It's more about how the applications are structured and how well they use the existing capacity.

Avoiding monolithic services and big tasks helps. The smaller the units are made the easier it becomes to fit them into a distributed system. To be honest, successful cloud projects are rarely about knowing how to use the service effectively. It is always about knowing how distributed systems need to be architected. The cloud is just a tool.

<img src="/blog/images/designer-cloud.jpg" alt="Designer cloud" class="right" />

For most applications doing that leap from one server to two is the most difficult. Going from two to a hundred is relatively simple. When building anything new keep that in mind. Design with scalability. Usually having some sort of a queue system between the components makes it easy to scale them out. For most old apps you can just keep getting a bigger instance.

[Hardware is cheap, programmers are expensive](http://blog.codinghorror.com/hardware-is-cheap-programmers-are-expensive/). Up to the point when the hosting bill starts to be bigger than one great programmer's or sysadmin's salary. A few months in it, and it could be two of them, playing a foosball match while the servers are melting.

All this sounds like a terrible to even consider touching. You might be thinking. And it probably is. It's really not that more difficult to scale out while using any VPS provider. It is much cheaper too. So why bother with all the hassle of doing it _right_?

One of my favorite features of the Amazon services is the unused servers' market. If your offer price is below the average you will get those instances until enough people bid lower. At any time you might have none or 10 servers. Allows to have an unreliable cluster of servers for 4 times less.

If having an unknown amount of servers powering on and off sounds like a disaster to you, I would stay away from the cloud if I was you. This is kind of the point of it and what makes it effective. Any well written distributed system would run easily on this. A fixed layout system with servers waiting to do their job is simply not wise.

The cloud starts to make sense when you start building architectures or you need the freedom to setup custom setups. In all other cases, you paying extra to be cool. Which, arguably, is not so rare nowadays. On a different note, I mentioned _"cloud"_ 11 times. Take as many shots.

*\*all illustrations done by Frits from hikingartist.com*