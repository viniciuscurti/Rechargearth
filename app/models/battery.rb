# frozen_string_literal: true

class Battery < ApplicationRecord
  belongs_to :user
  belongs_to :delivery, optional: true
end
