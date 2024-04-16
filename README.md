# cloud-1

This repo also includes a Vagrantfile for a Ansible workstation `cloud-1-workstation` having Ansible pre-installed and a vanilla Debian 12 server for local "development" (preventing the need to rent a cloud server). The workstation has it's hosts file pre-configured to
access the local vm server with the `cloud-1` hostname.

Inventory is appropriately set, for both cloud and local vm deployement. Uncomment the server you want to use, and fill-in missing / irrelevant parameters for the cloud host.

## References

### Ansible
https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html

https://docs.ansible.com/ansible/latest/inventory_guide/index.html#

https://docs.ansible.com/ansible/latest/

### Installing Docker with Ansible
https://docs.docker.com/engine/install/debian/

https://medium.com/@josiah.alen.brown/automating-the-installation-of-docker-on-debian-with-ansible-9d4cb478fc7a

### Using Docker with Ansible
https://docs.ansible.com/ansible/latest/collections/community/docker/docker_container_module.html

https://docs.ansible.com/ansible/latest/collections/community/docker/docker_network_module.html

https://docs.ansible.com/ansible/latest/collections/community/docker/docker_volume_module.html

https://docs.ansible.com/ansible/latest/collections/community/docker/docker_image_module.html

### Why you should not use docker compose
https://www.reddit.com/r/ansible/comments/12ua0tm/docker_compose_up/

https://www.redhat.com/en/blog/how-i-switched-from-docker-compose-to-pure-ansible

https://docs.ansible.com/ansible/latest/collections/community/docker/docker_compose_module.html

https://dev.to/kuwv/why-i-use-ansible-over-docker-compose-edg
