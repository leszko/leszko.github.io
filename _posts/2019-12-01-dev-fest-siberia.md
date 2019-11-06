---
layout: post
image:  assets/images/posts/2019-12-01-dev-fest-siberia.jpg
title: Where is my cache? Architectural patterns for caching microservices by example
conference: DevFest Siberia 2019
conference-link: https://gdg-siberia.com/
place: Novosibirsk, Russia
date: 2019-12-01
tags: [Talk]
event: https://gdg-siberia.com/
---

Everybody knows that we need a cache, but where exactly to put it? Inside your application or as a layer in front of it? In the container or outside the container? In the era of Cloud and Microservices these questions get even more complicated. In this session, I'll present different architectural patterns for distributed caching: Embedded, Client-Server, (Kubernetes) Sidecar, and Proxy Caching.

In this session you'll learn:
- What are the design options for including the caching layer
- Common pitfalls when setting up caching for your system
- Differences between distributed caching and in-process caching
- How to speed up a (micro)service without modifying it