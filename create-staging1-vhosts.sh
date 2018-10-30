#setup ssh
mkdir -p /home/jschott/.ssh
chmod 700 /home/jschott/.ssh
touch /home/jschott/.ssh/authorized_keys
touch /home/jschott/.ssh/authorized_keys
chmod 600 /home/jschott/.ssh/authorized_keys
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDCjD7cNLtoGhGVqzGGWEkclGS2aFn26PU7mp8GNpUb9thEpGLiNIThjON/vb3pWqziuxOkOtj1K+gxYD289YpjsBnu3GonPzv1wkPBgg4B7gclB+JD25jg/UU8sr+jV2h+jf2iJv2WobW+AMXFxnuC+fn+Fx+Qjf8gARFvRaJLe2UMYYRNRvP9sPDfEhus3vqfgjgLCXbYskJE5kIt8d+Ah+SSLWifI8l7z71obk6wpuW/fDFuMggK53NFQJaNr0wpgWbfVR1X2wc+gAXospc24q1V05EtktZ7Ilc+xVIUPFPx6t8bnrs2YCNFPbQv21PaglhGcbb/Hi3joQA/ZS+X jschott@jschott-mbp.local" >> /home/jschott/.ssh/authorized_keys
mkdir -p /var/www/d/sites
cd  /var/www/d/
#link rpos
#ln -s repos sites
mkdir bin
#download scripts
#install git
# apt-get install git

#install vhost creation utility
# git clone https://github.com/RoverWire/virtualhost.git


cd /usr/local/bin
wget -O virtualhost https://raw.githubusercontent.com/RoverWire/virtualhost/master/virtualhost.sh
chmod +x virtualhost
wget -O virtualhost-nginx https://raw.githubusercontent.com/RoverWire/virtualhost/master/virtualhost-nginx.sh
chmod +x virtualhost-nginx



cd bin
wget https://s3-us-west-1.amazonaws.com/winsoft/scripts/create-staging1-vhosts.sh





virtualhost create esstaging2.ticketmob.com /var/www/d/sites/brandpropertysites
virtualhost create lsstaging2.ticketmob.com /var/www/d/sites/brandpropertysites
virtualhost create tmstaging2.ticketmob.com /var/www/d/sites/ticketmob
virtualhost create tsstaging2.ticketmob.com /var/www/d/sites/brandpropertysites
virtualhost create ssstaging2.ticketmob.com /var/www/d/sites/selfserve
virtualhost create staging2-admin.ticketmob.com /var/www/d/sites/ticketmob_admin
virtualhost create staging2-embed.ticketmob.com /var/www/d/sites/laughstub.com
virtualhost create bostaging2.ticketmob.com /var/www/d/sticketmobboxoffice.com
virtualhost create staging2-secure.ticketmob.com /var/www/d/sites/templatesites/responsive
virtualhost create staging2-torchly.ticketmob.com /var/www/d/sites/torchly
virtualhost create staging2-venueadmin.crowdtorch.com /var/www/d/sites/ticketmob


ticketmobadmindev.tickemtob.test (successful login to CT admin)
betanightclub.ticketmob.test (add tickets and get to checkout page)
