# frozen_string_literal: true

require "spec_helper"

RSpec.describe Hello do
  describe ".call" do
    it "prints hello world" do
      expect { described_class.call }.to output(/hello.+world/i).to_stdout
    end
  end
end
