STACK_NAME=$1

INSTACNE_ID=$(aws cloudformation describe-stacks --stack-name $STACK_NAME --query "Stacks[0].Outputs[0].OutputValue" --output text)
IP_ADDRESS=$(aws ec2 describe-instances --instance-ids $INSTACNE_ID --query 'Reservations[*].Instances[*].PublicIpAddress' --output text)