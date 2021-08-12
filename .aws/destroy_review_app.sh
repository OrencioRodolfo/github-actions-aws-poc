
bucket_name="github-actions-poc.$(echo $GITHUB_REF | sed -e 's/\//-/g')"

# delete bucket and all its objects
aws s3 rb s3://$bucket_name --force