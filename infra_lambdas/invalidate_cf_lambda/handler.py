import json
import boto3
from time import gmtime, strftime

def lambda_handler(event, context):
    client = boto3.client('cloudfront')
    
    response = client.create_invalidation(
        DistributionId='E3FQ761VSW9TSP',
        InvalidationBatch={
            'Paths': {
                'Quantity': 1,
                'Items': [
                    '/*',
                ]
            },
            'CallerReference': strftime("%d-%m-%y:%H-%M", gmtime())
        }
    )
    
    print(response)
