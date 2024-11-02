# frozen_string_literal: true

require "spec_helper"

RSpec.describe Person do
  describe ".new" do
    context "with valid attributes" do
      it "is valid" do
        person = Person.new(name: "Alice", age: 42)
        expect(person).to be_valid
      end
    end
  end
end
