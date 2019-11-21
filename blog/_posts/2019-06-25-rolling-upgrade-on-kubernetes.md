---
layout: post
image:  assets/images/blog/2019-06-25-rolling-upgrade-on-kubernetes.jpg
title: Rolling Upgrade Hazelcast IMDG on Kubernetes
source: https://hazelcast.com/blog/rolling-upgrade-hazelcast-imdg-on-kubernetes/
---

Hazelcast IMDG is tightly integrated into the Kubernetes ecosystem thanks to the Hazelcast Kubernetes plugin. In previous blog posts, we shared how to use auto-discovery for the embedded Hazelcast and steps for scaling it up and down using native kubectl commands. In this post, we’ll focus on another useful feature, Rolling Upgrade. You can apply it to your Hazelcast cluster no matter if you use client-server or embedded Hazelcast and regardless of whether you deploy using Kubernetes StatefulSet or Deployment. Everything is, as always with Hazelcast, intuitive and straightforward.