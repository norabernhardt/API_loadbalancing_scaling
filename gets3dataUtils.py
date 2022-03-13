import boto3

answer_array=[]
def gets3data(bucketname):
   s3client=boto3.client('s3')
   response_list=s3client.list_objects(
      Bucket=bucketname
      )

   for item in response_list["Contents"]:
      key=item["Key"]
      response_get=s3client.get_object(
         Bucket=bucketname,
         Key=key
      )

      text=response_get['Body'].read()
      words=text.split()
      wordCount=len(words)
      answer_object={"key": key, "words": wordCount}
      answer_array.append(answer_object)
   print(answer_array)
   return answer_array