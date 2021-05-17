# Climactic

Hack project to make a very basic carbon accounting app, mostly to better understand GHGP and OpenFootprint, the schema of which this is based on.

## TODO

- cfn to set up a Fargate env & Aurora Serverless
- Deployment via CodePipeline
- Try aws-rails-provisioner gem

## Commands

To run the app in a local container:

`docker-compose build`
`docker-compose up`
`docker-compose run web rails db:drop db:create db:migrate db:seed`

### Run local Postgres
`brew services start postgresql`
`brew services stop postgresql`

## Deployment

Try this: https://github.com/awslabs/aws-rails-provisioner

psql -d climactic_development -U postgres -h localhost
