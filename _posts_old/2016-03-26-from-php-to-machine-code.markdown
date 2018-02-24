---
layout: post
title: From PHP to Machine Code
location: New York, NY, USA
excerpt: I recently gave a talk at a few conferences titled "From PHP to Machine Code". It explains how compilers and interpreters work in general, where are the performance gains to be found and how I applied all of that to build PyHP. PyHP is a little toy project which showcases the basics of taking source code of a programming language and executing it.
image: /blog/images/juozas-kaziukenas-at-php-uk-2016.jpg
---

I recently gave a talk at a few conferences titled "From PHP to Machine Code". It explains how compilers and interpreters work in general, where are the performance gains to be found and how I applied all of that to build [PyHP](https://github.com/juokaz/pyhp). PyHP is a little toy project which showcases the basics of taking source code of a programming language and executing it.

As I mention a few times in the talk, it is completely and utterly useless for practical use, but it's one of the fundamental skill-sets for any programmer. I think knowing how a bunch of text makes a computer do things at the low level is required knowledge for everyone.

I built this as a learning exercise and to test some ideas out.

Below is the video from PHP UK Conference in London.

<div class="video-container">
<iframe width="560" height="315" src="https://www.youtube.com/embed/Tm_awZP0vFY" frameborder="0" allowfullscreen></iframe>
</div>

> What exactly happens when you run `php example.com`? I wanted to answer this, so I decided to build my own PHP interpreter. Let me tell you what I learned and what do fancy words like opcodes and bytecode cache mean.
>
> With now two main rivals the standard PHP and HHVM from Facebook, there are plenty of choices to run your code fast. But they are both complicated projects, making it hard to understand the inner workings. Rather than relying on them to magically do the right thing, understand the principles of programming languages.
