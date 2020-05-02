# SPARK-DYNAMODB-INFRASTRUCTURE

> Development in progress

### Description

Terraform project to provide the infrastructure needed to run the Spark applications contained in [spark-dynamodb-example](https://github.com/leohoc/spark-dynamodb-example) and [spark-dynamodb-audience](https://github.com/leohoc/spark-dynamodb-audience).
Resources:

  * DynamoDB table for COVID-19 Citations; 

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

#### Stop

To stop running the infrastructure:

```bash

terraform destroy

```
