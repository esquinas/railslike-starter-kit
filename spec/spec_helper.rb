# frozen_string_literal: true

ENV["RAILS_ENV"] = "test"
require_relative "#{__dir__}/../config/environment"

SPEC_ROOT = Pathname(__dir__).realpath.freeze

Dir[File.join(SPEC_ROOT, "support", "shared_contexts", "**/*.rb")].each { |path| require path }

RSpec.configure do |config|
  config.color = true
  config.disable_monkey_patching!
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = './tmp/rspec-examples.txt'
  config.filter_run_when_matching :focus
  config.formatter = ENV.fetch('CI', false) == 'true' ? :progress : :documentation
  config.order = :random
  config.pending_failure_output = :no_backtrace
  config.shared_context_metadata_behavior = :apply_to_host_groups
  config.warnings = true

  config.expect_with :rspec do |expectations|
    expectations.syntax = :expect
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_doubled_constant_names = true
    mocks.verify_partial_doubles = true
  end
end
