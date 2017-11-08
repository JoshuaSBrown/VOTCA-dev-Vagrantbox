#-*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.ssh.forward_agent = true
  config.ssh.forward_x11   = true


  # Configure the main server/master node
  config.vm.define "master" do |master|

    master.vm.provider 'virtualbox' do |v|
      v.gui = true
      v.memory = 4096
      v.cpus = 2
    end

    # Step 1 configure os
    #master.vm.box = "centos/7"
    master.vm.box = "nhalm/centos7-gui"

    # Step 2 Define host name
    master.vm.hostname = "votca-devel-env"
    # Step 3 configure network
    master.vm.network "private_network", ip: "192.168.1.10"
    # Step 4 to get rid of rsync error
    master.vm.synced_folder ".", "/vagrant", id: "applicaiton", :nfs => true
    # Step 5 ensure ansible is installed on the guest
    master.vm.provision "shell", inline: "yum -y install epel-release && yum repolist && yum -y install ansible xorg-x11-xauth"
    # Step 6 provision
    master.vm.provision "guest_ansible" do |guest_ansible|
      guest_ansible.playbook = "Ansible_VOTCA-dev/site.yml"
      guest_ansible.sudo = true
    end
  end
end
