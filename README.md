# Test Project for Demo

This project contains a small sinatra app that prints out some text.  It listens on the default 4567 port.

## Testing Locally with Mac OSX

    $ git clone https://github.com/tongueroo/sinatra
    $ cd sinatra
    $ bundle
    $ ruby hi.rb

## Testing Locally with Docker

The app is also dockerized so you can test this via docker.

    $ docker build -t tongueroo/sinatra . # you can skip this step if you want to just pull the image from DockerHub.
    $ docker run --rm -d -p 4567:4567 --name hi tongueroo/sinatra
    $ curl localhost:4567 ; echo
    42
    $ docker stop hi ; docker rm hi
    hi
    hi
    $

This demo project was used in these blog posts:

* [Gentle Introduction to How AWS ECS Works with Example Tutorial](https://blog.boltops.com/2017/09/09/a-gentle-introduction-to-aws-ecs-with-example-tutorial)
* [AWS Elastic Beanstalk: Under the Hood](https://blog.boltops.com/2017/07/19/under-the-hood-of-aws-elastic-beanstalk-part-1)
