# Bifrost Common

This gem encapsulates some functionality which is expected to be common between Bifrost heads.
It is an engine gem, which means that all the files in its `app` directory will be available per default to its parent
app. At present, this just includes styling (header, footer, logos and css), but it is expected to expand in time.

If you are building a Bifrost head, strongly consider using this gem. Any common Bifrost logic should go in here, any
application specific logic should go into your own app. If we can make this gem the central place for all Bifrost
functionality, we can make the process of creating and deploying Bifrost heads much more streamlined.

To include it in your app, add the following line to your Gemfile:
```ruby
gem 'bifrost-common', github: 'Det-Kongelige-Bibliotek/bifrost-common'
```

It also contains a generator which will copy a KB specific `schema.xml` file into your `solr_conf` directory.
Run the generator after you've run the `hydra:install`. To run it, enter:
```ruby
rails g bifrost:install
```
in the root of your application. Running ```rake jetty:config``` as normal should then copy the schema file into your
jetty instance.