# Gitfetcher

Fetches a bunch of Git repositories continuously.

## Installation

    $ rake install

## Usage

    gitfetcher ~/src/repo1 ~/src/repo2

I use the following alias and run it from my home directory in a detached screen session:

    alias cgits='find . -maxdepth 3 -name ".gitfetch" | sed -e "s/.gitfetch$//" | xargs gitfetcher'

When I have a new directory I want to keep up to date, I just touch a .gitfetch file in it's git root

## Contributing

1. Fork it ( https://github.com/[my-github-username]/gitfetcher/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
