az policy assignment create --policy "871b6d14-10aa-478d-b590-94f262ecfa99" \
                            --scope "/subscriptions/b80fc28a-59e8-463b-87b5-6ab2fb2fbedb" \
                            --name "require_tag_cost_center" \
                            --display-name "Require tag named 'cost_center'" \
                            --params "{ \"tagName\": { \"value\":  \"cost_center\" } }"

az policy assignment create --policy "871b6d14-10aa-478d-b590-94f262ecfa99" \
                            --scope "/subscriptions/b80fc28a-59e8-463b-87b5-6ab2fb2fbedb" \
                            --name "require_tag_app_name" \
                            --display-name "Require tag named 'application_name'" \
                            --params "{ \"tagName\": { \"value\":  \"app_name\" } }"

az policy assignment create --policy "871b6d14-10aa-478d-b590-94f262ecfa99" \
                            --scope "/subscriptions/b80fc28a-59e8-463b-87b5-6ab2fb2fbedb" \
                            --name "require_tag_app_id" \
                            --display-name "Require tag named 'application_id'" \
                            --params "{ \"tagName\": { \"value\":  \"app_id\" } }"
