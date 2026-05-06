# Loadbalancing with NginX
# DevOps tasks
## About

- 👋 Hi, I’m Chidike Henry
- 😎 I’m a fullstack developer
- 💻 This is a project that shows how to loadbalance with NginX.
- 💞️ I’m looking to collaborate on JS and DevOps projects
- 📫 How to reach me chidike.henry@gmail.com

## Technologies Used

- NginX
- AWS
- NodeJS
- Git
- Github
- DevOps
- html

## Description
Nginx pronounced Engine X
Load balancing with NGINX is a widely used technique for distributing incoming client requests across multiple backend servers to improve performance, reliability, and scalability of applications. Instead of sending all traffic to a single server, NGINX acts as a reverse proxy that intelligently spreads the load, ensuring no single server becomes a bottleneck. You can combine it with AWS lightsail. it can be placed on servers improving performance. its the gatekeeper in front of your backend that manages performance, traffic and security.
Instead of users hitting your Node.js app directly: Client → Nginx → Node.js (Express/Nest). Handles incoming traffic efficiently, protects your backend, can route requests to multiple services. Nginx helps you with:, API routing, Load balancing, AI services, Securing endpoints
Production deployment, It’s often used alongside: Docker, Kubernetes, CI/CD pipelines.

In summary, load balancing with NGINX is a powerful way to:

Distribute traffic efficiently
Improve application performance
Ensure fault tolerance,
Enable easy scaling. 

Nginx is commonly used to secure URLs by moving traffic from HTTP to HTTPS. It does this in two main ways: redirecting and terminating TLS (SSL).


## Implementation 
As a backend dev, think of Nginx as the gatekeeper in front of your app:
User → Nginx → Your NestJS App → Database

Nginx:

handles HTTPS (security)
routes traffic
can load balance
protects your app

🏗️ Step-by-step: from VS Code → Production
1. You start coding (VS Code)

You build your app:

NestJS API
runs on: http://localhost:3000

2. You test locally

You run: npm run start:dev

You hit: http://localhost:3000/api

3. You push to GitHub

You commit: git push origin main
GitHub is just version control
Nginx is NOT involved here

At this stage:

No Nginx
No HTTPS
Just local dev

4. You deploy to a server (EC2 / DigitalOcean)

Now things get real. You spin up: AWS EC2 OR DigitalOcean Droplet
Your app runs like: node dist/main.js

Accessible at:
http://<your-server-ip>:3000
Problem now: users must type port :3000 and also no HTTPS, insecure and ugly URL.

THIS is where Nginx comes in
5. Install Nginx on the server
bash : sudo apt update
       sudo apt install nginx

Now Nginx runs on:

port 80 (HTTP)
port 443 (HTTPS)

Important:

Nginx sits on standard web ports
your app stays on port 3000

6. Reverse proxy setup (core backend concept)

You configure Nginx:
server {
    listen 80;
    server_name yourdomain.com;
    location / {
        proxy_pass http://localhost:3000;
    }
}

What just happened?

User hits:

http://yourdomain.com

Nginx:
➡ forwards request to:

http://localhost:3000

Your backend is now hidden behind Nginx

Add HTTPS (this is the point)

You install SSL using:

sudo apt install certbot python3-certbot-nginx
sudo certbot --nginx -d yourdomain.com
Now Nginx config becomes:
server {
    listen 80;
    server_name yourdomain.com;
    return 301 https://$host$request_uri;
}

server {
    listen 443 ssl;
    server_name yourdomain.com;
    ssl_certificate /etc/letsencrypt/live/yourdomain.com/fullchain.pem;
    ssl_certificate_key /etc/letsencrypt/live/yourdomain.com/privkey.pem;
    location / {
        proxy_pass http://localhost:3000;
    }
}


Full flow now
User (HTTPS)
   ↓
Nginx (handles SSL)
   ↓
NestJS app (HTTP internally)
   ↓
Database

Your backend does NOT handle HTTPS directly

Deployment (first step)
EC2 / Droplet
app runs on port 3000
Production readiness

Introduce Nginx

reverse proxy
HTTPS
domain routing
Scaling
Nginx load balancing
Redis queues


Final backend-dev takeaway

As a backend dev, you don’t “use Nginx in your code”

You use it as:

entry point to your system
security layer (HTTPS)
traffic router

As a backend engineer, I typically use Nginx as the entry point to my application when deploying a Node.js/NestJS + PostgreSQL system on DigitalOcean.

First, Nginx acts as a reverse proxy. Instead of exposing my NestJS app directly (e.g., on port 3000), users hit Nginx on port 80 or 443. Nginx then forwards requests to the Node.js server internally. This adds a layer of abstraction and improves security since the backend isn’t directly exposed.

For load balancing, if I run multiple instances of my NestJS app (for example using PM2 or Docker), Nginx distributes incoming traffic across them using strategies like round-robin. This helps handle higher traffic and improves availability.

For HTTPS, Nginx handles SSL termination. I configure SSL certificates (usually via Let’s Encrypt), so all external traffic is encrypted. Nginx then communicates with the backend over HTTP internally. This keeps the setup simple while ensuring secure communication with clients.

In terms of the database, PostgreSQL runs separately and is accessed by the NestJS app. Nginx doesn’t interact with the database directly—it only manages incoming web traffic.

Overall, Nginx helps me:

Secure the application with HTTPS
Distribute traffic across multiple backend instances
Hide internal architecture from clients
Improve performance and reliability

Nginx can distribute traffic across multiple instances, whether they are running on the same Droplet (different ports/processes) or across multiple Droplets. In simple setups, it’s often used to balance load across multiple Node.js processes on a single server, but in production, it’s typically used across multiple servers for better scalability and fault tolerance.

Digital Ocean is a virtual server same as EC2 instance on AWS, gives RAM space


## Author
Chidike 

#### 👤 Author1

- GitHub: [@lacegiovanni17]https://github.com/lacegiovanni17
- Twitter: [@ChidikeC] https://twitter.com/ChidikeC
- LinkedIn: [LinkedIn]https://www.linkedin.com/in/chidike-chizoba-25628a40/

## Contributing

Contributions, issues, critics and feature requests are welcome!

## Show your support

Please give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to me
- Inspiration to all devs
- etc
