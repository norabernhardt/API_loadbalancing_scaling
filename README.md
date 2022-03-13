# Exercise 11.03.22 

Exercise to learn the Basics about api loadbalancing and scaling

### 1. create api with flask
[Flask](https://flask.palletsprojects.com/en/2.0.x/) let you create an rest api with python.
1. Use the [tutorial](https://flask.palletsprojects.com/en/2.0.x/tutorial/factory/) to create a flask project with a route `/hello` that returns `Hallo World!`
1. add an endpoint `/s3/<bucketname>` that returns a json with the list of files and number of words

```
[{"key": "file.txt", "words": 72},
{"key": "readme.md", "words": 800}]
```

### 2. Deployment
1. Deploy you python app to an ec2 instance


### 3. loadbalancing and scaling 
1. create an ami with your api
1. create a target group and application elb
1. create launch template and autoscaling group

