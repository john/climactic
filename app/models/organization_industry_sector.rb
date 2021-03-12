class OrganizationIndustrySector < ApplicationRecord
    belongs_to :organization
    belongs_to :industry_sector
end
