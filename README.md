cf-sauce-connect-buildpack
==========================

A Cloud Foundry buildpack for running Sauce Connect.

Download the latest 4.x version of Sauce Connect for Linux.

Create manifest.yml

```
---
name: sauce-tunnel
memory: 2G
instances: 1
buildpack: https://github.com/davidehringer/sauce-connect-buildpack.git
env:
  SAUCE_USER: your_user
  SAUCE_API_KEY: your_api_key
```

```
$ tar -xvf sc-latest-linux.tar.gz 
x sc-4.1-linux/
x sc-4.1-linux/bin/
x sc-4.1-linux/include/
x sc-4.1-linux/lib/
x sc-4.1-linux/license.html
x sc-4.1-linux/lib/libsauceconnect.a
x sc-4.1-linux/lib/libsauceconnect.la
x sc-4.1-linux/include/sauceconnect.h
x sc-4.1-linux/bin/sc
$ cp manifest.yml sc-4.1-linux/
$ cd sc-4.1-linux/
$ ls 
bin		include		lib		license.html
$ cf push
```
