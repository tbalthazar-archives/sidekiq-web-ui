# sidekiq-web-ui
A tiny Sinatra app to display the current state of a Sidekiq installation.

## Usage

This [standalone Sinatra app](https://github.com/mperham/sidekiq/wiki/Monitoring#standalone) helps monitoring a [Sidekiq](http://sidekiq.org/) installation running as a separate app.

I made this to monitor a Sidekiq installation running on Heroku, but it should be usable elsewhere too.

## Installation

```
git clone https://github.com/tbalthazar/sidekiq-web-ui.git
cd sidekiq-web-ui
bundle install
cp .env.example .env
```

Then :
- edit the `.env` file values.
- run `foreman start`
