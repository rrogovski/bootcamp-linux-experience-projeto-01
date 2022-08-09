#!/bin/bash
echo 'Script IaC | Executando...'
## remove os diretórios de forma recursiva, caso existam
rm -rf /publico
rm -rf /adm
rm -rf /ven
rm -rf /sec

## remove os usuário e seus diretório padrão (home), caso existam
userdel -r carlos
userdel -r maria
userdel -r joao
userdel -r debora
userdel -r sebastiana
userdel -r roberto
userdel -r josefina
userdel -r amanda
userdel -r rogerio

## remove os grupos, caso existam
groupdel grp-adm
groupdel grp-ven
groupdel grp-sec

## criando os diretórios
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

## criando os grupos de usuários
groupadd grp-adm
groupadd grp-ven
groupadd grp-sec

## criando os usuários e forçar para que cada usuário tenha que trocar sua senha ao fazer o primeiro login e vinculando com o grupo
useradd carlos -c 'Carlos' -m -s /bin/bash -p $(openssl passwd -crypt mudar123) -G grp-adm
passwd -e carlos

useradd maria -c 'Maria' -m -s /bin/bash -p $(openssl passwd -crypt mudar123) -G grp-adm
passwd -e maria

useradd joao -c 'João' -m -s /bin/bash -p $(openssl passwd -crypt mudar123) -G grp-adm
passwd -e joao

useradd debora -c 'Debora' -m -s /bin/bash -p $(openssl passwd -crypt mudar123) -G grp-ven
passwd -e debora

useradd sebastiana -c 'Sebastiana' -m -s /bin/bash -p $(openssl passwd -crypt mudar123) -G grp-ven
passwd -e sebastiana

useradd roberto -c 'Roberto' -m -s /bin/bash -p $(openssl passwd -crypt mudar123) -G grp-ven
passwd -e roberto

useradd josefina -c'Josefina' -m -s /bin/bash -p $(openssl passwd -crypt mudar123) -G grp-sec
passwd -e josefina

useradd amanda -c 'Amanda' -m -s /bin/bash -p $(openssl passwd -crypt mudar123) -G grp-sec
passwd -e amanda

useradd rogerio -c 'Rogerio' -m -s /bin/bash -p $(openssl passwd -crypt mudar123) -G grp-sec
passwd -e rogerio

## Permissões dos diretórios, informando o dono e grupo
chown root:grp-adm /adm
chown root:grp-ven /ven
chown root:grp-sec /sec

## Definido a permissão do dono, grupo e os outros
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim!"
