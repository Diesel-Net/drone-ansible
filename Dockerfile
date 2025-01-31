FROM plugins/base:linux-amd64

LABEL maintainer="Drone.IO Community <drone-dev@googlegroups.com>" \
  org.label-schema.name="Drone Ansible" \
  org.label-schema.vendor="Drone.IO Community" \
  org.label-schema.schema-version="1.0"

RUN apk add --no-cache bash git curl rsync openssh-client sshpass py3-pip py3-requests py3-paramiko python3-dev libffi-dev libressl-dev libressl build-base && \
  pip3 install -U pip && \
  pip3 install ansible==7.2.0 boto3==1.13.10 && \
  apk del --no-cache python3-dev libffi-dev libressl-dev build-base

ADD release/linux/amd64/drone-ansible /bin/
ENTRYPOINT ["/bin/drone-ansible"]
