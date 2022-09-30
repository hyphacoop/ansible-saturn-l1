# Saturn L1

Ansible playbook Hypha uses to deploy the Saturn L1 node for sunrise
Most of this repo uses our [ansible-common](github.com/hyphacoop/ansible-common) set of roles to configure a standard server.

**NOTE** This repo is not yet well documented and a WIP, use at your own risk.

# Roles deployed
**hypha.common.provision_ssh_keys**  
Provision SSH Keys defined in `ssh_user_keys` variable to sysadmin.

hypha.common.harden_ssh**  
Update ssh for things like no remote password access (keys only)

**hypha.common.setup**  
General server setups task like set passwords

**hypha.common.unattended_upgrades**  
Enabled unattended upgrades

**geerlingguy.docker**  
Install DOCKER

**hypha.common.firewall**  
Deploy firewall defined by firewall_ports and firewall_docker_ports**  

**saturn_l1**  
Install saturn scripts, cronjobs and config files. Start Service. Also deploys LOKI driver for docker

**hypha.common.node_exporter**  
Install node exporter for Prometheus monitoring

**hypha.common.prometheus_exporter_addnode**  
Add config to prometheus monitoring server

**hypha.common.prometheus_exporter_docker**  
Install cAdvisor and enable exporter for Prometheus monitoring

**hypha.common.promtail**  
Install promtail to pass syslogs to Loki

# Variables

## L1 specific
`SATURN_FILECOIN_ADDRESS`: fil address wallet  
`SATURN_EMAIL`: Email address to associate with docker container  
`SATURN_NETWORK`: "main" or "test"  


## Used by `hypha.common.setup`
`secret_root_password`: Root password to use.

