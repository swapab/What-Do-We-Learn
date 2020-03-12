## How to add roles to service account?
```
gcloud projects add-iam-policy-binding PROJECT_ID \
--member='serviceAccount:SERVICE_ACCOUNT_EMAIL_ID' \
--role='roles/iam.serviceAccountUser'
```

## Get roles for a service-account

```
gcloud projects get-iam-policy <YOUR GCLOUD PROJECT>  \
--flatten="bindings[].members" \
--format='table(bindings.role)' \
--filter="bindings.members:<YOUR SERVICE ACCOUNT>"
```
