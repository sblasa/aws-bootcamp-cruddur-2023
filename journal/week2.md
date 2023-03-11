# Week 2 — Distributed Tracing

## Implemented Honeycomb.IO Telemetry, XRAY
- I had signed up for Honeycomb.IO. I didn't see the option for bootcamp in dropdown, so I used some other category.
- When we were configuring Honeycomb.IO variables, I wasn't sure if we were supposed to use set the environment variable HONEYCOMB_SERVICE_NAME="Cruddur", or use it in my docker compose file and set it as OTEL_SERVICE_NAME: "backend-flask", as Andrew did in his week 2 video. Jessica had mentioned that it was better to set it with a specific name in docker compose file to separate it out. 
- I had some issues keeping the HONEYCOMB API key for some reason. I think it was my gitpod workspace that was glitching,so I restarted my workspace, and it fixed the issue.

The XRAY portion was difficult. I had a few issues where I missed adding the subsegments.
Here's my initial segment.
<img width="1195" alt="week2_xray_segment0" src="https://user-images.githubusercontent.com/20133223/224455840-ca1c4851-4d18-47f7-899f-24f83b48081c.png">

Here's my subsegment. I didn't have it working at first because I hadn't commented out the intial segment.
<img width="1417" alt="week2_xray_subsegment0" src="https://user-images.githubusercontent.com/20133223/224456833-0df55666-3e63-4c6f-9499-1eb27c09848b.png">
