---
layout: post
image:  assets/images/conference/2021-01-06-cloud-native-london.jpg
title:  Architectural Caching Patterns for Kubernetes
conference: Cloud Native London
conference-link: https://www.meetup.com/Cloud-Native-London
place: London, United Kingdom (virtual)
tags: [Talk]
event: https://www.meetup.com/Cloud-Native-London/events/273170961/
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
