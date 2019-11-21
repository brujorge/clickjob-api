# Clickjob

## Dependencies

- Ruby 2.6.4
- Postgres >= 11.0

## Deployment
The application is currently hosted at https://clickjob-api.herokuapp.com/ if you want to to develop locally I'd suggest to start the server on port 3001 with rails s -p 3001 and update the client endpoint to point to the server locally

## Implementation notes
This api uses the default functionality of the session to handle the authentication instead of using an external gem like `devise`. 

Use rake routes to see all the routes available
