#Creating the Key Pair
We will be creating a new key pair in terraform. Run the following command:

Windows, use Git Bash or WSL only unless install openssl:
ssh-keygen -t rsa -b 4096 -m pem -f roger_win_kp; openssl rsa -in roger_win_kp -outform pem; chmod 400 roger_win_kp;

Debian:
ssh-keygen -t rsa -b 4096 -m pem -f roger_linux_kp.pem && chmod 400 roger_linux_kp.pem

before spinning the ec2;
import the keypair to aws console; 
ensure keypair name is label correctly in terraform.tfvars; 
ssh from where the roger_win_kp / roger_linux_kp is located in your local machine;

An Elastic IP (EIP) in AWS is a static, public IPv4 address that you can allocate to your AWS account and associate with resources such as EC2 instances, NAT gateways, or network interfaces. Unlike a regular public IP address, which is dynamically assigned and can change when you stop/start an instance, an Elastic IP remains associated with your account until you explicitly release it.

Cost: AWS charges for Elastic IPs that are allocated but not associated with a running instance. Make sure to release unused Elastic IPs to avoid unnecessary costs.

Limits: By default, AWS allows up to 5 Elastic IPs per region per account. You can request a limit increase if needed.

Reassociation: You can reassociate an Elastic IP with another instance at any time.
