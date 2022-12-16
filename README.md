# Sortener

## Getting started

sortened is an api to create short urls.

### How to run the project

to run this project it is assumed that you already have installed ruby and rails in your system as well as docker to run redis

- clone this repo
- `bundle install`
- `docker compose up`, this will create a docker container that has oppened connections to a postgresdb and a redis
- run `rails s` on another terminal
- run `sidekiq` on another terminal




