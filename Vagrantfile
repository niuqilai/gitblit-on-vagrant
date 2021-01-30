Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.box_check_update = false
  config.vm.provider "virtualbox"

  $num_vms = 1
  (1..$num_vms).each do |id|
    config.vm.define "levin-gitblit-box#{id}" do |node|
      node.vm.hostname = "levin-gitblit-box#{id}"
      config.vm.network "forwarded_port", guest: 33060, host: 33060, auto_correct: true # port for mysql8
      config.vm.network "forwarded_port", guest: 8080, host: 8080, auto_correct: true # service port
      node.vm.provider :virtualbox do |vb, override|
        vb.name = "levin-gitblit-box#{id}"
        vb.gui = false
        vb.memory = 2048
        vb.cpus = 1
      end
      node.vm.provision "file", source: "resources", destination: "resources"
      config.vm.provision "shell", path: "provision.sh"

    end
  end
end
