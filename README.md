# haproxy for Docker

Runs haproxy in a Docker container.

# What is HAProxy?

HAProxy is a free, open source high availability solution, providing load balancing and proxying for TCP and HTTP-based applications by spreading requests across multiple servers.

# How to use this image

This image does not come with any default configuration.

Please refer to [here](https://cbonte.github.io/haproxy-dconv/) for documentation on configuring haproxy and [here](http://www.haproxy.org/git?p=haproxy-1.5.git;a=tree;f=examples) for example configs.

## Directly via bind mount

	docker run -d --name haproxy -p 80:80 -p 8080:8080 -v /path/to/haproxy.cfg:/etc/haproxy/haproxy.cfg:ro boggart/haproxy