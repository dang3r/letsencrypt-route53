# LetsEncrypt Route53

[![CircleCI](https://circleci.com/gh/dang3r/letsencrypt-route53/tree/master.svg?style=svg)](https://circleci.com/gh/dang3r/letsencrypt-route53/tree/master)

> A docker container for generating TLS certificates using certbot and Amazon
> Route53

TLS certificates allow data transferred on the Internet to be secure. The
traditional process of retrieving certificates and keys from certificate
authorities used to be a manual and tedious process. LetsEncrypt uses the ACME
protocl for simple and quick generation of certificates

## Getting Started

Clone this repository and build the docker image

```shell
git clone git@github.com:dang3r/letsencrypt-route53.git
cd letsencrypt-route53
make build
```

Set the following environment variables

```shell
export DOMAIN=<the domain you want a certificate for>
export EMAIL=<the email associated with the certificate>
export AWS_ACCESS_KEY_ID=<aws access key for route53>
export AWS_SECRET_ACCESS_KEY=<aws secret key for route53>
```

Run docker container for generating the script

```shell
make run
```

This will output all keys, certificates and logs to `./${DOMAIN}` in the repo
directory.

## Features

This projects makes is easy to:
- generate a TLS certificate and private key

## Licensing

MIT License.
