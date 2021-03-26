# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

be rails g scaffold IndustrySector code:string name:string

be rails generate model organizational_boundary name:string organization:references
be rails g scaffold organizational_boundary name:string organization:references


be rails g model organization_industry_sector organization_id:integer industry_sector_id:integer
be rails g scaffold Address contact_id:integer address_line_1:string address_line_2:string postal_code:string

be rails g scaffold FacilityType code:string name:string
be rails g scaffold ghg_inventory name:string

be rails g scaffold AddressType name:string code:string
be rails g scaffold ghg_inventory_category name:string code:string

be rails g model organization_address organization_id:integer address_id:integer organization_address_type:integer

be rails g scaffold GeopoliticalEntity location_id:integer effective_datetime:string termination_datetime:string parent_location_id:integer geopolitical_entity_type_id:integer

be rails g organizations organization_type_id:integer name:string description:text external_identifier:string


psql -d climactic_development -U postgres -h localhost
