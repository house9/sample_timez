# Rails Sample Application - sample_timez

http://stackoverflow.com/questions/17818329/rails-3-timezone-confusions/17840938#17840938

TODO: give the short list of stuff todo

### Setting up the application

Rails uses the following as defaults for a new application

* Application assumes it is running in UTC 
* Database assumes it is storing data in UTC

*** ---------> I recommended you stick with these defaults!***

```
# in rails console

Time.zone.name
# => "UTC"

ActiveRecord::Base.default_timezone
# => :utc
```

Both *can be* overriden in your application configuration file when the application boots up - *but don't do this!*

```
# config/application.rb
config.time_zone = 'Central Time (US & Canada)'
config.active_record.default_timezone = :local
# don't do it!
```

### Display times and dates using I18n

http://guides.rubyonrails.org/i18n.html#adding-date-time-formats

* TODO: xxxx

### Setting up user time zone edits

* http://railscasts.com/episodes/106-time-zones-revised
* 

```
# http://api.rubyonrails.org/classes/ActionView/Helpers/FormOptionsHelper.html#method-i-time_zone_select
time_zone_select form helper

ActiveSupport::TimeZone.zones_map
ActiveSupport::TimeZone.us_zones


# other useful
rake time:zones:all

```

### Each request

```
```

## Postgres database setttings

TODO

## Misc

is it 'time zone', 'timezone' or 'time-zone' ?

http://english.stackexchange.com/questions/3934/time-zone-vs-timezone

both are used in rails code base `config.time_zone` and `config.active_record.default_timezone`

