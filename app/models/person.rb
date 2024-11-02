# frozen_string_literal: true

class Person < ApplicationModel
  attribute :name, :string
  attribute :age, :integer

  validates :name, :age, presence: true
  validates :age, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
