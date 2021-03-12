Implement schema for organizational units from Open Footprint
Create API endpoints to accept data
* Activity data
* Pre-carbonated data
* Start with json, add CSV file upload and processing later


be rails g organizations organization_type_id:integer name:string description:text external_identifier:string

rails g scaffold books title:string author:string