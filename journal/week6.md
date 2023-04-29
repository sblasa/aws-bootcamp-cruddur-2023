# Week 6 — Deploying Containers

This week I learned that to always check Security groups! If something is failing in AWS, check your AWS security groups! I kept getting pooltime out issues, and couldn't connect. It wasn't configured properly, so I couldn't see my home page messages. 

Also, if something is not working in the backend, and it's showing a CORS error, it doesn't always mean it's a CORS error. There was a 504 error that was showing up, but the underlying issue was that I didn't connect to my RDS database properly for that one.

Here's the home page where I have it working.

<img width="1324" alt="week6_homepage0" src="https://user-images.githubusercontent.com/20133223/235318594-bc96c30e-fc3d-4e47-97b5-68f3dced6c91.png">

Here's the messages that were sent between two users.

<img width="1331" alt="week6_messages0" src="https://user-images.githubusercontent.com/20133223/235318609-38feb9c0-a1a6-4369-b4d7-a44400850e33.png">

I was able to updated my nameservers within my domain registration at Porkbun. I watched Andrew's video, and another video someone had posted on how to update nameservers for domain registration. 

