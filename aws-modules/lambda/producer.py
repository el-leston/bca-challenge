import os
import boto3

def handler(event, context):
    mq_url = os.getenv('MQ_URL')
    # Assuming you have logic to connect to MQ and send a message
    message = event.get("body", "default message")
    # Logic to send message to MQ
    return {"statusCode": 200, "body": "Message written to MQ"}
