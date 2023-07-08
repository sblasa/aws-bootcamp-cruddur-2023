# Week 8 — Serverless Image Processing

Learned how to use CDK to create Image processing Infrastructure
Created Lambda and S3 bucket using CDK
Presigned URL using Ruby Lambda working.
Added code for Profile Avatar and edit Profile Info in application


Adding test image to site 
<img width="1030" alt="week8_assets_data0" src="https://github.com/sblasa/aws-bootcamp-cruddur-2023/assets/20133223/72756c64-833a-4d44-b9c8-9cee207b4c12">

Lambda Image Processer

<img width="1364" alt="week8_lambda_imageprocesser0" src="https://github.com/sblasa/aws-bootcamp-cruddur-2023/assets/20133223/2e559571-f2f7-42e8-bd9e-58eab49631e1">

Profile Avatar added with test image
<img width="1118" alt="week8_profileavatar0" src="https://github.com/sblasa/aws-bootcamp-cruddur-2023/assets/20133223/f0fba6f6-0975-4b4d-80bb-52c28ce450a3">

Profile Avatar working in website with actual profile picture.
<img width="1358" alt="week8_profileavatar_withmocharoll0" src="https://github.com/sblasa/aws-bootcamp-cruddur-2023/assets/20133223/756ca1a7-852e-428c-b223-3012b2084982">

Reflection:
Week 8 was extremely difficult. I had issues with the Presigned URL functionality which finally got fixed. 
Part of the issue at first was updating Andrew's profile which wouldn't work since it's his profile. Then I changed it to my actual profile alias, and that minimized the errors. The other part was I had to change the Origin header because a new instance of Gitpod would be created, so that Lambda had to be updated with the new Gitpod URL. 

Cloudfront was fairly easy to configure since I've used it before, but this was a different configuration to what I'm used to which is usually Cloudfront with S3 bucket with static React files.


