---
layout: post
image:  assets/images/conference/2021-10-22-voxxed-romania.jpg
title: Distributed Locking and Java
conference: Voxxed Days Romania
conference-link: https://romania.voxxeddays.com/
place: Romania (Online)
tags: [Talk]
event: https://romania.voxxeddays.com/
---

Some say that there is no such thing as "distributed lock". Still, sooner or later, you'd encounter a problem that only one of your application replicas may execute the given operation at the given time. How to do it right and safely using Java?

In this session I'll present the following aspects of distributed locking:
- using distributed locking libraries (Redis, Hazelcast, Zookeeper)
- optimistic vs pessimistic locking
- making locking safe with fencing
- split-brain issue and the rescue with consensus algorithms
- real-life use-cases for distributed locking

