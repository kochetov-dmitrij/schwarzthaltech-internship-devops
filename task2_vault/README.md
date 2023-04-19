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

I created a new policy called service-alpha-policy as showned in the script. 
The policy explains that the created secrets engine will have a read permission. 
Meaning that every key implemented in that directory can be read when they are required
```

### 2. Split the terraform config into 2 modules.
One for building/deploying the service, another for managing vault resources.\
Use variables.
```

I splitted the configuration into two modules, where one of the modules 'service-alpha' is
responsible for building and deploying the service alpha container

The other module 'vault-resources' is responsible for managing resources meant by vault  which
may include 'vault_generic_secret, vault_auth_backend, vault_policy, and vault_userpass_user'

Both of these modules can then be used within the 'main.tf' and reference appropriately 

```
