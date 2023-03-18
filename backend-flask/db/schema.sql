CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
export CONNECTION_URL="postgresql://postgres:password@localhost:5432/cruddur"
gp env CONNECTION_URL="postgresql://postgres:password@localhost:5432/cruddur"

export PRODUCTION_CONNECTION_URL="postgresql://crudduruser:TZLzs3nC4MSQrh@cruddur-db-instance.ciwdfidz3n9i.us-west-2.rds.amazonaws.com:5432/cruddur"
gp env PRODUCTION_CONNECTION_URL="postgresql://crudduruser:TZLzs3nC4MSQrh@cruddur-db-instance.ciwdfidz3n9i.us-west-2.rds.amazonaws.com:5432/cruddur"