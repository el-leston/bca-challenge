import os
import boto3

def handler(event, context):
    mq_url = os.getenv('MQ_URL')
    s3_bucket = os.getenv('S3_BUCKET')
    s3_client = boto3.client('s3')
    
    # Assuming you have logic to connect to MQ and read a message
    message = "sample message from MQ"
    
    # Logic to write message to S3
    s3_client.put_object(Bucket=s3_bucket, Key='mq_message.txt', Body=message)
    
    return {"statusCode": 200, "body": "Message read from MQ and written to S3"}
