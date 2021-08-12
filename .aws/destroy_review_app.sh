
bucket_name="github-actions-poc.$(echo $GITHUB_HEAD_REF | sed -e 's/\//-/g')"
echo $bucket_name;

# delete bucket and all its objects
aws s3 rb s3://$bucket_name --force