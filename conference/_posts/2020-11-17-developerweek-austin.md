---
layout: post
image:  assets/images/conference/2020-11-17-developerweek-austin.jpg
title:  Architectural Caching Patterns for Kubernetes
conference: DeveloperWeek Austin
conference-link: https://www.developerweek.com/Austin/
place: Virtual
tags: [Talk]
event: https://www.developerweek.com/Austin/
slides: https://www2.slideshare.net/RafaLeszko/architectural-caching-patterns-for-kubernetes
---

Kubernetes brings new ideas of how to organize the caching layer for your applications. You can still use the old-but-good client-server topology, but now there is much more than that. This session will start with the known distributed caching topologies: embedded, client-server, and cloud. Then, I'll present Kubernetes-only caching strategies, including:
- Sidecar Caching
- Reverse Proxy Caching with Nginx
- Reverse Proxy Sidecar Caching with Hazelcast
- Envoy-level caching with Service Mesh

In this session you'll see:
- A walk-through of all caching topologies you can use in Kubernetes
- Pros and Cons of each solution
- The future of caching in container-based environments
