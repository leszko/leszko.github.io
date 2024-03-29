---
layout: post
image:  assets/images/conference/2021-11-23-geekle-devopstars.jpg
title:  Architectural Caching Patterns for Kubernetes
conference: "Geekle: DevOpStars"
conference-link: https://geekle.us/devops
place: Virtual
tags: [Talk]
event: https://geekle.us/devops
slides: https://www.slideshare.net/RafaLeszko/architectural-caching-patterns-for-kubernetes-245118818
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
