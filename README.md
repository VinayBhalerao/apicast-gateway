```
oc new-project 3scalegateway

oc new-build https://github.com/VinayBhalerao/apicast-gateway.git --strategy=docker --name=apicast

oc get is/apicast

oc new-app --docker-image=172.30.1.1:5000/3scalegateway/apicast:latest

Update build env variable
THREESCALE_CONFIG_FILE=/opt/app/config.json

oc get pods

oc rsh apicast-<name>
	- You should see the jwt file in `/opt/app-root/src/policies/jwt_claim_upstream`
	- You should see the `config.json` in `/opt/app/`

Update environment variables
THREESCALE_CONFIG_FILE=/opt/app/config.json
APICAST_CONFIGURATION_LOADER=boot -e 
THREESCALE_DEPLOYMENT_ENV=production
APICAST_LOG_LEVEL=debug 
APICAST_SERVICES_LIST=<service_id>
```
