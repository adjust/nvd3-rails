# NVD3 Rails - reusable charts for rails 3

## Install

To include nvd3-rails into your rails project add

    gem "nvd3-rails", :git => "git@github.com:adeven/nvd3-rails.git"

To your Projects Gemfile.

To add the necessary javascript files into your asset pipeline add

    //= require nvd3-rails

in ```app/assets/javascripts/application.js``

## Contribution Guide

### Updating Submodules

The repository uses submodules following are the steps to manually get the submodules:

    git clone https://github.com/adeven/nvd3-rails.git
    cd nvd3-rails
    git submodule init
    git submodule update

Or:

    git clone https://github.com/adeven/nvd3-rails.git
    cd nvd3-rails
    git submodule update --init

Or:

    git clone --recursive https://github.com/adeven/nvd3-rails.git
    cd nvd3-rails


If you want to work inside a submodule, it is possible, but first you need to checkout a branch:

    cd vendor/assets/javascripts/nvd3
    git checkout master

After you've committed your changes to the submodule, you'll update the nvd3-rails project to point to the new commit, but remember to push the submodule changes before pushing the new nvd3-rails commit:

    cd vendor/assets/javascripts/nvd3
    git push origin master
    cd ..
    git add vendor/assets/javascripts/nvd3
    git commit

### cleaning

If you want to purge your working directory back to the status of upstream, following commands can be used (remember everything you've worked on is gone after these):

git reset --hard upstream/master
git clean -fdx

### Using a local copy during development

Nvd3-rails gets added as a Rails::Engine to your project.

Generally during development you want your main application to include a local development copy of your engine.
You should be able to add gem groups for each Rails environment to your Gemfile, like this:

```ruby
group :development do
    gem "nvd3-rails", :path => "../nvd3-rails"
end

group :production do
    gem "nvd3-rails", :git => "git://github.com/adeven/nvd3-rails.git"
end
```

In Bundler 1.1 and earlier, that generates this error message: "You cannot specify the same gem twice coming from different sources."
This should be fixed in 1.2 https://github.com/carlhuda/bundler/issues/751

There are several work arounds for this, however I sugest to update to the latest version of bundle.
