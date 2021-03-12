#dt=$(date '+%Y-%m-%d');
#tm=$(date '+%H:%M:%S');
commitId=$(git log --format="%H" -n 1)
aws s3 cp build  s3://bash-script-demo-bkt/$commitId/ --recursive
