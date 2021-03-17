class Address < ApplicationRecord
  has_many :organization_addresses
  has_many :organizations, through: :organization_addresses
  # attr_accessor :organization_ids
end
