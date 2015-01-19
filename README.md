# capistrano-friday

Why you [deploy](github.com/capistrano/capistrano) on friday?!

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'capistrano-friday'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-friday

## Usage

Require in Capfile to use the task:

```ruby
# Capfile
require 'capistrano/friday'
```

In your `config/deploy.rb` do something like that:

```ruby
# config/deploy.rb
before 'deploy:starting', 'friday:check'
```

## Options

In default configuration it's just a warning but you can completely disable deploying by setting:

```ruby
set :friday_disable_deploy, false
```

You also can change default MOTD (default is `:base_jumper`):

```ruby
set :friday_motd, :flipping_table
```

**TODO:** need to add many more MOTDs!

## Contributing

1. Fork it ( https://github.com/marshall-lee/capistrano-friday/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
