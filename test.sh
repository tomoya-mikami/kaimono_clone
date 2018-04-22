set -ex
ssh -i ~/.ssh/python_deploy_key  -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no ubuntu@52.193.194.176 hostname
ssh -i ~/.ssh/python_deploy_key  -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no ubuntu@18.179.8.237 hostname
ssh -i ~/.ssh/python_deploy_key  -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no ubuntu@54.238.156.255 hostname
ssh -i ~/.ssh/python_deploy_key  -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no ubuntu@13.231.205.192 hostname
ssh -i ~/.ssh/python_deploy_key  -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no ubuntu@13.231.157.92 hostname
ssh -i ~/.ssh/python_deploy_key  -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no ubuntu@18.179.14.152 hostname

echo "OK"
