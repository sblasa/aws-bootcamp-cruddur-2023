# Week 9 — CI/CD with CodePipeline, CodeBuild and CodeDeploy

Created CodeBuild Project and had to change a few configurations in there to get it working.

Removed the Webhook checkbox in CodeBuild since it was doing the build twice. I looked at Discord Channel to see if anyone else had that issue,and found a thread providing a solution.

Created a CodePipeline  with Source, Build, Deploy stages.
<img width="1084" alt="week9_codepipeline_succeeded0" src="https://github.com/sblasa/aws-bootcamp-cruddur-2023/assets/20133223/172ca527-fdb3-41f8-8dfa-cc25200745f4">

Changed the HealthCheck api to return version number.

<img width="448" alt="week9_healthcheck0" src="https://github.com/sblasa/aws-bootcamp-cruddur-2023/assets/20133223/da4cf847-f51b-4723-ae6f-3a656e945553">

Decided to implement the Rollbar again with Andrew's fix with Flask/Rollbar. It's working now; however, I had an issue with using g library and it woudln't output the rollbar/test endpoint properly. I used sessions instead and it worked properly. Perhaps in this instance it's better to use sessions? 

Reflection:

I didn't realize that reason why the deployment was taking a long time because it was also doing a health check for ALB. I was only checking for the services. 
