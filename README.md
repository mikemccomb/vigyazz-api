# Vigyázz

Vigyázz will be an app designed to help users plan travel, particularly travel that could be multi-city or multi-national.

Users can sign up for an account to create a dashboard for their trip. Each location a user saves will show information such as weather, the current time in that location, and what the current exchange rate is if a different currency is in play.

## Tech stack

Technologies include Ruby on Rails backend, PostgreSQL database, [React.js frontend](https://github.com/mikemccomb/vigyazz-frontend), [Weather API](https://www.weatherapi.com/), [Currency API](https://currencyapi.com/), and Bootstrap.

## Installation

```bash
bundle install
rails db:create db:migrate db:seed
```

## Usage

```bash
rails server
```

<!-- You can run all the API tests from the `test` folder by running:

```bash
rails test
``` -->

## Roadmap

- Useful words/phrases in the local language
- Text notes
- Travel calendar
- Reservation/Ticket access
