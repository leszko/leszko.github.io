---
layout: post
image:  assets/images/blog/2018-11-30-how-to-scale-hazelcast.jpg
title: How to Scale Hazelcast IMDG on Kubernetes
source: https://hazelcast.com/blog/how-to-scale-hazelcast-imdg-on-kubernetes/
---

Hazelcast IMDG is well integrated with the Kubernetes environment. Using Hazelcast Kubernetes Plugin, Hazelcast members can discover themselves automatically and be grouped by services to form separate clusters in one namespace. What’s more, using Hazelcast Helm Charts you can deploy a fully functional Hazelcast cluster with a single command. If you’d like further detail, you can check out a detailed webinar on deploying cloud-native applications in Kubernetes here.

Now, it’s time to focus on the operational part and describe what to do if you want to scale up or down the number of Hazelcast members in a cluster.