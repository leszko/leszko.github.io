---
layout: post
image:  assets/images/blog/2019-05-30-hazelcast-sidecar-container-pattern.jpg
title: Hazelcast Sidecar Container Pattern
source: https://hazelcast.com/blog/hazelcast-sidecar-container-pattern/
---

The sidecar pattern is a technique of attaching an additional container to the main parent container so that both would share the same lifecycle and the same resources. You may think of it as a perfect tool for decomposing your application into reusable modules, in which each part is written in a different technology or programming language. For example, imagine you have an application with some business logic and you want to add monitoring. This monitoring part can be a separate component, very generic, and packaged as a Docker image. Then, you can deploy both images together, and the monitoring container plays the role of a sidecar providing additional functionality to the main application.

Kubernetes allows running multiple containers in one Pod, which effectively means sharing resources (host, network, filesystem, etc.) by those containers. You might have heard about it because of the Istio service mesh, which has recently become very popular and uses the sidecar pattern to run a proxy container (that steers the traffic coming from/to the main application container).

Hazelcast is a perfect fit to be run as a sidecar because it’s a very generic tool that provides additional functionality to the business logic. Let’s see how we can use Hazelcast sidecar topology as opposed to the classic Hazelcast topologies and implement it all in the Kubernetes environment.