az account management-group create --name "company_root" \
                                   --display-name "Company Root" 

az account management-group create --name "sandbox" \
                                   --display-name "Sandbox" \
                                   --parent "company_root"

az account management-group create --name "dev" \
                                   --display-name "Development" \
                                   --parent "company_root"

az account management-group create --name "qa" \
                                   --display-name "Quality Assurance" \
                                   --parent "company_root"

az account management-group create --name "prod" \
                                   --display-name "Production" \
                                   --parent "company_root"