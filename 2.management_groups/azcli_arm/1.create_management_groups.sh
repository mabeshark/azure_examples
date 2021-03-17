# Assumes you have already ran az login and also set the subscription context, ex:
# az login
# az account set --subscription xxxxxxxxxxxx

az deployment sub create \
  --name root-mg-deployment \
  --location EastUS \
  --template-file ./templates/root_mgmt_group.json

az deployment sub create \
  --name sandbox-mg-deployment \
  --location EastUS \
  --no-wait \
  --template-file ./templates/child_mgmt_group.json \
  --parameters '{"mgName": {"value": "sandbox"}, "parentMG": {"value": "company-root"}}'
  
az deployment sub create \
  --name dev-mg-deployment \
  --location EastUS \
  --no-wait \
  --template-file ./templates/child_mgmt_group.json \
  --parameters '{"mgName": {"value": "dev"}, "parentMG": {"value": "company-root"}}'

az deployment sub create \
  --name qa-mg-deployment \
  --location EastUS \
  --no-wait \
  --template-file ./templates/child_mgmt_group.json \
  --parameters '{"mgName": {"value": "qa"}, "parentMG": {"value": "company-root"}}'

az deployment sub create \
  --name prod-mg-deployment \
  --location EastUS \
  --no-wait \
  --template-file ./templates/child_mgmt_group.json \
  --parameters '{"mgName": {"value": "prod"}, "parentMG": {"value": "company-root"}}'