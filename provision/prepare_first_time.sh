# adds first time script to bashrc
echo 'export rvm_trust_rvmrcs_flag=1 && cd /vagrant && bundle install && ruby provision/first_time.rb && cd ~ && ls' >> /home/vagrant/.bashrc
echo 'export LC_CTYPE=en_US.UTF-8' >> /home/vagrant/.bashrc
echo 'export LC_ALL=en_US.UTF-8' >> /home/vagrant/.bashrc