
bucket_name="github-actions-poc.$(echo $GITHUB_HEAD_REF | sed -e 's/\//-/g')"

# create bucket
aws s3api create-bucket \
  --bucket $bucket_name \
  --acl public-read \
  --region eu-west-2 \
  --create-bucket-configuration LocationConstraint=eu-west-2 \
	> /dev/null

# configure bucket as web host
aws s3 website s3://$bucket_name --index-document index.html

# deploy static assets to s3 bucket
aws s3 cp build s3://$bucket_name --recursive --acl public-read