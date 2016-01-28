Overview
========

This is a repository for buncheat.

Installation
------------

First install rubyonrails and PostgreSQL by following

* Clone the repository into your preferred destination and name it `buncheat`

```
git clone git@gitlab.com:gic15/buncheat.git ~/dev/rails-projects/buncheat
```

* Navigate into the directory and run bundle

```
cd ~/dev/rails-projects/buncheat
bundle install
```

* Start rails web server

```
cd ~/dev/rails-projects/buncheat
rails server
```

For development of the application, developer should use the default Development context.


* Configure database connection

Copy database.yml file to configure database connection

```
cd ~/dev/rails-projects/buncheat
cp config/database.yaml.example config/database.yaml
```


* Edit config/database.yaml make sure that you have dbname, user, password, host.

```
default: &default
  adapter: postgresql
  encoding: unicode
  host: localhost
  username: username    #adjust to your database username
  password: password    #adjust to your database password
  pool: 5

development:
  <<: *default
  database: database_name  # adjust to your datbase name 

```

* Configure database connection for testing context

```
#TODO

```

* Open the browser and go to http://localhost:3000/.
