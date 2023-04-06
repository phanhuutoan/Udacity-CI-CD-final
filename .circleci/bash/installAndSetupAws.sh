echo "============ INSTALL AWSCLI =============="
sudo apt upgrade 
sudo apt update
sudo apt install awscli -y

echo "============ CONFIGURE AWS =============="
aws configure set aws_access_key_id $AWS_ACCESS_KEY_ID
aws configure set aws_secret_access_key $AWS_SECRET_ACCESS_KEY
aws configure set region $AWS_DEFAULT_REGION