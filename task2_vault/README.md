# Task 2 - Terraform and Vault


1. You need to have `docker` and `terraform` installed
2. Run vault container:
    ```
    docker-compose up -d
    ```
3. Initialize terraform
    ```
    terraform -chdir=tf init
    ```
4. Apply the changes. Do this after every change to see the results. It will rebuild/deploy the `alpha` service and update vault resorces.
    ```
    terraform -chdir=tf apply
    ```

### 1. Add missing resources that will grant permissions for "service-alpha" container to read the "alpha" secret
Look for TODO comment in the tf config. Don't modify existing resources.\
Check if the container is able to read and print the secret or still produces errors: `docker logs -f service-alpha`.
```
Type here what was done...

```

### 2. Split the terraform config into 2 modules.
One for building/deploying the service, another for managing vault resources.\
Use variables.
```
Type here what was done...

```
