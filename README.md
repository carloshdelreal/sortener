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

<div style="position: relative; padding-bottom: 56.25%; height: 0;"><iframe src="https://www.loom.com/embed/577a18ba560149deade41d93e59dd1ad" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"></iframe></div>


