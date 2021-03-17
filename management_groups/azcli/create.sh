# Assumes you have alread ran az login and also set the subscription context, ex:
# az login
# az account set --subscription xxxxxxxxxxxx

# Management group IDs cannot be changed after creation, they cannot end in a period, and can only contain ASCII letters, numbers, and the following characters: _-().
# You can only delete management groups when all the child management groups and subscriptions have been moved or deleted


az deployment sub create \
  --name demoMGDeployment \
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