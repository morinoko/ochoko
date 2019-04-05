# Ochoko

## Kanpai!

A bilingual (English/Japanese) Ruby on Rails web app for tracking and rating your favorite Japanese sakes. It also serves as an English and Japanese database of Japanese sakes.

Try out the app here: https://ochoko.herokuapp.com/

## Features

- Data entered in both Japanese and English
- App can be used in either Japanese or English
- Sign up (Facebook or email/password) and add tasting notes for the sakes you've drank

* The ['ajax' branch](https://github.com/morinoko/ochoko/tree/ajax) demonstrates using AJAX calls to load and post data asynchronously (for brewery resource only).

## Features to add in the future

- Search for sakes and breweries
- Auto-complete form for selecting sakes or breweries when adding new ones
- Ability to upload images
- User following feature (maybe?)
- Tests!

## Getting started

### Prerequisites

- Ruby
- Rails 5+
- PostgreSQL database

### Set up

1. Fork the repository and clone it.
2. Run `bundle install` to install gems (If you don't have bundler, first run `gem install bundler`)
3. Set up the database with `rake db:create` and `rake db:migrate`.
4. The app uses the dotenv gem for environment variables (currently only for Oauth through Facebook). Create a `.env` file in the root of the app and add `FACEBOOK_KEY=your_key` and `FACEBOOK_SECRET=your_secret`. You will need to set up a Facebook developer account to get these keys.
5. Run `rails server` and navigate to `http://localhost:3000`.

### Seed data

Seed data for Japanese prefectures and all breweries in Nagano currently available. Add the data to your database by running:

```ruby
rake db:seed
```

## Contributing

You can make a request or report a bug by creating an issue. Or write your own code an submit a pull request:

1. Fork and clone the repository, following the steps below.
2. Create a branch named after the feature or bug. For example: `git checkout -b feature/new-feature` or `git checkout -b bug/bug-fix`.
3. Write your code and commit changes with an understandable commit message.
4. Push to the branch with `git push origin feature/new-feature`.
5. Create a pull request: Explain the reason for the change, why the code was written the way it was, etc.

## License

Licensed under the [MIT License](https://opensource.org/licenses/MIT).
