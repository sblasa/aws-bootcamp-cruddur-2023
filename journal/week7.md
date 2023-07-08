# Week 7 — Solving CORS with a Load Balancer and Custom Domain

I bought my domain name from Porkbun, and I was able to do use Route53 and set up my hosted zone. I added my SSL certificate successfully through ACM.
I pointed it to my frontend react app and create my https//api.mocharoll.com and configure it for my backend app. 

I was able to configure my containers for frontend, backend-flask, and XRAY, but it did take me a while to get it to healthy status.

<img width="1331" alt="week7_mocharollurl0" src="https://github.com/sblasa/aws-bootcamp-cruddur-2023/assets/20133223/38ab519f-3f42-40d6-ab70-34990dfefef9">

Created ALB
<img width="907" alt="week7_mocharollurl_alb0" src="https://github.com/sblasa/aws-bootcamp-cruddur-2023/assets/20133223/871e8e44-d6ec-4c2c-a3fd-3558e12a6891">

Reflection:

It's difficult for me to understand the services and tasks within the cluster. As I continue through the bootcamp, it's starting to make sense on how they all work. I think in hindsight I should review my setups to see how things work.
