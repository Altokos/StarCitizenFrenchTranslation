#Ajout du BOM sur le fichier global.ini
#Se rendre à l'emplacement du fichier global.ini
#Création du nouveau fichier UTF8 BOM et copie des données à l'intérieur
printf '\xEF\xBB\xBF' | cat - global.ini > global-with-bom.ini
#Suppression de l'ancien fichier et renommage du nouveau
rm global.ini && mv global-with-bom.ini global.ini
