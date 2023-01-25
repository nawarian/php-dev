php-dev
---

A docker-based development environment to work with [php-src](https://github.com/php/php-src).

## Installing

First clone the repository:

```
$ git clone https://github.com/nawarian/php-dev
```

Then run the `install.sh` utility:

```
$ ./bin/install.sh
```

## Running

Whenever you want to bring up the development environment, just run the following:

```
$ phpdev
```

The above command will bring up a docker execution context with PWD mapped to `/opt/php-src`.

You're expected to run this command inside a `php/php-src` clone.

