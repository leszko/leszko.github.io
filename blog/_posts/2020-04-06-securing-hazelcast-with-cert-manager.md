---
layout: post
image:  assets/images/blog/2020-04-06-securing-hazelcast-with-cert-manager.jpg
title: Securing Hazelcast with Cert-Manager
source: https://hazelcast.com/blog/securing-hazelcast-with-cert-manager/
dzone: https://dzone.com/articles/securing-hazelcast-with-cert-manager
---
Cert-Manager became a standard way for issuing and rotating certificates in Kubernetes and OpenShift environments. Simple to install. Simple to use. Well integrated with Vault and other secret managers. No surprise it’s the way to go if you want to set up secure communication between your applications!

In this blog post, I show how to secure Hazelcast communication using keys provisioned with cert-manager. I focus on all necessary steps, from installing cert-manager and issuing certificates to using them for the Hazelcast member-to-member and client-to-member communication.
