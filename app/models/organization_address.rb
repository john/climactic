class OrganizationAddress < ApplicationRecord
  belongs_to :organization
  belongs_to :address
  # belongs_to :address_type
end
