# study4


```
terraform init
terraform plan
terraform apply
```

```
> terraform apply

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # virtualbox_vm.node will be created
  + resource "virtualbox_vm" "node" {
      + cpus   = 2
      + id     = (known after apply)
      + image  = "https://app.vagrantup.com/almalinux/boxes/9/versions/9.3.20231118/providers/virtualbox/amd64/vagrant.box"
      + memory = "2.0 gib"
      + name   = "terraform_virtualbox_example2"
      + status = "running"

      + network_adapter {
          + device                 = "IntelPro1000MTServer"
          + host_interface         = "Realtek USB GbE Family Controller"
          + ipv4_address           = (known after apply)
          + ipv4_address_available = (known after apply)
          + mac_address            = (known after apply)
          + status                 = (known after apply)
          + type                   = "bridged"
        }
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + IPAddr = (known after apply)

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

virtualbox_vm.node: Creating...
virtualbox_vm.node: Still creating... [10s elapsed]
virtualbox_vm.node: Still creating... [20s elapsed]
virtualbox_vm.node: Still creating... [30s elapsed]
virtualbox_vm.node: Still creating... [40s elapsed]
virtualbox_vm.node: Still creating... [50s elapsed]
virtualbox_vm.node: Still creating... [1m0s elapsed]
virtualbox_vm.node: Still creating... [1m10s elapsed]
virtualbox_vm.node: Creation complete after 1m14s [id=288fbea4-1439-47f7-912e-1c3d54ce17b0]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.

Outputs:

IPAddr = "192.168.1.6"
```


```
> ssh vagrant@192.168.1.6   
The authenticity of host '192.168.1.6 (192.168.1.6)' can't be established.
ECDSA key fingerprint is SHA256:tjHKRwJStBSEmii/IpMxR1H43jSQoZfQslRcXWf9ZMI.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added '192.168.1.6' (ECDSA) to the list of known hosts.
vagrant@192.168.1.6's password: 
[vagrant@localhost ~]$ 
```

```
sudo dnf config-manager --add-repo=https://download.docker.com/linux/centos/docker-ce.repo
sudo dnf -y install docker-ce
sudo usermod -aG docker vagrant
sudo systemctl enable --now docker
```

sudo dnf config-manager --add-repo=https://download.docker.com/linux/centos/docker-ce.repo

192.168.1.6