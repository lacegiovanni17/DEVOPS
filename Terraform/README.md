# ☁️ Terraform on AWS EC2 — Setup & Deployment Guide

This project demonstrates how to use **Terraform** to provision an **EC2 instance** on **AWS** from scratch 💻🌍. It includes how Terraform was installed, configured, and used to deploy cloud infrastructure in minutes!

---

## 📦 What is Terraform?

Terraform is an **Infrastructure as Code (IaC)** tool 🧱 created by HashiCorp. It allows you to define cloud infrastructure using declarative configuration files — like code — so you can automate deployments and manage resources more efficiently.

---

## 🚀 What I Did

1. ✅ Installed **Terraform** on Windows using Chocolatey.
2. ✅ Installed **AWS CLI** and configured credentials.
3. ✅ Wrote a Terraform configuration (`main.tf`) to deploy an EC2 instance.
4. ✅ Used Terraform commands to initialize and apply the configuration.
5. ✅ Successfully connected Terraform to AWS and provisioned cloud resources.

---

📸 Screenshot of Working Project
See the included image terraform_connected.png to view successful initialization in VS Code.

## 🧰 Tools Used

- [Terraform](https://www.terraform.io/) 🛠️
- [AWS CLI](https://aws.amazon.com/cli/) ☁️
- [Visual Studio Code](https://code.visualstudio.com/) 💡
- Git Bash / PowerShell terminals 🖥️

---

## 💾 Installing Terraform on Windows

1. Open PowerShell **as Administrator**.
2. Install using Chocolatey on windows powershell as administrator:

   `choco install terraform`

## 🔧 Installing Terraform on Windows (Using Chocolatey)

I installed **Terraform** on my Windows PC using **Chocolatey**, which saved me from the stress of manually adding it to environment variables 😮‍💨.

> ⚠️ I initially tried installing it manually and faced issues making it globally accessible via PATH. Using Chocolatey handled all of that for me automatically! 🚀

### ✅ Steps to Install via Chocolatey:

1. Open **PowerShell as Administrator**.

2. Run the following command to install Terraform:

   ```powershell
   choco install terraform

   ```

3. After installation, verify Terraform is installed globally by running: `terraform -v`
4. 💡 If you're using Git Bash or another terminal (like in VS Code), make sure it recognizes Chocolatey paths. You can echo your $PATH to confirm: `echo $PATH`
5. And that’s it — no need to manually download .zip files or edit system environment variables! 🎉

# 🛠️ If you installed Terraform via Chocolatey:

- It should be in: `/c/ProgramData/chocolatey/bin`
- so you can append your path like this `echo 'export PATH=$PATH:/c/ProgramData/chocolatey/bin' >> ~/.bashrc`
  `source ~/.bashrc`
- Then verify again: `which terraform`
  `terraform -v`

* You should see output like: `/c/ProgramData/chocolatey/bin/terraform`
  `Terraform v1.x.x`

# ⚠️ Make sure you have AWS credentials set up

Terraform uses your local AWS credentials to talk to AWS. Make sure you've already run:
`aws configure`
...and filled in your:

- AWS Access Key ID
- AWS Secret Access Key
- Default region (you used us-west-1, so make sure it's the same)
- Default output format (json is fine)

## setup

- Add Terraform to system path:
  `echo 'export PATH=$PATH:/c/ProgramData/chocolatey/bin' >> ~/.bashrc`
  `source ~/.bashrc`
- Confirm Installation
  `terraform -v`

# 🔐 Configuring AWS CLI

- Install AWS CLI from the official site or using Chocolatey on your windows powershell as Administrator: `choco install awscli`
- Configure AWS CLI with your access key and secret key: `aws configure`
- Enter your access key, secret key, default region, and output format when prompted.
- Provide:

1.  AWS Access Key ID 🔑
2.  AWS Secret Access Key 🛡️
3.  Region (e.g. us-west-1) 🌍
4.  Output format (e.g. json)

- Verify your AWS CLI configuration: `aws sts get-caller-identity`

# 🛠️ Terraform Commands Used

1.  `terraform init`: Initializes Terraform by creating a working directory and downloading plugins.
2.  `terraform plan`: (Preview what Terraform will create) Shows the execution plan for the configuration.
3.  `terraform apply`: (Deploy resources to AWS) Applies the changes required to reach the desired state of the configuration.
4.  `terraform destroy`: Destroys💥 the aws resources created by Terraform.

# ✅ Output after Initialization

In your terminal you will see
`Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see any changes...`

# 📌 Notes

Make sure the ami, key_name, and region match resources in your AWS account.

Ensure your AWS credentials have permission to launch EC2 instances.
