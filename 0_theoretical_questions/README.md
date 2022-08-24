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



### 9) Containers, how they work
```
Type here...

```

### 10) Alpine docker images
```
Type here...

```

### 11) What are docker compose and kubernetes are for
```
Type here...

```

### 12) List some Kubernetes entities (e.g. pods)
```
Type here...

```

### 13) Gitflow
```
Type here...

```

### 14) Do you have experience with GitLab CI / Github Actions / Jenkins? What stages can be used there
```
Type here...

```

### 14) Do you have experience Terraform/Pulumi for deploying cloud resources. Ansible/Chef for provisioning?
```
Type here...

```

### 15) SQL / NoSQL, CAP theorem, examples
```
Type here...

```

### 15) Kafka, RabbitMQ
```
Type here...

```

### 15) AD, LDAP
```
Type here...

```
