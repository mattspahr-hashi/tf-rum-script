# tf-rum-script

### Usage: Pass in a Terraform State file through a pipe

```cat terraform.tfstate | count.sh```

### Resources Under Management - HCP Terraform 

For each resource in the TF State file...

we only count managed resources (i.e. not data sources)
we explicitly ignore null resources (terraform_data and null_resource)
we count all instances of a resource (for those resources defined with count or for_each)
then flatten the whole thing into a list and count the number of items