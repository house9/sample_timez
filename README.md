# Rails TimeZ (sample app)

see the blog post at: [http://jessehouse.com/blog/2013/11/08/working-with-timezones-and-ruby-on-rails/](http://jessehouse.com/blog/2013/11/08/working-with-timezones-and-ruby-on-rails/)

## Install locally

Requires Postgres as the database, modify config/database.yml as needed

```
git clone https://github.com/house9/sample_timez.git
cd sample_timez
bundle

# create database and sample data
bundle exec rake db_tasks:rebuild_database
# start up rails
rails s
```

Go to http://localhost:3000/

The login page is setup to auto-fill existing user accounts, or create your own.



