# frozen_string_literal: true

# Represents a watch in the application.
class Watch < ApplicationRecord
  validates :brand, presence: true
  validates :name, presence: true
  validates :image_path, presence: true
end
