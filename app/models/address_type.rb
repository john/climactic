class AddressType < ApplicationRecord
  has_many :organization_addresses
  has_many :organizations, through: :organization_addresses
  
  validates :name, uniqueness: true
end
