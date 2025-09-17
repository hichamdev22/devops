wsl --list --online
wsl --install -d Debian
sudo apt update && sudo apt upgrade -y
pwd
ls -la
whoami
uname -a
sudo apt install git -y
sudo apt install curl wget -y
sudo apt install docker.io -y 
sudo apt install unzip -y
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
echo "Backup lancé à $(date)" >> backup.log
tar -czf backup.tar.gz /home/hicham/projet
sudo apt install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx
tail -f /var/log/syslog
git config --global user.name "TonNom"
git config --global user.email "ton@email.com"
sudo usermod -aG docker $USER
docker run hello-world
docker ps -a
free -m
pwd
ls -la
cd/wslconfig
cd/.wslconfig
cd..
cd ~
mkdir test
cd test
cd ~
touch addi.txt
nano addi.txt
cat addi.txt
ls -la
mkdir project
cd project
touch notes.txt
cd notes.txt
nano notes.txt
cd project
cat notes.txt
cd ~
cd project
touch notes.txt
nano notes.txt
cd project
cat notes.txt
nano notes.txt
cat notes.txt
cd~
cd ~
whoami
id
sudo adduser dev
su dev
whoami
su -dev
sudo adduser dev
su -dev
su - dev
ls -l notes.txt
cd project
ls -l notes.txt
sudo chown dev:dev notes.txt
ls -l notes.txt
su - dev
cd ~
mkdir projet
cd projet
echo "Ceci est un fichier de test" > note.txt
ls -l note.txt
sudo chown dev:dev note.txt
ls -l note.txt
su - dev
# 1) Créer le dossier et le fichier dans le HOME de dev, en tant que dev
sudo -u dev bash -c '
  mkdir -p ~/projet
  echo "Ceci est un fichier de test" > ~/projet/note.txt
  ls -l ~/projet/note.txt
  echo "---"
  cat ~/projet/note.txt
'
sudo mkdir -p /home/hicham/projet
su - dev
whoami
sudo mkdir -p /home/dev/projet
cat ~/projet/note.txt
'
sudo mkdir -p /home/hicham/projet
echo "Ceci est un fichier de test" | sudo tee /home/hicham/projet/note.txt >/dev/null
sudo chown dev:dev /home/hicham/projet/note.txt

# autoriser la "traversée" du home de hicham pour les autres (sans lister)
sudo chmod o+x /home/hicham

# test en tant que dev
sudo -u dev cat /home/hicham/projet/note.txt

ps aux
vue
sudo snap install vue
vue
top
htop
sudo snap install htop  # version 3.4.1,
htop
kill -9 PID
sudo kill -9 194
ps -p <PID>
ps -p 194
systemctl status ssh
wsl.exe
systemctl status nginx
# 1) Quitter l’écran "END" si tu y es encore : appuie sur q
# 2) Recharger systemd (il t’a demandé de le faire)
sudo systemctl daemon-reload
sudo nginx -t
sleep 1000 &
ps aux | grep "sleep 1000" | grep -v grep
kill -9 <PID>
kill -9 4203
ps -p 4203
pgrep sleep
ping -c 4 google.com
curl ifconfig.me
wget https://google.com
ss -tulnp
curl http://localhost
sudo ss -tulnp | grep ':80'
sudo apt install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx
sudo nano /var/www/html/index.nginx-debian.html
sudo systemctl reload nginx
curl http://localhost
nano backup.sh
chmod +x backup.sh
./backup.sh
cat backup.log
ls -lh backup.tar.gz
sudo nano /etc/nginx/nginx.conf
location ~* \.(jpg|jpeg|png|gif|ico|css|js)$ {
}
sudo nano /etc/nginx/nginx.conf
sudo systemctl reload nginx
sudo systemctl daemon-reload
sudo systemctl start nginx
sudo nginx -t
~$ sudo systemctl daemon-reload
cd ~
sudo systemctl daemon-reload
sudo nginx -t
sudo nano /etc/nginx/nginx.conf
sudo nginx -t
sudo nano /etc/nginx/nginx.conf
sudo nginx -t
sudo nano /etc/nginx/nginx.confsudo nano /etc/nginx/nginx.conf
sudo nano /etc/nginx/nginx.conf
sudo apt install postgresql -y
sudo systemctl start postgresql
sudo -u postgres psql
psql -U testuser -d testdb -h 127.0.0.1
sudo -u postgres psql
# crée l’utilisateur avec droit de connexion + mot de passe
sudo -u postgres psql -c "CREATE ROLE testuser WITH LOGIN PASSWORD 'TonMotDePasseFort';"
sudo -u postgres psql -c "\l"
ALTER DATABASE testdb OWNER TO testuser;
sudo -u postgres createdb -O testuser testdb
sudo -u postgres psql
PGPASSWORD='TonMotDePasseFort!' psql -h 127.0.0.1 -U testuser -d testdb -c "select current_user, current_database();"
sudo systemctl status cron
pwd
ls -la
cd /var/log
addi
sudo adduser ops
sudo usermod -aG sudo ops
sudo su - ops
exit
sudo chown admin:admin fichier.txt
sudo systemctl restart nginx
sudo chown root:root /etc/nginx/sites-available/demo
sudo nginx -t
exit
sudo systemctl status nginx
# Sauvegarde ton fichier actuel
sudo cp -a /etc/nginx/nginx.conf /etc/nginx/nginx.conf.bak.$(date +%F-%H%M)
# Teste la syntaxe (ne redémarre pas si erreur)
sudo nginx -t
sudo nano /etc/nginx/nginx.conf
sudo nginx -t
sudo systemctl reload nginx
sudo nano /etc/nginx/nginx.conf
sudo nginx -t
# Recharger la conf sans couper le trafic
sudo systemctl reload nginx
sudo systemctl start nginx
sudo systemctl reload nginx
systemctl status nginx --no-pager
journalctl -u nginx --since "10 min ago"
tail -f /var/log/nginx/error.log
sudo systemctl stop nginx
sudo systemctl restart nginx
tail -f /var/log/nginx/error.log
ip a
ping -c 3 8.8.8.8
curl -I https://example.com
dig A example.com +short
sudo apt install bind9-dnsutils
dig A example.com +short
ss -tulpn | grep :80
sudo ufw allow 80,443/tcp
sudo ufw enable
sudo ufw allow 80,443/tcp
git config --global user.name "hicham"
git config --global user.email "hicham@test.com"
mkdir devops-30d && cd devops-30d
git init
echo "# DevOps 30 jours" > README.md
git add .
git commit -m "Premier commit"
git checkout -b feature/test
git push -u origin feature/test
#!/bin/bash
tar -czf /home/$USER/backup-$(date +%F).tar.gz /var/www
chmod +x backup.sh
crontab -e
sudo apt update && sudo apt install -y nginx
sudo mkdir -p /var/www/demo
sudo nano /etc/nginx/sites-available/demo
sudo ln -s /etc/nginx/sites-available/demo /etc/nginx/sites-enabled/
sudo apt install -y certbot python3-certbot-nginx
sudo ss -tulpn | grep LISTEN
sudo du -sh /var/log/*
tail -n 50 /var/log/nginx/error.log
tail -f /var/log/nginx/error.log
sudo truncate -s 0 /var/log/syslog
sudo du -sh /var/log/*
ssh -i ~/.ssh/id_rsa ubuntu@<IP_SERVEUR>
sudo apt update -y
sudo apt install docker.io -y
sudo systemctl enable docker
sudo systemctl start docker
docker --version
docker run -d -p 80:80 --name monsite nginx
docker ps
sudo docker ps
groups
docker run hello-world
sudo gpasswd -d hicham docker
groups hicham
docker ps
sudo apt install certbot python3-certbot-nginx
sudo certbot --nginx -d mon-domaine.com
git clone https://github.com/hichamdev22/devops.git
git remote add origin https://github.com/hichamdev22/devops.git
git remote add origin git@github.com:hichamdev22/devops.git
