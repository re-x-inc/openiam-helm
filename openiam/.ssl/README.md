# SSL Certificate Directory

This directory should contain required SSL-specific files for running the reverse proxy in https mode.

1) openiam.crt - The SSL Certificate File
2) openiam.key - the SSL certificiate key.  This is required.
3) 'openiam.sslchain.crt' - this file will be used in SSLCertificateChainFile in apache configs.
4) 'openiam.ssl.ca.crt' - this file will be used in SSLCACertificateFile in apache configs.


either openiam.crt or openiam.sslchain.crt is required.

In order for the reverse proxy to read and use these files, you need to set:

These files also must go into `openiam-configmap/.ssl`


#### In Terraform

```
rproxy.https.disabled=0
```


#### In Helm:

```
--set openiam.rproxy.http=0
```
