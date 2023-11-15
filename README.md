# FREE AWS Cloud Project Bootcamp

- Application: Cruddur
- Cohort: 2023-A1


Set env variables in docker-compose.yaml:
update CONNECTION_URL in the backend-flask scope to use your local postgres container url
Run docker-compose.yaml from the project root
Run the Postgres database setup script to create the database, tables, seed users and activities, and update seeded users' UUIDs from Cognito
Run the DynamoDB schema-load and seed scripts to created seed conversations between the seeded users
Production Environment
The production environment uses RDS (Postgres) for users and their activities.

If user and activities tables DO NOT EXIST in the RDS, run the Postgres database schema-load script with prod as the first argument to initialize the tables in the RDS
If the backend-flask and frontend-react-js services are NOT deployed to ECS, create the services from the json files.
aws ecs create-service --cli-input-json file://aws/json/service-backend-flask.json
aws ecs create-service --cli-input-json file://aws/json/service-frontend-react-js.json
If the service's task definitions DO NOT EXIST, you must create them

aws ecs register-task-definition --cli-input-json file://aws/task-definitions/backend-flask.json
aws ecs register-task-definition --cli-input-json file://aws/task-definitions/frontend-react-js.json
Troubleshooting


This is the starting codebase that will be used in the FREE AWS Cloud Project Bootcamp 2023

![Cruddur Graphic](_docs/assets/cruddur-banner.jpg)

![Cruddur Screenshot](_docs/assets/cruddur-screenshot.png)

## Instructions

At the start of the bootcamp you need to create a new Github Repository from this template.

## Journaling Homework

The `/journal` directory contains

- [ ] [Week 0](journal/week0.md)
- [ ] [Week 1](journal/week1.md)
- [ ] [Week 2](journal/week2.md)
- [ ] [Week 3](journal/week3.md)
- [ ] [Week 4](journal/week4.md)
- [ ] [Week 5](journal/week5.md)
- [ ] [Week 6](journal/week6.md)
- [ ] [Week 7](journal/week7.md)
- [ ] [Week 8](journal/week8.md)
- [ ] [Week 9](journal/week9.md)
- [ ] [Week 10](journal/week10.md)
- [ ] [Week 11](journal/week11.md)
- [ ] [Week 12](journal/week12.md)
- [ ] [Week 13](journal/week13.md)