# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.ssh.forward_agent = true
  config.ssh.forward_x11   = true
 # Configure the main server/master node
  config.vm.define "master" do |master|

    master.vm.provider 'virtualbox' do |v|
      v.gui = true
      v.memory = 1024
      v.cpus = 1
    end

    # Step 3a configure os
    master.vm.box = "centos/7"

    # Step 4a Define host name
    master.vm.hostname = "JH-Kubernetes-master"
    # Step 5a configure network
    master.vm.network "private_network", ip: "192.168.1.10"
    # Step 6a allow host to be able to access guest notebook on port 8001
    # master.vm.network "forwarded_port", guest: 8000, host: 8001
    # # Step 7a allow host to access kubernetes dashboard on port 8080
    # master.vm.network "forwarded_port", guest: 8080, host: 8080
    # Step 8a to get rid of rsync error
    master.vm.synced_folder ".", "/vagrant", id: "applicaiton", :nfs => true
    # Step 9a ensure ansible is installed on the guest
    master.vm.provision "shell", inline: "yum -y install epel-release && yum repolist && yum -y install ansible xorg-x11-xauth"
    # Step 10a provision
    master.vm.provision "guest_ansible" do |guest_ansible|
      guest_ansible.playbook = "Ansible_VOTCA-dev/site.yml"
      guest_ansible.sudo = true
    end
  end
end
