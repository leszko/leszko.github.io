---
layout: post
image:  assets/images/conference/2021-01-20-cloud-native-asturias.jpg
title:  Architectural Caching Patterns for Kubernetes
conference: Cloud Native Asturias
conference-link: https://cloudnativeasturias.com/
place: Online
tags: [Talk]
event: https://community.cncf.io/events/details/cncf-asturias-presents-cloud-native-asturias-jan21/#/
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
