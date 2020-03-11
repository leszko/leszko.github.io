---
layout: post
image:  assets/images/conference/2020-05-20-full-stack-finland.jpg
title:  Where is my cache? Architectural patterns for caching microservices
conference: Full Stack Developer Conference Finland
conference-link: https://fsdc.fi/
place: Helsinki, Finland
tags: [Talk]
event: https://fsdc.fi/
upcoming: true
---

Everybody needs caching! However, where exactly to place it in your system? Inside your application or as a layer in front of it? Inside or outside the container? In the era of Cloud Native and Microservices these questions get even more complicated. In this session I'll present different architectural patterns for distributed caching: Embedded, Client-Server, (Kubernetes) Sidecar, and Reverse HTTP Proxy Caching.

During this talk you'll learn:
- What are the design options for including the caching layer
- How to apply caching layer in Istio (and Service Mesh in general)
- How to use distributed HTTP caching without updating your microservices
- Common pitfalls when setting up caching for your system