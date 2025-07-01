# PROMETHEUS

## PROMETHEUS ON AWS EC2 INSTANCE
Prometheus is an open-source monitoring and alerting toolkit designed to collect and store time-series data, empowering developers to track system metrics and set up automated alerts. I'm setting it up on an AWS Ubuntu 24.04 EC2 instance, where I’ve downloaded the latest version from prometheus.io using <curl -LO (prometheus link)>, extracted it with <tar xvf>, and launched it with <./prometheus --config.file=prometheus.yml> after configuring the :9090 port in the security group. This setup allows me to monitor my instance’s performance in real-time.
## Prometheus Picture
![prometheus](https://github.com/user-attachments/assets/424c9f0f-bf48-4524-a43a-01371f9a796c)

## About

- 👋 Hi, I’m Chidike Henry
- 😎 I’m a fullstack developer
- 💻 This is a prometheus for aws server projects.
- 💞️ I’m looking to collaborate on JS and DevOps projects
- 📫 How to reach me chidike.henry@gmail.com

## Technologies Used

- Linux
- AWS
- NodeJS
- Git
- Github
- DevOps
- Prometheus
- Postman

## Procedure and Process

🚀Monitoring with Prometheus on AWS 🚀

Today, I turned my AWS EC2 instance into a robust monitoring hub using Prometheus—the go-to tool for tracking system metrics! Here’s how I made it happen:

🔹 Launched my EC2 Instance

Provisioned an Ubuntu 24.04 server on AWS, connected via SSH, and prepped the environment with essential updates.

🔹 Installed Prometheus

Visited prometheus.io, copied the Linux download link, and ran curl -LO <prometheus-link> on my server to grab the file. Extracted it with tar -xzf prometheus-\*.tar.gz and started the server with ./prometheus --config.file=prometheus.yml.

🔹 Solved Security Setup

Added the :9090 rule to the instance’s security group in the AWS console, ensuring external access. Fired it up and started exploring the Prometheus dashboard! 🎯

This cloud-native setup gives me real-time insights into my system’s health—perfect for tracking performance before scaling up.

Prometheus is an open-source monitoring and alerting toolkit designed for reliability and scalability. Developed by SoundCloud and now maintained by the Cloud Native Computing Foundation (CNCF), it collects metrics from various targets using a pull-based model.

Key Features of Prometheus:

Time Series Data: Stores metrics with timestamps for analysis.

Powerful Querying: Uses PromQL for flexible data retrieval.

Alerting: Notifies on anomalies via integrated rules.

Service Discovery: Automatically finds targets in dynamic environments.

Multi-Cloud Support: Works on AWS, GCP, Azure, or on-premises.

Prometheus = The heartbeat monitor for your infrastructure.

In my simple understanding, Prometheus is like the nurse that periodically checks the heartbeat and vitals of a patient, while Grafana is a visualization tool similar to the ECG equipment that shows the heartbeat in a sinewave diagram. By using Prometheus, I get a real monitoring experience without complex setups—ideal for devops engineers and developers!

## Step by Step Process
1. Creating my AWS EC2 Instance. Provisioned an Ubuntu 24.04 server on AWS, connected via SSH, and prepped the environment with essential updates. 

![prometheus_aws_instance](https://github.com/user-attachments/assets/92c3d837-4149-422b-b97f-8f66f82c0f1c)
![prometheus_aws_instance2](https://github.com/user-attachments/assets/a78d169c-9ffa-48ff-a409-d7ee7525152e)

2. Launched and running my AWS EC2 Instance called "Prometheus". 
![prometheus_aws_launched](https://github.com/user-attachments/assets/687aa0f7-1fd4-47c1-96fa-180839bd81ce)

3. Connected the AWS EC2 Instance. 
![prometheus_aws_launched](https://github.com/user-attachments/assets/6ec5a6b2-e4d6-4937-a12f-34182e9abc9c)

4. Starting the server with "sudo apt update" linux command
![prometheus_aws_sudo_apt](https://github.com/user-attachments/assets/0a60bc12-6833-4ad3-83fd-9b977f79c8de)

5. Go to "prometheus.io" download link and copy the linux download link
![prometheus_linux_download](https://github.com/user-attachments/assets/5023015a-dd18-4235-87c7-b636a7078601) 

6. Use the Linux command "curl -LO <url>" to download the prometheus file from the remote url you copied.
   This linux command is to download the prometheus file in scripts, handle redirect heavy url and keep the original filename automatically. 
![prometheus_curl](https://github.com/user-attachments/assets/9e15cdc2-f262-472c-99a8-981e785270c1)

7. Use the Linux command "tar xvf <url>" to extract the downloaded zipped files. Then change directory to the file 
   with "cd prometheus-3.4.1.linux-amd64" and start prometheus with "./prometheus"
![prometheus_extracted](https://github.com/user-attachments/assets/8bad7a1a-410d-4933-9bd5-8dd622375984)

8. Go to your EC2 Instance page and click on "Security" tab and click on the "securiity groups", afterwards click on edit inbound rules.
![prometheus_securitygroups](https://github.com/user-attachments/assets/ab24351c-9e4e-480d-a8a1-488813a0349b)


9. Now edit inbound rules by adding rules and 9090 path
10.   
11. 

## Author
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
