# Test Project to Demo Some Tools

This project containers a small sinatra app that prints out some text.  It listens on the default 4567 port.

## Testing Locally with Mac OSX

```bash
$ git clone https://github.com/tongueroo/sinatra
$ cd sinatra
$ bundle
$ ruby hi.rb
```

## Testing Locally with Docker

The app is also dockerized so you can test this via docker.

```bash
$ docker build -t tongueroo/sinatra . # you can skip this step if you want to just pull the image from DockerHub.
$ docker run -d -p 4567:4567 --name hi tongueroo/sinatra
$ curl localhost:4567 ; echo
42
$ docker stop hi ; docker rm hi
hi
hi
$
```

More details are covered in this blog post: [AWS Elastic Beanstalk: Under the Hood](xxx).