# Pull from Red Hat
FROM registry.access.redhat.com/3scale-amp23/apicast-gateway

# Copy jwt_claim_upstream source code to the appropriate directory
COPY ./config.json /opt/app/config.json
COPY ./apicast-policy.json /opt/app-root/src/policies/jwt_claim_upstream/1.0.0/apicast-policy.json
COPY ./jwt_claim_upstream.lua /opt/app-root/src/policies/jwt_claim_upstream/1.0.0/jwt_claim_upstream.lua
COPY ./init.lua /opt/app-root/src/policies/jwt_claim_upstream/1.0.0/init.lua
