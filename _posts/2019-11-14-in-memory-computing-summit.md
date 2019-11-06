---
layout: post
image:  assets/images/posts/2019-11-14-in-memory-computing-summit.jpg
title: Where is my cache? Architectural patterns for caching microservices by example
conference: In-Memory Computing Summit North America
conference-link: https://www.imcsummit.org/2019/us/
place: San Francisco, United States
date: 2019-11-14
tags: [Talk]
event: https://www.imcsummit.org/2019/us/session/where-my-cache-architectural-patterns-caching-microservices-example
---

Everybody knows that we need a cache, but where exactly to put it? Inside your application or as a layer in front of it? In the container or outside the container? In the era of Cloud and Microservices these questions get even more complicated. In this session, I'll present different architectural patterns for distributed caching: Embedded, Client-Server, (Kubernetes) Sidecar, and Proxy Caching.

In this session you'll learn:
- What are the design options for including the caching layer
- Common pitfalls when setting up caching for your system
- Differences between distributed caching and in-process caching
- How to speed up a (micro)service without modifying it