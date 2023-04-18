# frozen_string_literal: true

class Delivery < ApplicationRecord
  has_many :batteries
  belongs_to :user
end
