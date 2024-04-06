terraform {
  required_providers {
    virtualbox = {
      source = "terra-farm/virtualbox"
      version = "0.2.2-alpha.1"
    }
  }
}

resource "virtualbox_vm" "node" {
  name      = "terraform_virtualbox_example2"
  image     = "https://app.vagrantup.com/almalinux/boxes/9/versions/9.3.20231118/providers/virtualbox/amd64/vagrant.box"
  cpus      = 2
  memory    = "2.0 gib"
  user_data = file("user_data")

  network_adapter {
    type             = "nat"
    # type             = "hostonly"
    # host_interface = "VirtualBox Host-Only Ethernet Adapter"
    # type           = "bridged"
    # host_interface = "Realtek USB GbE Family Controller"
  }
}

output "IPAddr" {
  value = element(virtualbox_vm.node.*.network_adapter.0.ipv4_address, 1)
}

# output "IPAddr_2" {
#   value = element(virtualbox_vm.node.*.network_adapter.0.ipv4_address, 2)
# }