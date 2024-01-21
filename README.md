# Scalable AWS ECS Fargate using Apollo Server as an example

## Architecture

![Scalable ECS Fargate](images/scalable-ecs-fargate.png)

## Using Cloudformation [Fargate Cluster](fargate-cluster.yaml) to create stack on AWS

## Run it locally via Docker Compose

- Build and run the image

```bash
$ yarn start
```

- Populate data.txt with

```
{"query":"{ books { title } }"}
```

- Test it with Apache Benchmark

```bash
$ ab -v 3 -n 10000 -c 10 -T 'application/json' -p data.txt http://localhost:3000/graphql
```

## Reference

- [Scalable Fargate Service](https://templates.cloudonaut.io/en/stable/fargate/)
- [CloudFormation Templates for AWS Fargate deployments](https://github.com/nathanpeck/aws-cloudformation-fargate)
- [Independently Scalable Multi-Container Microservices Architecture on AWS Fargate (II)](https://hackernoon.com/microservices-on-fargate-part2-f29c6d4d708f)
