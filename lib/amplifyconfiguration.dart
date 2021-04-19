const amplifyconfig = ''' {
    "UserAgent": "aws-amplify-cli/2.0",
    "Version": "1.0",
    "api": {
        "plugins": {
            "awsAPIPlugin": {
                "MyOlakino": {
                    "endpointType": "GraphQL",
                    "endpoint": "https://arj4bzz265blfluyx4hx4rsg24.appsync-api.us-west-2.amazonaws.com/graphql",
                    "region": "us-west-2",
                    "authorizationType": "API_KEY",
                    "apiKey": "da2-v4lyhwyryrbinhjq66ywl5zuui"
                }
            }
        }
    },
    "auth": {
        "plugins": {
            "awsCognitoAuthPlugin": {
                "UserAgent": "aws-amplify-cli/0.1.0",
                "Version": "0.1.0",
                "IdentityManager": {
                    "Default": {}
                },
                "AppSync": {
                    "Default": {
                        "ApiUrl": "https://arj4bzz265blfluyx4hx4rsg24.appsync-api.us-west-2.amazonaws.com/graphql",
                        "Region": "us-west-2",
                        "AuthMode": "API_KEY",
                        "ApiKey": "da2-v4lyhwyryrbinhjq66ywl5zuui",
                        "ClientDatabasePrefix": "MyOlakino_API_KEY"
                    },
                    "MyOlakino_AWS_IAM": {
                        "ApiUrl": "https://arj4bzz265blfluyx4hx4rsg24.appsync-api.us-west-2.amazonaws.com/graphql",
                        "Region": "us-west-2",
                        "AuthMode": "AWS_IAM",
                        "ClientDatabasePrefix": "MyOlakino_AWS_IAM"
                    }
                },
                "CredentialsProvider": {
                    "CognitoIdentity": {
                        "Default": {
                            "PoolId": "us-west-2:274c3355-2e38-43b7-afa4-f8144c77c5e8",
                            "Region": "us-west-2"
                        }
                    }
                },
                "CognitoUserPool": {
                    "Default": {
                        "PoolId": "us-west-2_miTdWqDqn",
                        "AppClientId": "76k9b2jqfg48qse1j07rid67ef",
                        "Region": "us-west-2"
                    }
                },
                "Auth": {
                    "Default": {
                        "authenticationFlowType": "USER_SRP_AUTH"
                    }
                },
                "DynamoDBObjectMapper": {
                    "Default": {
                        "Region": "us-west-2"
                    }
                }
            }
        }
    },
    "storage": {
        "plugins": {
            "awsDynamoDbStoragePlugin": {
                "partitionKeyName": "first_name",
                "region": "us-west-2",
                "arn": "arn:aws:dynamodb:us-west-2:980678062761:table/App_User-staging",
                "streamArn": "arn:aws:dynamodb:us-west-2:980678062761:table/App_User-staging/stream/2021-04-18T22:39:45.030",
                "partitionKeyType": "S",
                "name": "App_User-staging"
            }
        }
    }
}''';