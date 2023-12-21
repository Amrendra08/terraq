import boto3

# Create an S3 client
s3 = boto3.client('s3')

# Get a list of all S3 buckets
buckets = s3.list_buckets()

# Iterate over the buckets and print the name of any public buckets
public_bucket_list = []
private_bucket_list = []
for bucket in buckets['Buckets']:
  acl = s3.get_bucket_acl(Bucket=bucket['Name'])
  response = s3.get_public_access_block(Bucket=bucket['Name'])
  check_bucket_permission = response['PublicAccessBlockConfiguration']
#   print(check_bucket_permission)

# valiating if bucket is public
  if False in check_bucket_permission.values():
#     print(f"Public bucket: {bucket['Name']}")
    public_bucket_list.append(bucket['Name'])
  else:
#     print(f"Private bucket: {bucket['Name']}")
    private_bucket_list.append(bucket['Name'])

# Print all public buckets list
print(f"\n====\nPublic Buckets are:- {public_bucket_list} \n\nTotal no. of public buckets: {len(public_bucket_list)}\n====\n")
# print(f"\n====\nPrivate Buckets are:- {private_bucket_list}\n\nTotal no. of public buckets: {len(private_bucket_list)}\n====\n")
		