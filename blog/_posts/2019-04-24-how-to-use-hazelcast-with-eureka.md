---
layout: post
image:  assets/images/blog/2019-04-24-how-to-use-hazelcast-with-eureka.jpg
title: How to Use Hazelcast Auto-Discovery with Eureka
source: https://hazelcast.com/blog/hazelcast-auto-discovery-with-eureka/
dzone: https://dzone.com/articles/how-to-use-hazelcast-auto-discovery-with-eureka
---

Hazelcast IMDG supports auto-discovery for many different environments. Since we introduced the generic discovery SPI, a lot of plugins were developed so you can use Hazelcast seamlessly on Kubernetes, AWS, Azure, GCP, and more. Should you need a custom plugin, you are also able to create your own.

If your infrastructure is not based on any popular Cloud environment, but you still want to take advantage of the dynamic discovery rather than static IP configuration, you can set up your service registry. One of the more popular choices, especially in the JVM-based microservice world, is Eureka (initially developed by Netflix and now part of Spring Cloud). Eureka follows the client-server model, and you usually set up a server (or a cluster of servers for high availability) and use clients to register and locate services.

Hazelcast can use Eureka for auto-discovery thanks to the Hazelcast Eureka plugin. This blog post presents a step-by-step guide of how to set up your Eureka server and use it for the Hazelcast discovery. As an example, we use a common scenario in which we embed Hazelcast into a Spring Boot web service (which does nothing more than puts and reads values from the Hazelcast cluster). The source code for this example is found here.