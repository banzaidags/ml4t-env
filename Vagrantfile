#VAGRANT_EXPERIMENTAL="cloud_init"

Vagrant.configure("2") do |config|

  config.vm.define "ml4t" do |ml4t|
    ml4t.vm.hostname = "ml4t"
    #ml4t.vm.box = "ubuntu/trusty64"
    ml4t.vm.box = "ubuntu/bionic64"
    ml4t.vm.provision "file", source: "env.yml", destination: "/tmp/env.yml"
    ml4t.vm.provision "shell", inline: "mv /tmp/env.yml /root/env.yml"
    ml4t.vm.provision "shell", path: "provision.sh"
    ml4t.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
      vb.cpus = 2
    end
  end
end