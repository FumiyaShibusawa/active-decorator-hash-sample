# README

This is a sample code to check if my forked active_decorator works with Hash object. When passing objects like below,

```
{key: [ActiveRecord, ActiveRecord, ..., ActiveRecord]}
```

active_decorator dig into Hash values recursively to decorate ActiveRecord models.


## Setup

```
$ docker-compose build && docker-compose up -d && docker-compose exec app bash
$ rails db:create db:migrate db:seed
$ rails s -b 0.0.0.0
```
