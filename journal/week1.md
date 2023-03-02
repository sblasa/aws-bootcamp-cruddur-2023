# Week 1 — App Containerization

## Watched Videos
- Watched Chirag's Week 1 - Spending Considerations
    - learned about spends regarding gitpod, cloud 9. 
    - Basically learned don't use cloud9 for IDE because it costs money.
- Watched Ashish's Week 1 - Container Security Considerations
    - Learned about Snyk scanning Docker files/images for vulnerabilities
    - AWS Secrets Manager use for database passwords or API passwords and similar types of secrets.
    - It will cost after trial period based on number of secrets created API calls

## Containerized Application
- Added docker file and docker compose.
  -  I was able to get it running without any issues, so that was good.
## Created Notications Endpoint and Notifications Feed in React
- Added the notifications I've used OpenAPI documentation before. Their documentation on the site is good. I usually use the examples on their to figure out how it works, but it was good to have Andrew explain things on how it worked. It's clearer to me now.
- I was able to follow along with Andrew's video and create the Notfications endpoint in flask. I can see how he used the Home endpoint as an example to create the Notifications endpoint, so that wasn't too difficult. I changed my data slightly, so I can see my own results.
- The frontend react page for Notifications was added, and it wasn't difficult to do since I've been using React for three or four months, but I'm still new to that framework. No issues there.

## Installed DynamoDB and Postgres Databases
- I was abled to add the DynamoDB and Postgres databases to the container. I also added the database explorer extension, and committed it to my gitpod.yml file, so I'd have that available. 
- The only issue I had was the password wasn't working at first when logging into Postgres, but it's because I misspelled the user name to "postgress", and it should've been spelled "postgres". After that, I was able to do the different commands, like /dl , and so on.

## Homework Challenge(s)
- I created and ran a Docker image on my local machine and pushed it to DockerHub. This was fairly easy, but I initially forgot to create the package.json file with my frontend Docker image, so it wasn't happy. Later on, I created it after someone told me what the issue was.
- <img width="1119" alt="2023-03-01_16-23-35" src="https://user-images.githubusercontent.com/20133223/222298317-508a3a4b-570a-44d7-9bd5-236b1aa15b22.png">
<img width="1119" alt="2023-03-01_16-23-35" src="https://user-images.githubusercontent.com/20133223/222298325-51af42c3-55c3-4c45-9a45-1358bcdd9dda.png">
