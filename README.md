#Creating the Key Pair
We will be creating a new key pair in our terraform directory. Run the following command:
"
ssh-keygen -t rsa -b 4096 -m pem -f roger_kp && openssl rsa -in roger_kp -outform pem && chmod 400 roger_kp.pem
"

updated:
ssh-keygen -t rsa -b 4096 -m pem -f roger_kp.pem && chmod 400 roger_kp.pem


#installing DB
>Ubuntu
sudo apt-get update -y && sudo apt install mysql-client -y

>Linux
sudo yum update -y && sudo yum install mysql -y

#connecting to DB

mysql -h terraform-20250202124022902200000004.chheppac9ozc.us-east-1.rds.amazonaws.com -P 3306 -u admin -p