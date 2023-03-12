# Week 3 — Decentralized Authentication

## React Authorization
I had fixed some of the issues ahead of the video because I saw the React error issues in the frontend logs. Also, I had changed the login information to email address instead of user name since we were getting that error initially. I had most of the React authentication running, but my verification code wasn't working. I recreated my user pool again and removed the username, so required was only email.
I added preferred_username and name as optional attributes. Then it worked after that.

Here's my logged in user screenshot. 

<img width="623" alt="week3_loggedin0" src="https://user-images.githubusercontent.com/20133223/224523365-86dbbde2-806d-43cb-8c99-e84322dbf268.png">

My profile results wasn't showing at first. I needed to pass the parameter to one of the functions in the home_activities.py file. It's working now.


<img width="954" alt="week3_withadditionalresults0" src="https://user-images.githubusercontent.com/20133223/224579180-d900dfcc-08e8-45b4-83bf-f7960392088a.png">
