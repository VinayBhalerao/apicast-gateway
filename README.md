```
oc new-project 3scalegateway

oc new-build https://github.com/VinayBhalerao/apicast-gateway.git --strategy=docker --name=apicast --env THREESCALE_CONFIG_FILE=/opt/app/config.json

oc get is/apicast #Get image name

oc new-app --docker-image=172.30.1.1:5000/3scalegateway/apicast:latest -e THREESCALE_CONFIG_FILE=/opt/app/config.json -e APICAST_CONFIGURATION_LOADER=boot -e THREESCALE_DEPLOYMENT_ENV=production -e APICAST_SERVICES_LIST=<service_id>

oc get pods

oc rsh apicast-<name>
	- You should see the jwt file in `/opt/app-root/src/policies/jwt_claim_upstream`
	- You should see the `config.json` in `/opt/app/`


```
