#!/bin/bash

clear

echo "Criando diretórios..."
cd /
mkdir publico adm ven sec
echo ""
echo "Criando grupos de usuários..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo ""
echo "Criando usuário e adicionando aos respectivos grupos de ususários..."
useradd carlos -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_SEC
echo ""
echo "Definindo permissões dos diretórios..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico
echo ""
echo "Scritp chegou ao fim!"
