---
layout: post
image:  assets/images/conference/2021-02-16-powering-digital-transformations.jpg
title: "5 Levels of High Availability: from Multi-instance to Hybrid Cloud"
conference: Powering Digital Transformation with Advanced ITSM
conference-link: https://www.brighttalk.com/summit/4720-powering-digital-transformation-with-advanced-itsm-2021/
place: Virtual
tags: [Talk]
event: https://www.brighttalk.com/summit/4720-powering-digital-transformation-with-advanced-itsm-2021/
slides: https://www.slideshare.net/RafaLeszko/5-levels-of-high-availability-from-multiinstance-to-hybrid-cloud
---

Does running your application on multiple machines mean it's highly available? Technically yes, but the term HA is already more than that. Take Kubernetes installation, if you install it on AWS, it's not considered HA unless your master nodes are in different availability zones, not only on different machines. And actually, there is much more on that topic.

In this session I'll present 5 high availability levels:
1. Multi instance
2. Multi zone
3. Multi region
4. Multi cloud
5. Hybrid cloud

I'll discuss real-life use cases we experienced while developing Hazelcast and present examples of the related technical features you may need: in-memory partition backups, zone aware partition groups, WAN replication.

In this session you'll learn:
- Why Kubernetes can be deployed in multiple zones but never in multiple regions?
- What options you have while designing for high availability (for both Cloud and On-premise infrastructures)?
- What are the trade-offs when choosing between high availability and strict consistency?
- What are the best practices for deploying consistent systems in Hybrid Cloud?
