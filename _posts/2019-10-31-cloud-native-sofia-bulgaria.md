---
layout: post
image:  assets/images/2019-10-31-cloud-native-sofia-bulgaria.jpg
title: Where is my cache? Architectural patterns for caching microservices by example
conference: Kubernetes & Cloud Native Computing Bulgaria
conference-link: https://www.meetup.com/Cloud-Native-Computing-Bulgaria/
place: Sofia, Bulgaria
date: 2019-10-31
tags: [Talk]
event: https://www.meetup.com/Cloud-Native-Computing-Bulgaria/events/265401874/
---

Everybody needs caching! However, where exactly to place it in your system? Inside your application or as a layer in front of it? Inside or outside the container? In the era of Cloud Native and Microservices these questions get even more complicated. In this session I'll present different architectural patterns for distributed caching: Embedded, Client-Server, (Kubernetes) Sidecar, and Reverse HTTP Proxy Caching.

During this talk you'll learn:
- What are the design options for including the caching layer
- How to apply caching layer in Istio (and Service Mesh in general)
- How to use distributed HTTP caching without updating your microservices
- Common pitfalls when setting up caching for your system