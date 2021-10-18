If we want to create a dynamoDB by commands we should run

aws dynamodb create-table ^
    --table-name Movies ^
    --attribute-definitions ^
        AttributeName=year,  AttributeType=N ^
        AttributeName=title, AttributeType=S ^
    --key-schema ^
        AttributeName=year, KeyType=HASH
        AttributeName=title, KeyType=RANGE
    --billing-mode PROVISIONED
        ReadCapacityUnits=10, WriteCapacityUnits=10
