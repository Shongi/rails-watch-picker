# Watches

A small Rails app that picks which watch from my collection to wear today.

Press **Randomize** and it picks a watch at random from the ones you haven't
worn yet in the current rotation. Each watch gets worn once before any of them
repeats.

## How it works

- Each watch has a `selected` flag and a `last_selected_at` timestamp.
- **Randomize** returns today's watch if one was already picked today.
  Otherwise it samples from the watches that are not yet selected and marks
  the chosen one as selected.
- The index page shows only the watches still waiting their turn.
- The rotation resets (all flags cleared) when every watch has been worn, or
  at the start of a new month.

## Tech stack

- Ruby 3.3.0, Rails 7.1
- PostgreSQL
- Hotwire (Turbo + Stimulus) with import maps, so no Node build step
- Plain CSS

## Setup

Prerequisites: Ruby 3.3.0, Bundler and a running PostgreSQL server.

```bash
bundle install
bin/rails db:setup   # creates the database, loads the schema and seeds the collection
bin/rails server
```

Then open http://localhost:3000.

The collection is defined in `db/seeds.rb` and the photos live in
`app/assets/images/watches/`. To change the collection, edit the seed file and
run `bin/rails db:seed:replant`.

## Tests

```bash
bin/rails test
bin/rails test:system   # needs Chrome
```

## Docker

The included `Dockerfile` builds a production image. It needs
`RAILS_MASTER_KEY` and a `DATABASE_URL` at runtime:

```bash
docker build -t watches .
docker run -p 3000:3000 \
  -e RAILS_MASTER_KEY=<your key> \
  -e DATABASE_URL=postgres://user:pass@host/watches_production \
  watches
```

## Python rewrite

There is also a Flask rewrite of this app,
[python-watch-picker](https://github.com/Shongi/python-watch-picker), which
keeps a pick history and lets you add watches from the browser instead of
editing seeds.

## License

The code is released under the [MIT License](LICENSE).
