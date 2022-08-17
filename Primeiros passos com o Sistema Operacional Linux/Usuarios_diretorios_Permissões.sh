#!/bin/bash

echo "diretórios"

mkdir /pub
mkdir /adm
mkdir /ven
mkdir /sec

echo "grupo de usuários"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Usuários"

useradd carlos -c "Carlos" -m -s /bin/bash -p adm root -G GRP_ADM
useradd rodrigo -c "Rodrigo" -m -s /bin/bash -p adm -G GRP_VEN
useradd lucas -c "Lucas" -m -s /bin/bash -p adm -G GRP_SEC

echo "permissões"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec 
chmod 770 /pub
