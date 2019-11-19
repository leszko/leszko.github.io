---
layout: post
image:  assets/images/blog/2018-12-12-how-to-set-up-hazelcast-on-ecs.png
title: How to Set Up Hazelcast IMDG on AWS ECS
source: https://hazelcast.com/blog/how-to-set-up-hazelcast-imdg-on-aws-ecs/
---

Amazon ECS (Elastic Container Service) is a container orchestration service that supports Docker containers. It allows to create scalable clusters backed up by EC2 Instances. Hazelcast IMDG is distributed in a form of Docker Image and provides the plugin for auto discovery in the AWS environment, therefore it can be simply configured to work on AWS ECS. This post presents this process step-by-step and the source code for this example can be found here.