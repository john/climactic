GhgInventoryCategory.create([
  {name: 'Direct emissions from owned/controlled operations', code: 1},
  {name: 'Capital goods', code: 2},
  {name: 'Fuel- and energy-related activities (not included in scope 1 or scope 2)', code: 3},
  {name: 'Upstream transportation and distribution', code: 4},
  {name: 'Waste generated in operations', code: 5},
  {name: 'Business travel', code: 6},
  {name: 'Employee commuting', code: 7},
  {name: 'Upstream leased assets', code: 8},
  {name: 'Downstream transportation and distribution', code: 9},
  {name: 'Processing of sold products', code: 10},
  {name: 'Use of sold products', code: 11},
  {name: 'End-of-life treatment of sold products', code: 12},
  {name: 'Downstream leased assets', code: 13},
  {name: 'Franchises', code: 14},
  {name: 'Investments ', code: 15},
])

address_types = AddressType.create([{name: 'Residence', code: 1}, {name: 'Commercial', code:2}])
facility_types = FacilityType.create([{name: 'Foundary', code: 1}, {name: 'Chandlery', code: 2}])
sectors = IndustrySector.create([{code: '001', name: 'Manufacturing'}, {code: '002', name: 'Financial Services'}])

org = Organization.create({name: 'Acme Widge Co.', description: 'Purveyors of fine widgets', })

org.industry_sectors << sectors.first

address = Address.create({address_line_1: '124 Bluestone Road', address_line_2: 'Cincinnati', postal_code: '45202'})
orgAddress = OrganizationAddress.create({organization_id: org.id, address_id: address.id, address_type_id: address_types.first.id})

org.save

# is this a senstible name for a boundary, like a section of the org?
boundary = Boundary.create({name: "Widgets.com", organization: org})

ghg_inv = GhgInventory.create({name: 'transportation'})