# RabbitMQ TLS Directory

This directory should contain required SSL-specific files for running the reverse proxy in https mode.

1) `rabbitmq.crt` - Server certificate content
2) `rabbitmq.key` - Server private key content
4) `rabbitmq.ca.crt` - Certificate Authority (CA) bundle content


These files must  go into the root level directory `.rabbitmq` and `openiam-configmap/.rabbitmq`

Also, the following variables must be set:

#### In Terraform

```
rabbitmq.tls.enabled=true
```


#### In Helm:

```
--set openiam.rabbitmq.tls.enabled=true
```
