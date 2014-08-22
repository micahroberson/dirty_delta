# dirty_delta
[![Build Status](https://travis-ci.org/micahroberson/dirty_delta.svg)](https://travis-ci.org/micahroberson/dirty_delta) [![Code Climate](https://codeclimate.com/github/micahroberson/dirty_delta/badges/gpa.svg)](https://codeclimate.com/github/micahroberson/dirty_delta)

## Installation

Add the gem to your Gemfile.

    gem "dirty_delta", github: "micahroberson/dirty_delta"

Run bundler.
    bundle install

## Usage

In your model, add a single line.

    class Timecard < ActiveRecord::Base
      acts_as_dirty_delta
    end

Access delta's by the attribute methods.

    t = Timecard.create(hours: 8)
    t.hours = 10
    t.hours_delta == 2

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request