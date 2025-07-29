##Task:
<pre><font color="#12488B"><b>.</b></font>
├── README.md
├── ec2.tf
├── prod-vars.tfvars
└── variables.tf

1 directory, 4 files
</pre>

#Please create a .tfvars file like this

<pre>cat prod-vars.tfvars 
accesskey = &quot;&quot;  #your access key
secretkey = &quot;&quot;  #your secretk ey
region = &quot;eu-west-1&quot;
instance_count = 1
type = &quot;t2.micro&quot;
ami = {
  &quot;eu-west-1&quot; = &quot;ami-0416cbe3c21834f41&quot;
  &quot;eu-west-2&quot; = &quot;ami-0a94c8e4ca2674d5a&quot;
  &quot;ap-south-1&quot; = &quot;ami-0a94c8e4ca2674d5aee&quot;
}
ssh_public_key_path = &quot;~/.ssh/terraform-key.pub&quot;
tag = &quot;ubuntu&quot;
</pre>

##Generate A ssh key;

<pre>tree  ~/.ssh/
<font color="#12488B"><b>/home/ubuntu/.ssh/</b></font>
├── authorized_keys
├── known_hosts
├── <font color="#5E5C64">known_hosts.old</font>
├── terraform-key
└── terraform-key.pub

1 directory, 5 files
</pre>

#git clone https://github.com/rasikh111/POC-IAC-Terraform.git
#cd EC2_with_keypair

#Setup:
install terraform:  Please refer https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli
make sure you change your region, accesskey and secretkey, and ami value for that region.

#terraform init
#terraform validate
#terraform plan
#terraform apply


##ssh-keygen -t rsa -b 4096 ~/.ssh/terraform-key

Get Public ip and Take SSH

#ssh -i ~/.ssh/terraform-key ubuntu@<public-ip>
