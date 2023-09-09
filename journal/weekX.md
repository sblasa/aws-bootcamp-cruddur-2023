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
go to /bin/backend/build script
deploy script

deploy script ./bin/backend/push

Run script ./bin/backend/register to make a new version/register a new version of the backend task
definition.

Check the ECS > Task Definition for backend-flask it should register the new version of the task definition (it'll increment the verison)

Check ECS again go into Cluster, and select service "backend-flask" in service tab.

Select Update button.
Select "Force Update" checkbox. Then update.

Comment out the service name in CICD template in aws/cfn/cicd/template.yaml.

Run script ./bin/cfn/cicd .

Now delete the CrdSrvBackendFlask task so it will update correctly without CiCD stack being dependant upon this CrdSrvBackendFlask stack since we made some changes.

Now run service script again so that it's no longer coupled to CICD

run ./bin/cfn/service-deploy script
Go back to CloudFormation and execute change sets

Updated backend-flask/app.py file with correct rollbar flask code
Updated docker-compose.yml file with backend-flask config
