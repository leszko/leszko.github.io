---
layout: post
image:  assets/images/blog/2019-12-03-hazelcast-resilient-to-kubernetes-zone-failures.jpg
title: Hazelcast Resilient to Kubernetes Zone Failures
source: https://hazelcast.com/blog/hazelcast-resilient-to-kubernetes-zone-failures/
---
Data is valuable. Or I should write, some data is valuable. You may think that if the data is important to you, then you must store it in the persistent volume, like a database or filesystem. This sentence is obviously true. However, there are many use cases in which you don’t want to sacrifice the benefits given by in-memory data stores. After all, no persistent database provides fast data access or allows us to combine data entries with such high flexibility. Then, how to keep your in-memory data safe? That is what I’m going to present in this blog post.