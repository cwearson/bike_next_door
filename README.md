# Truck Next Door

Truck Next Door is a peer-to-peer marketplace for trucks.

It allows members to book a nearby truck, saving them the expense of owning and maintaining their own truck and also allows truck-owners to earn money by sharing their trucks.

## Dependencies
```
  Ruby
  PostgreSQL
  Bundler
  Node.js
  Yarn
```

## Install dependencies

Install the dependencies using [Homebrew](https://brew.sh/).

Mac: You can install homebrew by using the install script at: https://brew.sh/

Linux: You can install homebrew by using the install script at: http://linuxbrew.sh/

**PostgreSQL**

`$ brew install postgresql`

**Bundler**

`$ gem install bundler`

**Node.JS**

`$ brew install node`

(As an alternative you can use Node Version Manager `nvm` to easily switch between node versions if needed)

**Yarn**

`$ brew install yarn`

## App Setup

**Install required gems**

`$ bundle install`

**Install Node packages**

`$ yarn install` or simply `yarn`

**Create the database**

`bundle exec rake db:setup`

**Start up the web server**

`$ bin/rails server`

## Testing

Run the test suite:

`$ bundle exec rspec`
