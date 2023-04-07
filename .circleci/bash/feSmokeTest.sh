ID=$1

URL="http://udapeople-${ID:0:7}.s3-website-us-east-1.amazonaws.com/#/employees"            
echo ${URL} 
if curl -s --connect-timeout 10 ${URL} | grep "Welcome"
then
	# Change this to 0 after the job fails
  exit 1
else
  exit 1
fi