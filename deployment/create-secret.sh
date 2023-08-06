# Command to run when creating the secret for the DB_PASSWORD variable.
# Replace "mysecretpassword" by the desired password

# To export the secret to a variable you can run:
# export POSTGRES_PASSWORD=$(kubectl get secret --namespace default postgresql -o jsonpath="{.data.postgres-password}" | base64 -d)

# Retrieve the secret by runnung:
# echo $POSTGRES_PASSWORD

kubectl create secret generic udacity --from-literal=DB_PASSWORD=mysecretpassword
