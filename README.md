# Okta

Suppose you're an "DevOps Engineer" and the company you work for, aquired 
Okta and asks you to configure it. You have some applications that needs 
configuring, and people that currently work for the organization. Where
do you start?

One of the biggest challenges for organizations are onboarding and 
offboarding employees. One approach when an employee joins is to submit 
requests for them to access. As the organization scales up, submitting
and managing requests becomes it's own bottleneck.

Another approach would be decide which applications based the employee's
department, job title or employment type. For example, everyone in 
Engineering should have access to JIRA, and all software engineers should
have access to GitHub. 

We can achieve that level of sophistication using Okta. 

This repository contains the necessary Terraform code to create

* an Okta group and rule for each department (see [departments.tf](departments.tf))
* an Okta group and rule for each job role (see [roles.tf](roles.tf))
* an Okta group and rule for each user type (see [employees.tf](employees.tf) or [contractors.tf](contractors.tf))
* an Okta application and corresponding application roles for each application (see [app1.tf](app1.tf))
* an Okta rule to map departments, jobs and user types to application groups
  
So when a new user is created in Okta, if the "department" field of their 
profile is "Engineering" then they'll be added to the "Engineering" group
using a group rule. Then another group rule will kick in and assign them
to an application specific role, which in turn gives them specific access 
to an application.

The respository also contains a [Jenkinsfile](Jenkinsfile) which allows you
to execute the automation via Jenkins. This elminates the need for an Okta
admin to make changes, and gives anyone in the organization the ability
to request changes. Innersourcing the project is particulary useful, since
it's rare the Okta admin knows the access everyone needs.

## Jenkins Setup

Other than adding the repo to GitHub, you'll also need to register a few
credentials in Jenkins.

Name | Type | Description
---------|----------|---------
okta-org-name | Secret text | `dev-123456789` when you access `dev-123456789.okta.com`
okta-base-url | Secret text | Typically `okta.com`
okta-api-token | Secret text | The API token 
aws-secret-key-id | Secret text | The AWS secret key to store state
aws-secret-access-key | Secret text | The AWS access key to store state
terraform-backend-s3-bucket | Secret text | The S3 bucket for state
terraform-backend-s3-region | Secret text | The region of the S3 bucket
terraform-backend-s3-dynamodb-table | Secret text | The dynamodb table used for locking

The Jenkinsfile will execute [setup.sh](setup.sh) which downloads Terraform,
and makes it executable. It only works on Linux 64-bit. It then generates
`backend.tf` with the S3 configuration extracted from the credentials stored 
in Jenkins. 
