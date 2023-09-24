# Week X — Clean Up and Other Things

Created static build script to build the frontend react project.
Took the build folder and zipped the folder into build.zip file.
Downloaded the build.zip file to my local computer.
Unzipped file and uploaded to mocharoll.cloud S3 bucket.
Viewed site on mocharoll.cloud with static site.

Modify ruby generate.env file to sync static rRact files.
Use sync.env.erb to specify s3 bucket for mocharoll.cloud.
Also, specify Cloudfront distribution ID in this file.

Install library aws_s3_website_sync in /workspace/aws-bootcamp-cruddur-2023

Install gem in /workspace/aws-bootcamp-cruddur-2023
gem install dotenv

Chmod and run ./bin/frontend/sync

Made a change in DesktopSidbar.js to see changes in sync and re-ran
./bin/frontend/static-build
and then run sync script again

Look at Cloudfront and select the distribution used. Look at Invalidations tab to see what files were changed.

Create a github action to deploy code.
Add github/worksflows
Add sync.yaml

Create Gem file and Rakefile in directory

Paste account number from aws account

Create folder sync: aws/cfn/sync
Add config.toml
Add template.yaml
Populate template.yaml and config.toml with details for Cloudformation.

Create sync bash script in /bin/cfn/
Populate appropriate details--use from db config--point templates to aws/cfn/sync files--config.toml and template.yaml paths

Tags will be group=cruddur-sync
chmod the bin/cfn/sync script
run script bin/cfn/sync

Add bundle update --bundler in gitpod.yml file line 11.
Go to AWS console in Cloudformation

Execute Changes in Cloudformation for sync
Find role in IAM CrdSyncRole-Role-1HXZ0QQGAVX05 and attach policy to allow S3 bucket access.

Create policy and attach to role.
Policy name: S3AccessForSync

{
"Version": "2012-10-17",
"Statement": [
{
"Sid": "VisualEditor0",
"Effect": "Allow",
"Action": [
"s3:PutObject",
"s3:GetObject",
"s3:ListBucket",
"s3:DeleteObject"
],
"Resource": [
"arn:aws:s3:::mocharoll.cloud",
"arn:aws:s3:::*/*"
]
}
]
}

Make sure ClusterService is deployed.
run ./bin/cfn/service-deploy script

build a new image and push
go to ./bin/backend/build script
deploy script

deploy script ./bin/backend/push

Run script ./bin/backend/register to make a new version/register a new version of the backend task
definition.
(Make sure to copy your actual task definition from local)

Check the ECS > Task Definition for backend-flask it should register the new version of the task definition (it'll increment the verison)

Check ECS again go into Cluster, and select checkbox service "backend-flask" in service tab.

Select Update button.
Select "Force new deployment" checkbox. Then update.

Comment out the service name in CICD template in aws/cfn/cicd/template.yaml.

Run script ./bin/cfn/cicd .

Now delete the CrdSrvBackendFlask task so it will update correctly without CiCD stack being dependant upon this CrdSrvBackendFlask stack since we made some changes.

Now run service script again so that it's no longer coupled to CICD

run ./bin/cfn/service-deploy script
Go back to CloudFormation and execute change sets

Updated backend-flask/app.py file with correct rollbar flask code
Updated docker-compose.yml file with backend-flask config

Deployed Service again ./bin/cfn/service-deploy
Execute changes
Run script ./bin/backend/build
Run script ./bin/backend/push

Find prod connection url

env | grep PROD
PRODUCTION_CONNECTION_URL=""

Change database instance name

export PROD_CONNECTION_URL="WHATEVERYOURPRODUCTIONURLIS"

gp env PROD_CONNECTION_URL="postgresql://WHATEVERYOURPRODUCTIONURLIS"

Go to RDS
Select database
Connectivity Tab
Click on Security Group
Select Inbound Rules
Edit Inbound Rules
Add Rule
Select
Type - Postgres
Protocol - TCP
Port Range: 5432
Source - My IP
Description -
ADD RULE/Save

Gitpod -

Modify ./bin/rds/update-sg-rule
Grab Database Security group ID for CrdDbRDSSG
and Security Group Rule ID GITPOD

export DB_SG_ID="sg"
gp env DB_SG_ID="sg"

export DB_SG_RULE_ID="sgr"-"

run to set GitpodIP -  
export GITPOD_IP=$(curl ifconfig.me)

run script:
./bin/rds/update-sg-rule

run script:
./bin/db/connect prod

run script:

./bin/db/schema-load prod

run script to modify users table to add bio column and overwrite with PROD connection URL
CONNECTION_URL=$PROD_CONNECTION_URL ./bin/db/migrate

Every time I lose connection, I need to update the RDS security group with gitpod IP. Then I need to run scripts:

run to set GitpodIP -  
export GITPOD_IP=$(curl ifconfig.me)

./bin/rds/update-sg-rule

Add Security Group for Post Confirmation Lambda - Cognito
Go to EC2 and Create Security Group
EC2 > Security Group
Security Group Name = CognitoLambdaSG
Desc = For lambda that needs to connect to PostGres

No inbound or outbound rules

Go to EC2 > Security Group

Select the Security Group for Postgres DB
Add a new rule
PostgresSQL
Custom = Select SG for Lambda
Description: COGNITOPOSTCONF

Save

Go back to Lambda - cruddur-post-confirmation
Configuration Tab > VPC
and select the security group you just created
Make sure you select the public subnets only (3 of them)
Save

Need to remember to look at log messages when it says NOT NULL something is not being captured in the database. Look for the code for the insertions to determine what is missing.
