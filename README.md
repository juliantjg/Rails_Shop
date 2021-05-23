TEAM : Julian Tjiong (s3786866) and Cass Ilangantileke (s3742928) 50:50 contributions

ATTEMPTED LEVEL : Reached 90+ level (only finished Deletion and Admin Portal)

TIME LOGS : 
Julian(s3786866) = 35.5 hours total
Cass  (s3742928) = 32 hours total
https://docs.google.com/spreadsheets/d/1s3MTq0Qni0MsHlSxq1_DisAxBSEkubYW4e757HcfVv4/edit?usp=sharing

HEROKU DEPLOYMENT URL: https://rails-shop-app.herokuapp.com/

HEROKU LOGS : 
```
Enumerating objects: 30, done.
Counting objects: 100% (30/30), done.
Delta compression using up to 8 threads
Compressing objects: 100% (17/17), done.
Writing objects: 100% (17/17), 2.42 KiB | 620.00 KiB/s, done.
Total 17 (delta 10), reused 0 (delta 0)
remote: Compressing source files... done.
remote: Building source:
remote: 
remote: -----> Building on the Heroku-20 stack
remote: -----> Using buildpack: heroku/ruby
remote: -----> Ruby app detected
remote: -----> Installing bundler 2.2.16
remote: -----> Removing BUNDLED WITH version in the Gemfile.lock
remote: -----> Compiling Ruby/Rails
remote: -----> Using Ruby version: ruby-2.7.2
remote: 
remote: ###### WARNING:
remote:
remote:        Removing `Gemfile.lock` because it was generated on Windows.
remote:        Bundler will do a full resolve so native gems are handled properly.
remote:        This may result in unexpected gem versions being used in your app.
remote:        In rare occasions Bundler may not be able to resolve your dependencies at all.
remote:
remote:        https://devcenter.heroku.com/articles/bundler-windows-gemfile
remote:
remote: -----> Installing dependencies using bundler 2.2.16
remote:        Running: BUNDLE_WITHOUT='development:test' BUNDLE_PATH=vendor/bundle BUNDLE_BIN=vendor/bundle/bin bundle install -j4
remote:        Fetching gem metadata from https://rubygems.org/.............
remote:        Resolving dependencies........
remote:        Using rake 13.0.3
remote:        Using concurrent-ruby 1.1.8
remote:        Using minitest 5.14.4
remote:        Using thread_safe 0.3.6
remote:        Using builder 3.2.4
remote:        Using erubi 1.10.0
remote:        Using racc 1.5.2
remote:        Using crass 1.0.6
remote:        Using rack 2.2.3
remote:        Using nio4r 2.5.7
remote:        Using websocket-extensions 0.1.5
remote:        Using mini_mime 1.1.0
remote:        Using arel 9.0.0
remote:        Using marcel 1.0.1
remote:        Using public_suffix 4.0.6
remote:        Using execjs 2.8.1
remote:        Using aws-eventstream 1.1.1
remote:        Using aws-partitions 1.461.0
remote:        Using jmespath 1.4.0
remote:        Using bcrypt 3.1.16
remote:        Using msgpack 1.4.2
remote:        Using ffi 1.15.1
remote:        Using bundler 2.2.16
remote:        Using mini_magick 4.11.0
remote:        Using ssrf_filter 1.0.7
remote:        Using coffee-script-source 1.12.2
remote:        Using method_source 1.0.0
remote:        Using thor 1.1.0
remote:        Using hashie 4.1.0
remote:        Using oauth 0.5.6
remote:        Using pg 1.2.3
remote:        Using tilt 2.0.10
remote:        Using turbolinks-source 5.2.0
remote:        Using i18n 1.8.10
remote:        Using tzinfo 1.2.9
remote:        Using nokogiri 1.11.5 (x86_64-linux)
remote:        Using rack-test 1.1.0
remote:        Using websocket-driver 0.7.3
remote:        Using mail 2.7.1
remote:        Using addressable 2.7.0
remote:        Using autoprefixer-rails 10.2.4.0
remote:        Using aws-sigv4 1.2.3
remote:        Using coffee-script 2.4.1
remote:        Using rack-protection 2.1.0
remote:        Using puma 5.3.2
remote:        Using sprockets 4.0.2
remote:        Using uglifier 4.2.0
remote:        Using activesupport 5.2.6
remote:        Using loofah 2.9.1
remote:        Using aws-sdk-core 3.114.0
remote:        Using bootsnap 1.7.5
remote:        Using sassc 2.4.0
remote:        Using ruby-vips 2.1.2
remote:        Using omniauth 2.0.4
remote:        Using turbolinks 5.2.1
remote:        Using rails-dom-testing 2.0.3
remote:        Using rails-html-sanitizer 1.3.0
remote:        Using globalid 0.4.2
remote:        Using activemodel 5.2.6
remote:        Using aws-sdk-kms 1.43.0
remote:        Using image_processing 1.12.1
remote:        Using jbuilder 2.11.2
remote:        Using omniauth-oauth 1.2.0
remote:        Using actionview 5.2.6
remote:        Using bootstrap-sass 3.4.1
remote:        Using activejob 5.2.6
remote:        Using activerecord 5.2.6
remote:        Using carrierwave 2.2.1
remote:        Using aws-sdk-s3 1.95.0
remote:        Using actionpack 5.2.6
remote:        Using omniauth-twitter 1.4.0
remote:        Using actioncable 5.2.6
remote:        Using actionmailer 5.2.6
remote:        Using activestorage 5.2.6
remote:        Using railties 5.2.6
remote:        Using omniauth-rails_csrf_protection 1.0.0
remote:        Using sprockets-rails 3.2.2
remote:        Using coffee-rails 5.0.0
remote:        Using font-awesome-rails 4.7.0.7
remote:        Using jquery-rails 4.4.0
remote:        Using rails 5.2.6
remote:        Using sassc-rails 2.1.2
remote:        Using sass-rails 6.0.0
remote:        Bundle complete! 23 Gemfile dependencies, 83 gems now installed.
remote:        Gems in the groups 'development' and 'test' were not installed.
remote:        Bundled gems are installed into `./vendor/bundle`
remote:        Bundle completed (5.25s)
remote:        Cleaning up the bundler cache.
remote: -----> Installing node-v12.16.2-linux-x64
remote: -----> Detecting rake tasks
remote: -----> Preparing app for Rails asset pipeline
remote:        Running: rake assets:precompile
remote:        Yarn executable was not detected in the system.
remote:        Download Yarn at https://yarnpkg.com/en/docs/install
remote:        Asset precompilation completed (1.53s)
remote:        Cleaning assets
remote:        Running: rake assets:clean
remote: -----> Detecting rails configuration
remote: 
remote: ###### WARNING:
remote:
remote:        Removing `Gemfile.lock` because it was generated on Windows.
remote:        Bundler will do a full resolve so native gems are handled properly.
remote:        This may result in unexpected gem versions being used in your app.
remote:        In rare occasions Bundler may not be able to resolve your dependencies at all.
remote:
remote:        https://devcenter.heroku.com/articles/bundler-windows-gemfile
remote:
remote: ###### WARNING:
remote:
remote:        There is a more recent Ruby version available for you to use:
remote:
remote:        2.7.3
remote:
remote:        The latest version will include security and bug fixes. We always recommend
remote:        running the latest version of your minor release.
remote:
remote:        Please upgrade your Ruby version.
remote:
remote:        For all available Ruby versions see:
remote:          https://devcenter.heroku.com/articles/ruby-support#supported-runtimes
remote:
remote: ###### WARNING:
remote:
remote:        No Procfile detected, using the default web server.
remote:        We recommend explicitly declaring how to boot your server process via a Procfile.
remote:        https://devcenter.heroku.com/articles/ruby-default-web-server
remote:
remote:
remote: -----> Discovering process types
remote:        Procfile declares types     -> (none)
remote:        Default types for buildpack -> console, rake, web
remote:
remote: -----> Compressing...
remote:        Done: 79.4M
remote: -----> Launching...
remote:        Released v16
remote:        https://rails-shop-app.herokuapp.com/ deployed to Heroku
remote:
remote: Verifying deploy... done.
To https://git.heroku.com/rails-shop-app.git
   eb8440c..9769c39  main -> main

```

GITHUB URL : https://github.com/juliantjg/RAD2021_s3742928_s3786866


