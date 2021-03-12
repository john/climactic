class IndustrySector < ApplicationRecord
  has_many :organization_industry_sectors
  has_many :organizations, through: :organization_industry_sectors
end
