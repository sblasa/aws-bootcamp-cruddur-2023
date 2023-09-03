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

Chmod and run  ./bin/frontend/sync

Made a change in DesktopSidbar.js to see changes in sync and re-ran 
 ./bin/frontend/static-build
 and then run sync script again

 Look at Cloudfront and select the distribution used. Look at Invalidations tab to see what files were changed.

 Create a github action to deploy code.
 Add github/worksflows 
 Add sync.yaml 

Create Gem file and Rakefile in directory

Paste account number from aws account
