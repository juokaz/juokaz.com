---
layout: post
title: Don’t fight Docker
location: New York, NY, USA
excerpt: Half of the hackernews crowd are all on Docker, while the other half are saying it will fade away. It might be tricky to decide which team to pick. I think you should absolutely try it. I don’t think it’s perfect, more infuriating at times than not, but it’s a healthy piece of kit for any team to pick up to improve their stack.
---

Half of the *hackernews* crowd are all on Docker, while the other half are saying it will fade away. It might be tricky to decide which team to pick. I think you should absolutely try it. I don’t think it’s perfect, more infuriating at times than not, but it’s a healthy piece of kit for any team to pick up to improve their stack.

Here is a challenge for any technology company - try running the whole stack on Heroku. If you can’t, your stack is too coupled and opinionated. In [The Twelve-Factor App](http://12factor.net/) by Heroku’s Adam Wiggins most concepts seem unnecessary at first. But it is one hundred percent right. Any application which follows those guides does actually work anywhere. From shared hosting, to providers like Heroku, to your own servers and now Docker.

This is what shipping applications as containers teaches as well. And by *teaches* I mean forces. It beats-out all the bad practices and replaces them with something better. After the first few weeks of ending up in forums where every solution to your problems is “just do it the Docker way”. Soon enough those concepts click. Because most of them are just simply good practices for developing isolated self-contained applications.

If Docker delivers anything, is that it teaches many more people the better way of shipping software.

All these ideas have been around for years. This is what makes a few assume that Docker is just the same old concept re-labeled with a prettier logo. Whatever, if that’s what it takes to get people to start using those concepts. Docker is a way to drag cowboy developers into creating sane architectures. *Yes*, *yes*, it’s all possible in many other ways as well, but. In reality most infrastructures are a barely reliable mess of configuration files just waiting to stop working.

A lot of people got too deep into managing servers, configuring low-level settings and growing neck-beards. I want to treat my infrastructure like it was all iPhone apps. Which means only caring about the application, not about the host itself. This is what Docker allows to do - an app is wrapped in a tiny layer of dependencies and can be installed on any machine. It just works. Except when it doesn’t, but when it does it makes managing big things a breeze.

Even with Puppet/Chef setups setting up servers is a delicate process. Especially when it comes to updates and migrations. Containers on the other hand are immutable (Gilt did an interesting [talk](http://tech.gilt.com/2014/07/02/immutable-infrastructure-with-docker-and-ec2/) on advantages of immutability). They don’t get updates and live for as long as there is no newer version. If something needs to be updated, a new container gets created and replaces the old one. If a developer decides he needs different services he gets them.

Full control in the hands of a developer. While application level dependencies could be managed with a plethora of tools, picking a web server was different. This meant that servers were being developed on a different path from applications and in most organizations developers had no input. No matter the reason, this is an unnecessary limitation. Going back to my iPhone app metaphor, any application, a web api or a cronjob, should be self-contained. A container is the easiest way to achieve this.

It’s not a silver bullet, though. Especially for production loads. [Why Docker is Not Yet Succeeding Widely in Production](http://sirupsen.com/production-docker/). Containers are still an awkward concept and areas like security are still being heavily worked on. From my experience, it tends to fail when one tries to make it do things as if a container was a VM. If you don’t, most payloads work without a problem.

For the past few months I’ve seen architectures built with Docker and the Amazon AWS containers service. Just like having your own little Heroku-like cloud. It is refreshing not to think about the servers at all, by relying on orchestration to manage the cluster. Everyone in the team now also has full flexibility to set up the system however they want, saving a lot of needless discussions.

Last year Amazon introduced [Lambda](https://aws.amazon.com/lambda/). A way to build applications without ever thinking about the concept of a server. Neat concept if anything. What it hints to me is the direction of the continued abstraction of computing. *Cloud* took away caring about CPUs and how to rack servers, Docker is taking away Ubuntu server updates, and technologies like Lambda will take away even the concept of a measurable instance. I think this is great.
