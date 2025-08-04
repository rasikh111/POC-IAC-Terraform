## Add your  ec2values.tfvars like that, configure like that, Put your access key and secret key

<pre>cat  ec2_values.tfvars
region         = &quot;eu-west-1&quot;
accesskey      = &quot;&quot;
secretkey      = &quot;&quot;
instance_count = 1
type           = &quot;t2.micro&quot;
tag            = &quot;my-instance&quot;
ami            = &quot;ami-0b221b3f0d70fd316&quot;
allowed_ports  = [22, 80, 443]
</pre> 

---
## Run

terraform init
terraform fmt
terraform validate
terraform plan --var-file=ec2values.tfvars 
terraform apply --var-file=ec2values.tfvars --auto-approve

---
