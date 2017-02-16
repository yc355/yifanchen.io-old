+++
date = "2017-02-11T13:58:09-05:00"
title = "Elixir, Phoenix, and Barebones Containerization"
draft = false

+++
As a developer whose first language and first web framework were respectively Ruby and Rails, I recently
began exploring new languages and frameworks that would be fun and challenging to learn.

Ideally, any new language and web framework worth diving into would satisfy the
demands of both the developers and the users of modern day web apps.
For developers, the language and framework should be **simple**
(<a href="https://www.infoq.com/presentations/Simple-Made-Easy" target="_blank">but not necessarily easy</a>) and
**productive**, and be able to deliver on users' expectations of modern web apps: **speed**,
**reliability**, and **real-time features**.

After an exhaustive and diligent exploration process (i.e., reading Hacker News), the
web framework that stood out to me the most was
<a href="http://www.phoenixframework.org/" target="_blank">Phoenix</a>, which uses the
<a href="http://elixir-lang.org/" target="_blank">Elixir</a> language running on the
<a href="http://www.erlang.org/" target="_blank">Erlang</a> VM. Each of these layers that
comprise the web framework exhibits the characteristics and functionality that ultimately
align well with the high-level web framework expectations of users and developers mentioned above.

*Read about why Phoenix, Elixir, and Erlang are so exciting
<a href="https://medium.com/@kenmazaika/why-im-betting-on-elixir-7c8f847b58#.ogyxiy452" target="_blank">here</a>.*

<a href="http://www.phoenixframework.org/docs/installation" target="_blank">Getting started</a>
with Phoenix is good, but let's go one step further. One starting point for working
with Phoenix containerized with Docker is to create a bare-bones, skeleton project...

``
mix phoenix.new web --no-brunch --no-ecto
``

...with this **Dockerfile**...
```Dockerfile
FROM elixir:1.4.1
MAINTAINER Yifan Chen <yifan@yifanchen.io>

ENV DEBIAN_FRONTEND=noninteractive

RUN mix local.hex --force
RUN mix local.rebar --force

RUN mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y -q \
  nodejs \
  inotify-tools

WORKDIR /app
```

...and this **docker-compose.yml**
```
web:
  build: .
  dockerfile: Dockerfile
  command: mix phoenix.server
  environment:
    - MIX_ENV=dev
    - PORT=4000
  volumes:
    - .:/app
  ports:
    - "4000:4000"
```
``docker-compose up``, navigate to ``localhost:4000``, and be amazed!
