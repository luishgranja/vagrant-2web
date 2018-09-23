
# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define "w1" do |w1|
#Se define el box a usar
      w1.vm.box = "ubuntu/trusty64"
# Se asignan lo puertos
      w1.vm.network "forwarded_port", guest: 80, host: 8080
# Exportamos los directorios
      w1.vm.synced_folder "./www_1/", "/var/www/html/"
# Se ejecuta el script de aprovisionamiento
      w1.vm.provision "shell", path: "script.sh"
  end

  config.vm.define "w2" do |w2|
#Se define el box a usar
      w2.vm.box = "ubuntu/trusty64"
# Se asignan lo puertos
      w2.vm.network "forwarded_port", guest: 80, host: 8008
# Exportamos los directorios
      w2.vm.synced_folder "./www_2/", "/var/www/html/"
# Se ejecuta el script de aprovisionamiento
      w2.vm.provision "shell", path: "script.sh"
  end
end
