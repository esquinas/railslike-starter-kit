# frozen_string_literal: true

# BOOT
# Set up gems listed in the Gemfile.
require "bundler/setup"

# APPLICATION
ENV["RAILS_ENV"]&.then do |environment|
  Bundler.require environment.to_sym
end

# To automagically load files based on conventions, like in a Rails project
require "zeitwerk"
Zeitwerk::Loader.new.then do |loader|
  loader.push_dir "#{__dir__}/../app/models"
  loader.push_dir "#{__dir__}/../app/services"
  loader.setup
end

require "active_support/all"
require "active_model"
