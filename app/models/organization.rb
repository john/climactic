class Organization < ApplicationRecord
  has_many :organization_industry_sectors
  has_many :industry_sectors, through: :organization_industry_sectors
end
