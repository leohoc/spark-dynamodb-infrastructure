# SPARK-DYNAMODB-INFRASTRUCTURE

> Development in progress

### Description

Terraform project to provide the infrastructure needed to run the Spark applications contained in [spark-dynamodb-example](https://github.com/leohoc/spark-dynamodb-example) and [spark-dynamodb-audience](https://github.com/leohoc/spark-dynamodb-audience).
Resources:

  * DynamoDB table for COVID-19 Citations;
  * S3 bucket named 'spark-dynamodb-example'; 

### Building the infrastructure

#### Install requirements

- An AWS account;
- awscli >= 2 with AWS account credentials configured;
- terraform >= 0.12;

#### Run

This will build the infrastructure in the AWS account:

```bash

git clone https://github.com/leohoc/spark-dynamodb-audience.git
cd spark-dynamodb-audience/terraform
terraform apply

```

Terraform will show all the resources it will create. Review the list and type 'yes' when prompted.
Await for the building process to finish (this will take a while).
Be aware that this will generate costs related to the AWS account.

#### Creating an EMR cluster

> Cluster terraform provisioning under development. Stay tuned for updates. 

Using the AWS console, create a EMR cluster with the following configurations:
* Cluster execution mode;
* Software configuration version: emr-5.*;
* Applications: Spark;
* Create a EC2 keypair and choose it in the security and access session;
* Add a policy with read/write access to any DynamoDB table and index to the EC2 instance profile Role;

When cluster initializing is complete, add permission to SSH connection:
* Go to the main security group configuration;
* Edit the inbound rules of the master security group;
* Add a rule with 'SSH' type and 'Anywhere' source; 

#### Stop

To stop running the infrastructure:

```bash

terraform destroy

```
