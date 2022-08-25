# Theoretical questions

**Please write 1-4 sentences about what you know about the following topics**

### 1) IP, subnet mask

IP is the Internet Protocol, the most dominant protocol for sending data packets across a network. The IP address is an integer (32-bit for IPv4 and 128 for IPv6) that identifies an IP-aware device (such as PC's and routers, but not switches and bridges). The subnet mask is bit mask (precisely, a prefix of 1's followed by a suffix of 0's) used to identify which "sub network" an IP address belongs to; If two IP addresses produce the same result when bitwise and-ed against a subnet mask, then they belong to the subnet.

### 2) TCP/IP Model, protocol examples

The TCP/IP is a collection of communication protocols arranged in a 4-layer architecture; each protocol belongs to one layer, offers services to the layer directly above, and uses services from the layer directly below. The layers bottom to top with example are:

1. Link: Ethernet
2. Internet: IP and IPsec
3. Transport: TCP and UDP
4. Application: DNS

### 3) TCP vs UDP

Both TCP and UDP are transport-layer protocol that send a stream of data end-to-end (i.e. abstract the intermediate devices away). TCP offers a higher quality service in the sense that it ensures packet deliver and orderly delivery of packets; UDP doesn't do that. On the other hand TCP incurs bigger overhead compared to UDP; it's a tradeoff.


### 4) DNS, record types

DNS (also known as the root of all headache) is the Domain Name System, an application-layer protocol that mainly maps high-level string-based addresses (called domain names) to lower-level IP addresses, among other functions. DNS servers store these mapping in a database of records, of which there are [a lot](https://en.wikipedia.org/wiki/List_of_DNS_record_types) of types. Some of the notable types are:

* A: address record, maps a domain name to an IP-v4 address.
* AAAA: same, but maps to IPv6.
* CNAME: canonical name, maps a domain to a domain.
* MX: mail exchange, maps a domain to a mail server.

### 5) HTTP, GET/POST

HTTP is the Hyper Text Transfer Protocol, an application-layer protocol for sending/manipulating documents (text, links, images, etc) end-to-end. It has several request types, each of which corresponds to an action. The most notable are

* GET: request to get (retrieve) a document at a specific address.
* POST: request to fill some form on a document (textbox, drop-down list, etc).

### 6) Nginx

Nginx is a multi-functional program that acts as a web server, load balancer, web cache, and probably more. It is the most widely deployed web server and the most pulled Docker image, so it's a pretty big deal.

### 7) Symmetric/asymmetric keys, key size, TLS certs

Encryption algorithms can be divided into symmetric and asymmetric. Symmetric algorithms use the same key for encryption and decryption while asymmetric algorithms uses different keys (usually called public and private keys). Key size if the number of bits in its binary representation (typically 128 bits for symmetric AES, 4096 for asymmetric RSA). TLS certificates are files consisting of encryption keys and metadata used by the TLS (Transport Layer Security) and other protocols to ensure secure communication (content of communication is encrypted, content is not modified, party is who they claim they are, etc).

### 8) Virtualization, hypervisor types

Virtualization is running programs in a controlled environment (called virtual machine) that gives the program the illusion that its running on dedicated hardware, even when it isn't. Hypervisors are programs that manage such virtual environments and come in two types:

* Type 1: the hypervisor runs directly on physical hardware.
* Type 2: the hypervisor runs as a normal process on top of an operating system which in turn manages hardware.

### 9) Containers, how they work

Containers are isolated environments in which processes are provided with virtual operating system resources, as opposed to virtual machines which provide virtual hardware. These environments are implemented on top of numerous process isolation mechanisms such as Linux cgroups and namespaces.

### 10) Alpine docker images

Alpine Linux is a lightweight Linux distribution. It leverages technology originally meant for embedded systems (BusyBox and `musl`), but recently people realized that it can be used as a docker image to run applications in when a full-blown Ubuntu server is an overkill.

### 11) What are docker compose and kubernetes are for

Docker compose is a tool for automating the deployment of multi-container applications on a Docker system. While Kubernetes also deploys multi-container applications, it offers much more _orchestration_ functionality: manages multiple Docker hosts, manages networking between them, recovers from errors, recovers from changes in availability, etc.

### 12) List some Kubernetes entities (e.g. pods)

* Deployments: rules for deploying stateless applications.
* StatefulSets: rules for deploying stateful applications (useful stuff, that is).
* Secret: a (possibly encrypted) storage of values, ideal for storing passwords.
* Roles: privilege rules for entities in the cluster.

### 13) Gitflow

Gitflow is a software development workflow where the software repository is divided into several _permanent_ branches such as release, feature, development, etc. This approach is usually contrasted with trunk workflow, where there is a main branch and many _temporary_ branches are forked and merged into it. Trunk workflow is more popular nowadays.

### 14) Do you have experience with GitLab CI / Github Actions / Jenkins? What stages can be used there

I have simple (i.e. from some university course projects, not industry) experience with GitHub Actions and GitLab CI and a simpler experience with Jenkins. However, I have a clear idea on what they can do; i.e. I can Google them quite efficiently :)

Typical stages include build, test, stage, deploy, etc.

### 14) Do you have experience Terraform/Pulumi for deploying cloud resources. Ansible/Chef for provisioning?

Used Terraform to deploy to Azure for one course project. Used Ansible to provision infrastructure in several course projects. Also at the level of experience where I can Google those things like charm.

### 15) SQL / NoSQL, CAP theorem, examples

SQL stands for Structured Query Language, but here it is a database paradigm where data are represented as a table with rows. It has a strong mathematical formalism called _relational algebra_, which is why is gained strong traction historically. NoSQL is any database paradigm that diverges from the classical relational model, such document-based (MongoDB), graph-based (Neo4J), and more.

CAP is a theorem stating that no distributed system can provide Consistency, Availability, and Partition tolerance at the same time. Example: consider a database with nodes A, B, C, and D. Suppose a network error causes a split where A and B are in one partition and C and D in another. If we needed the system to maintain availability, the two partitions are going to diverge as they are unable to sync, sacrificing consistency. Otherwise, we have to pause one of the partitions, sacrificing availability. So indeed, you can have either PA or PC (AC is a bit more complicated).

There's an extension to the theorem called PACELC theorem which addresses the absence of partitioning, it's quite cool :)

### 16) Kafka, RabbitMQ

Both Kafka and RabbitMQ are distributed frameworks for message passing at the large scale and high performance. The fundamental difference between them is in the details of message passing: in Kafka, client subscribe to events in a certain topic, RabbitMQ doesn't follow such a model.

### 17) AD, LDAP

Microsoft Active Directory (AD) and the Lightweight Directory Access Protocol (LDAP) are both implementations of a directory service, a key-value mapping. What distinguishes these protocols from typical databases is that the structure of data resembles that of directories (trees), with more loose rules regarding what data can be stored. This is most popular for management purposes in organizations (user data, network resources, etc). I actually worked with LDAP in one of my courses (it was painful).
