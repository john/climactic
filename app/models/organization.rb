class Organization < ApplicationRecord
  has_many :organization_industry_sectors
  has_many :industry_sectors, through: :organization_industry_sectors
  attr_accessor :industry_sector
  
  has_many :organization_addresses
  has_many :addresses, through: :organization_addresses
  attr_accessor :address
end
