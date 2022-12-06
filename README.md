#TEST DU README
Ce référer à https://helm.erpnext.com/

Base de données :
	Pour mettre une base de donnée externe (avec infos dans le values.yaml incluant jobs.createSite.adminPassword (tres important) ), il faut suivre ce tutoriel :
	https://github.com/frappe/frappe/wiki/Setup-MariaDB-Server
	Et s'assurer d'utiliser la version 10.3 de mariadb (du moins pour Erpnext version 14.10.0 de Erpnext)

Le déploiement :
	Git pull le git suivant ( pour le helm chart ) :
		https://github.com/kslacroix/erpnext
	Helm chart avec valeurs personnalisées

Stockage :
	Le systeme de nfs du tutoriel suivant a été utilisé :
		https://helm.erpnext.com/
	Ce n'est pas un système optimal si on veut un provisioner custom mais il faut tester plus pour un custom car ce n'est pas encore faisable à ce que je sache.

À changer dans values.yaml :
	siteName (le host, aussi à changer dans ingress-erpnext.yaml...)
	storageClass (selon provisioner custom)
	jobs.createSite.adminPassword (mettre ce qu'on veut, préférablement quelque chose de sécuritaire)

À se rappeler :
	Pour le stockage sur vultr, le container automatique de mariadb pour le déploiement (désactivé par défaut) ne fonctionne pas dans certains cas à cause qu'il demande 8Gi, mais Vultr veut 10Gi minimum...
